@interface AUAudioTapIOUnit
- (ATAudioTap)audioTap;
- (void)setAudioTap:(id)a3;
@end

@implementation AUAudioTapIOUnit

- (ATAudioTap)audioTap
{
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty([(AUAudioUnitV2Bridge *)self audioUnit], 0x8AEu, 0, 0, &outData, &ioDataSize);
  if (outData)
  {
    v3 = Property == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = outData;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAudioTap:(id)a3
{
  inData = a3;
  AudioUnitSetProperty([(AUAudioUnitV2Bridge *)self audioUnit], 0x8AEu, 0, 0, inData, 8 * (inData != 0));
}

@end