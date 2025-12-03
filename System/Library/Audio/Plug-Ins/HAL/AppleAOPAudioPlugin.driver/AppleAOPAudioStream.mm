@interface AppleAOPAudioStream
- (BOOL)changePhysicalFormat:(id)format;
- (basic_string<char,)dumpToString;
- (double)getSampleRateHz;
- (unsigned)getBytesPerFrame;
- (unsigned)getBytesPerPacket;
- (unsigned)getBytesPerSample;
- (unsigned)getChannelsPerFrame;
- (unsigned)getFramesPerPacket;
- (void)notifyStreamPropertiesChanged;
- (void)setBytesPerSample:(unsigned int)sample;
- (void)setSampleRateHz:(double)hz;
- (void)startStream;
- (void)stopStream;
@end

@implementation AppleAOPAudioStream

- (void)startStream
{
  v2.receiver = self;
  v2.super_class = AppleAOPAudioStream;
  [(AppleAOPAudioStream *)&v2 startStream];
}

- (unsigned)getBytesPerPacket
{
  physicalFormat = [(AppleAOPAudioStream *)self physicalFormat];
  bytesPerPacket = [physicalFormat bytesPerPacket];

  return bytesPerPacket;
}

- (void)stopStream
{
  v2.receiver = self;
  v2.super_class = AppleAOPAudioStream;
  [(AppleAOPAudioStream *)&v2 stopStream];
}

- (unsigned)getChannelsPerFrame
{
  physicalFormat = [(AppleAOPAudioStream *)self physicalFormat];
  channelsPerFrame = [physicalFormat channelsPerFrame];

  return channelsPerFrame;
}

- (unsigned)getBytesPerFrame
{
  physicalFormat = [(AppleAOPAudioStream *)self physicalFormat];
  bytesPerFrame = [physicalFormat bytesPerFrame];

  return bytesPerFrame;
}

- (unsigned)getFramesPerPacket
{
  physicalFormat = [(AppleAOPAudioStream *)self physicalFormat];
  framesPerPacket = [physicalFormat framesPerPacket];

  return framesPerPacket;
}

- (unsigned)getBytesPerSample
{
  physicalFormat = [(AppleAOPAudioStream *)self physicalFormat];
  if (([physicalFormat formatFlags] & 8) != 0)
  {

    goto LABEL_5;
  }

  physicalFormat2 = [(AppleAOPAudioStream *)self physicalFormat];
  bitsPerChannel = [physicalFormat2 bitsPerChannel];

  if (bitsPerChannel <= 0x17)
  {
LABEL_5:
    physicalFormat3 = [(AppleAOPAudioStream *)self physicalFormat];
    v6 = [physicalFormat3 bitsPerChannel] >> 3;

    return v6;
  }

  return 4;
}

- (double)getSampleRateHz
{
  physicalFormat = [(AppleAOPAudioStream *)self physicalFormat];
  [physicalFormat sampleRate];
  v4 = v3;

  return v4;
}

- (void)notifyStreamPropertiesChanged
{
  physicalFormat = [(AppleAOPAudioStream *)self physicalFormat];
  v3 = +[NSMutableArray array];
  physicalFormat2 = [(AppleAOPAudioStream *)self physicalFormat];
  [physicalFormat setBytesPerFrame:{objc_msgSend(physicalFormat2, "bytesPerFrame")}];

  physicalFormat3 = [(AppleAOPAudioStream *)self physicalFormat];
  [physicalFormat setBytesPerPacket:{objc_msgSend(physicalFormat3, "bytesPerPacket")}];

  [v3 addObject:physicalFormat];
  v6 = [v3 objectAtIndexedSubscript:0];
  [(AppleAOPAudioStream *)self setPhysicalFormat:v6];

  [(AppleAOPAudioStream *)self setPhysicalFormats:v3];
  bytesPerFrame = [physicalFormat bytesPerFrame];
  physicalFormat4 = [(AppleAOPAudioStream *)self physicalFormat];
  [physicalFormat4 setBytesPerFrame:bytesPerFrame];

  bytesPerPacket = [physicalFormat bytesPerPacket];
  physicalFormat5 = [(AppleAOPAudioStream *)self physicalFormat];
  [physicalFormat5 setBytesPerPacket:bytesPerPacket];
}

