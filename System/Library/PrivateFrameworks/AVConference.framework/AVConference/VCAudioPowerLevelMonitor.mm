@interface VCAudioPowerLevelMonitor
- (VCAudioPowerLevelMonitor)init;
- (void)detectRemoteAveragePowerLevel:(float)level timestamp:(unsigned int)timestamp;
@end

@implementation VCAudioPowerLevelMonitor

- (VCAudioPowerLevelMonitor)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCAudioPowerLevelMonitor;
  v2 = [(VCAudioPowerLevelMonitor *)&v7 init];
  if (v2)
  {
    forceAudioPowerTimeInterval = [+[VCDefaults sharedInstance](VCDefaults forceAudioPowerTimeInterval];
    v2->audioLowPowerTimeInterval = 24000 * forceAudioPowerTimeInterval;
    if (forceAudioPowerTimeInterval >= 1)
    {
      v4 = 50 * forceAudioPowerTimeInterval;
      [+[VCDefaults sharedInstance](VCDefaults forceAudioPowerThreshold];
      v2->audioPowerThreshold = v5;
      v2->currentAudioAverage = -120.0;
      v2->isAudioPowerMovingAverage = v5 > -120.0;
      v2->audioPowerMovingAverageCoefficient = 1.0 / v4;
      v2->isAudioPowerBelowThreshold = 0;
    }
  }

  return v2;
}

- (void)detectRemoteAveragePowerLevel:(float)level timestamp:(unsigned int)timestamp
{
  audioLowPowerTimeInterval = self->audioLowPowerTimeInterval;
  if (audioLowPowerTimeInterval)
  {
    if (self->isAudioPowerMovingAverage)
    {
      level = ((1.0 - self->audioPowerMovingAverageCoefficient) * self->currentAudioAverage) + (self->audioPowerMovingAverageCoefficient * fmaxf(level, -120.0));
    }

    self->currentAudioAverage = level;
    if (level <= self->audioPowerThreshold)
    {
      if (timestamp - self->startDetectRemoteAudioLowPowerTime > audioLowPowerTimeInterval)
      {
        self->startDetectRemoteAudioLowPowerTime = timestamp;
        [(VCAudioPowerLevelMonitorDelegate *)[(VCAudioPowerLevelMonitor *)self delegate] vcAudioPowerLevelMonitor:self isAudioBelowThreshold:1];
        self->isAudioPowerBelowThreshold = 1;
      }
    }

    else
    {
      self->startDetectRemoteAudioLowPowerTime = timestamp;
      if (self->isAudioPowerBelowThreshold)
      {
        self->isAudioPowerBelowThreshold = 0;
        delegate = [(VCAudioPowerLevelMonitor *)self delegate];

        [(VCAudioPowerLevelMonitorDelegate *)delegate vcAudioPowerLevelMonitor:self isAudioBelowThreshold:0];
      }
    }
  }
}

@end