@interface DAAudioUnitHelper
+ (AudioComponentDescription)getBandPassDescription;
+ (AudioComponentDescription)getGeneratorDescription;
+ (AudioComponentDescription)getMixerDescription;
+ (AudioComponentDescription)getRemoteIODescription;
+ (AudioStreamBasicDescription)getBasicStreamDescription;
@end

@implementation DAAudioUnitHelper

+ (AudioComponentDescription)getRemoteIODescription
{
  *&retstr->componentType = xmmword_10000B7C0;
  retstr->componentFlagsMask = 0;
  return result;
}

+ (AudioComponentDescription)getGeneratorDescription
{
  *&retstr->componentType = xmmword_10000B7D0;
  retstr->componentFlagsMask = 0;
  return result;
}

+ (AudioComponentDescription)getBandPassDescription
{
  *&retstr->componentType = xmmword_10000B7E0;
  retstr->componentFlagsMask = 0;
  return result;
}

+ (AudioComponentDescription)getMixerDescription
{
  *&retstr->componentType = xmmword_10000B7F0;
  retstr->componentFlagsMask = 0;
  return result;
}

+ (AudioStreamBasicDescription)getBasicStreamDescription
{
  *&retstr->mBitsPerChannel = 0;
  retstr->mSampleRate = 44100.0;
  *&retstr->mFormatID = xmmword_10000B800;
  *&retstr->mBytesPerFrame = 0x100000004;
  retstr->mBitsPerChannel = 32;
  return result;
}

@end