- (BOOL)changePhysicalFormat:(id)format
{
  formatCopy = format;
  [(AppleAOPAudioStream *)self setPhysicalFormat:formatCopy];
  bytesPerFrame = [formatCopy bytesPerFrame];
  physicalFormat = [(AppleAOPAudioStream *)self physicalFormat];
  [physicalFormat setBytesPerFrame:bytesPerFrame];

  bytesPerPacket = [formatCopy bytesPerPacket];
  physicalFormat2 = [(AppleAOPAudioStream *)self physicalFormat];
  [physicalFormat2 setBytesPerPacket:bytesPerPacket];

  return 1;
}

- (void)setSampleRateHz:(double)hz
{
  physicalFormat = [(AppleAOPAudioStream *)self physicalFormat];
  [physicalFormat setSampleRate:hz];
}

- (void)setBytesPerSample:(unsigned int)sample
{
  if (sample == 4)
  {
    physicalFormat = [(AppleAOPAudioStream *)self physicalFormat];
    [physicalFormat setFormatFlags:20];

    physicalFormat2 = [(AppleAOPAudioStream *)self physicalFormat];
    [physicalFormat2 setBitsPerChannel:24];
  }

  else
  {
    physicalFormat2 = [(AppleAOPAudioStream *)self physicalFormat];
    [physicalFormat2 setBitsPerChannel:8 * sample];
  }

  v5 = [(AppleAOPAudioStream *)self getChannelsPerFrame]* sample;
  physicalFormat3 = [(AppleAOPAudioStream *)self physicalFormat];
  [physicalFormat3 setBytesPerFrame:v5];

  LODWORD(v5) = [(AppleAOPAudioStream *)self getBytesPerFrame];
  v6 = [(AppleAOPAudioStream *)self getFramesPerPacket]* v5;
  physicalFormat4 = [(AppleAOPAudioStream *)self physicalFormat];
  [physicalFormat4 setBytesPerPacket:v6];
}

- (basic_string<char,)dumpToString
{
  v2 = v1;
  sub_B67C(&v20);
  sub_C0F4(&v20, "  Sample Rate:        ", 22);
  physicalFormat = [v2 physicalFormat];
  [physicalFormat sampleRate];
  v4 = std::ostream::operator<<();
  sub_C0F4(v4, "\n", 1);

  sub_C0F4(&v20, "  Format ID:          ", 22);
  physicalFormat2 = [v2 physicalFormat];
  [physicalFormat2 formatID];
  v6 = std::ostream::operator<<();
  sub_C0F4(v6, "\n", 1);

  sub_C0F4(&v20, "  Format Flags:       ", 22);
  physicalFormat3 = [v2 physicalFormat];
  [physicalFormat3 formatFlags];
  v8 = std::ostream::operator<<();
  sub_C0F4(v8, "\n", 1);

  sub_C0F4(&v20, "  Bytes per Packet:   ", 22);
  physicalFormat4 = [v2 physicalFormat];
  [physicalFormat4 bytesPerPacket];
  v10 = std::ostream::operator<<();
  sub_C0F4(v10, "\n", 1);

  sub_C0F4(&v20, "  Frames per Packet:  ", 22);
  physicalFormat5 = [v2 physicalFormat];
  [physicalFormat5 framesPerPacket];
  v12 = std::ostream::operator<<();
  sub_C0F4(v12, "\n", 1);

  sub_C0F4(&v20, "  Bytes per Frame:    ", 22);
  physicalFormat6 = [v2 physicalFormat];
  [physicalFormat6 bytesPerFrame];
  v14 = std::ostream::operator<<();
  sub_C0F4(v14, "\n", 1);

  sub_C0F4(&v20, "  Channels per Frame: ", 22);
  physicalFormat7 = [v2 physicalFormat];
  [physicalFormat7 channelsPerFrame];
  v16 = std::ostream::operator<<();
  sub_C0F4(v16, "\n", 1);

  sub_C0F4(&v20, "  Bits per Channel:   ", 22);
  physicalFormat8 = [v2 physicalFormat];
  [physicalFormat8 bitsPerChannel];
  v18 = std::ostream::operator<<();
  sub_C0F4(v18, "\n", 1);

  std::stringbuf::str();
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  std::locale::~locale(v22);
  std::ostream::~ostream();
  return std::ios::~ios();
}

@end