@interface FigNeroPlayServerDeviceUIDChanged
@end

@implementation FigNeroPlayServerDeviceUIDChanged

void ___FigNeroPlayServerDeviceUIDChanged_block_invoke(uint64_t a1)
{
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(*(*(a1 + 32) + 48), 0x3586u, 0, 0, &outData, &ioDataSize);
  if (Property != 1063544182 && Property != 0)
  {
    if (Property != -10879)
    {
      goto LABEL_8;
    }

    outData = CFStringCreateCopy(*MEMORY[0x1E695E480], @"Unknown HDMI Audio Device UID");
  }

  _FigNeroPlayServerSetDeviceUID(*(a1 + 32), outData);
LABEL_8:
  if (outData)
  {
    CFRelease(outData);
  }
}

@end