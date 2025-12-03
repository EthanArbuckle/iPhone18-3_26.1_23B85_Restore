@interface NTKExtragalacticFontLoader
+ (id)extragalacticFontDescriptor;
+ (id)extragalacticFontForDevice:(id)device;
@end

@implementation NTKExtragalacticFontLoader

+ (id)extragalacticFontForDevice:(id)device
{
  deviceCopy = device;
  extragalacticFontDescriptor = [self extragalacticFontDescriptor];
  v6 = MEMORY[0x277CBBB08];
  v7 = sub_23BE50288(extragalacticFontDescriptor, deviceCopy);

  v8 = [v6 fontWithDescriptor:extragalacticFontDescriptor size:v7 * 0.5];

  return v8;
}

+ (id)extragalacticFontDescriptor
{
  if (qword_27E1DC238 != -1)
  {
    sub_23BE552B8();
  }

  v3 = qword_27E1DC240;

  return v3;
}

@end