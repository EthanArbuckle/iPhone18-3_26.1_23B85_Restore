@interface VCAudioPowerLevelMonitor
- (VCAudioPowerLevelMonitor)init;
- (void)detectRemoteAveragePowerLevel:(float)a3 timestamp:(unsigned int)a4;
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
    v3 = [+[VCDefaults sharedInstance](VCDefaults forceAudioPowerTimeInterval];
    v2->audioLowPowerTimeInterval = 24000 * v3;
    if (v3 >= 1)
    {
      v4 = 50 * v3;
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

- (void)detectRemoteAveragePowerLevel:(float)a3 timestamp:(unsigned int)a4
{
  audioLowPowerTimeInterval = self->audioLowPowerTimeInterval;
  if (audioLowPowerTimeInterval)
  {
    if (self->isAudioPowerMovingAverage)
    {
      a3 = ((1.0 - self->audioPowerMovingAverageCoefficient) * self->currentAudioAverage) + (self->audioPowerMovingAverageCoefficient * fmaxf(a3, -120.0));
    }

    self->currentAudioAverage = a3;
    if (a3 <= self->audioPowerThreshold)
    {
      if (a4 - self->startDetectRemoteAudioLowPowerTime > audioLowPowerTimeInterval)
      {
        self->startDetectRemoteAudioLowPowerTime = a4;
        [(VCAudioPowerLevelMonitorDelegate *)[(VCAudioPowerLevelMonitor *)self delegate] vcAudioPowerLevelMonitor:self isAudioBelowThreshold:1];
        self->isAudioPowerBelowThreshold = 1;
      }
    }

    else
    {
      self->startDetectRemoteAudioLowPowerTime = a4;
      if (self->isAudioPowerBelowThreshold)
      {
        self->isAudioPowerBelowThreshold = 0;
        v6 = [(VCAudioPowerLevelMonitor *)self delegate];

        [(VCAudioPowerLevelMonitorDelegate *)v6 vcAudioPowerLevelMonitor:self isAudioBelowThreshold:0];
      }
    }
  }
}

@end