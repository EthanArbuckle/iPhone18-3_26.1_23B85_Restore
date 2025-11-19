@interface StackshotTaken
@end

@implementation StackshotTaken

void ___StackshotTaken_block_invoke()
{
  v0 = objc_allocWithZone(MEMORY[0x29EDB8E70]);
  v1 = MEMORY[0x29EDBA0F8];
  v2 = [MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/CoreServices/VoiceOverTouch.app"];
  v3 = [v2 resourcePath];
  v4 = [v1 stringWithFormat:@"%@/%@", v3, @"Sounds/StackShot.aiff"];
  inFileURL = [v0 initFileURLWithPath:v4 isDirectory:0];

  AudioServicesCreateSystemSoundID(inFileURL, &_StackshotTaken_SoundID);
}

@end