@interface AppleAOPAudioStream
- (BOOL)changePhysicalFormat:(id)a3;
- (basic_string<char,)dumpToString;
- (double)getSampleRateHz;
- (unsigned)getBytesPerFrame;
- (unsigned)getBytesPerPacket;
- (unsigned)getBytesPerSample;
- (unsigned)getChannelsPerFrame;
- (unsigned)getFramesPerPacket;
- (void)notifyStreamPropertiesChanged;
- (void)setBytesPerSample:(unsigned int)a3;
- (void)setSampleRateHz:(double)a3;
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
  v2 = [(AppleAOPAudioStream *)self physicalFormat];
  v3 = [v2 bytesPerPacket];

  return v3;
}

- (void)stopStream
{
  v2.receiver = self;
  v2.super_class = AppleAOPAudioStream;
  [(AppleAOPAudioStream *)&v2 stopStream];
}

- (unsigned)getChannelsPerFrame
{
  v2 = [(AppleAOPAudioStream *)self physicalFormat];
  v3 = [v2 channelsPerFrame];

  return v3;
}

- (unsigned)getBytesPerFrame
{
  v2 = [(AppleAOPAudioStream *)self physicalFormat];
  v3 = [v2 bytesPerFrame];

  return v3;
}

- (unsigned)getFramesPerPacket
{
  v2 = [(AppleAOPAudioStream *)self physicalFormat];
  v3 = [v2 framesPerPacket];

  return v3;
}

- (unsigned)getBytesPerSample
{
  v3 = [(AppleAOPAudioStream *)self physicalFormat];
  if (([v3 formatFlags] & 8) != 0)
  {

    goto LABEL_5;
  }

  v4 = [(AppleAOPAudioStream *)self physicalFormat];
  v5 = [v4 bitsPerChannel];

  if (v5 <= 0x17)
  {
LABEL_5:
    v7 = [(AppleAOPAudioStream *)self physicalFormat];
    v6 = [v7 bitsPerChannel] >> 3;

    return v6;
  }

  return 4;
}

- (double)getSampleRateHz
{
  v2 = [(AppleAOPAudioStream *)self physicalFormat];
  [v2 sampleRate];
  v4 = v3;

  return v4;
}

- (void)notifyStreamPropertiesChanged
{
  v11 = [(AppleAOPAudioStream *)self physicalFormat];
  v3 = +[NSMutableArray array];
  v4 = [(AppleAOPAudioStream *)self physicalFormat];
  [v11 setBytesPerFrame:{objc_msgSend(v4, "bytesPerFrame")}];

  v5 = [(AppleAOPAudioStream *)self physicalFormat];
  [v11 setBytesPerPacket:{objc_msgSend(v5, "bytesPerPacket")}];

  [v3 addObject:v11];
  v6 = [v3 objectAtIndexedSubscript:0];
  [(AppleAOPAudioStream *)self setPhysicalFormat:v6];

  [(AppleAOPAudioStream *)self setPhysicalFormats:v3];
  v7 = [v11 bytesPerFrame];
  v8 = [(AppleAOPAudioStream *)self physicalFormat];
  [v8 setBytesPerFrame:v7];

  v9 = [v11 bytesPerPacket];
  v10 = [(AppleAOPAudioStream *)self physicalFormat];
  [v10 setBytesPerPacket:v9];
}

- (BOOL)changePhysicalFormat:(id)a3
{
  v4 = a3;
  [(AppleAOPAudioStream *)self setPhysicalFormat:v4];
  v5 = [v4 bytesPerFrame];
  v6 = [(AppleAOPAudioStream *)self physicalFormat];
  [v6 setBytesPerFrame:v5];

  v7 = [v4 bytesPerPacket];
  v8 = [(AppleAOPAudioStream *)self physicalFormat];
  [v8 setBytesPerPacket:v7];

  return 1;
}

- (void)setSampleRateHz:(double)a3
{
  v4 = [(AppleAOPAudioStream *)self physicalFormat];
  [v4 setSampleRate:a3];
}

- (void)setBytesPerSample:(unsigned int)a3
{
  if (a3 == 4)
  {
    v7 = [(AppleAOPAudioStream *)self physicalFormat];
    [v7 setFormatFlags:20];

    v8 = [(AppleAOPAudioStream *)self physicalFormat];
    [v8 setBitsPerChannel:24];
  }

  else
  {
    v8 = [(AppleAOPAudioStream *)self physicalFormat];
    [v8 setBitsPerChannel:8 * a3];
  }

  v5 = [(AppleAOPAudioStream *)self getChannelsPerFrame]* a3;
  v9 = [(AppleAOPAudioStream *)self physicalFormat];
  [v9 setBytesPerFrame:v5];

  LODWORD(v5) = [(AppleAOPAudioStream *)self getBytesPerFrame];
  v6 = [(AppleAOPAudioStream *)self getFramesPerPacket]* v5;
  v10 = [(AppleAOPAudioStream *)self physicalFormat];
  [v10 setBytesPerPacket:v6];
}

- (basic_string<char,)dumpToString
{
  v2 = v1;
  sub_B67C(&v20);
  sub_C0F4(&v20, "  Sample Rate:        ", 22);
  v3 = [v2 physicalFormat];
  [v3 sampleRate];
  v4 = std::ostream::operator<<();
  sub_C0F4(v4, "\n", 1);

  sub_C0F4(&v20, "  Format ID:          ", 22);
  v5 = [v2 physicalFormat];
  [v5 formatID];
  v6 = std::ostream::operator<<();
  sub_C0F4(v6, "\n", 1);

  sub_C0F4(&v20, "  Format Flags:       ", 22);
  v7 = [v2 physicalFormat];
  [v7 formatFlags];
  v8 = std::ostream::operator<<();
  sub_C0F4(v8, "\n", 1);

  sub_C0F4(&v20, "  Bytes per Packet:   ", 22);
  v9 = [v2 physicalFormat];
  [v9 bytesPerPacket];
  v10 = std::ostream::operator<<();
  sub_C0F4(v10, "\n", 1);

  sub_C0F4(&v20, "  Frames per Packet:  ", 22);
  v11 = [v2 physicalFormat];
  [v11 framesPerPacket];
  v12 = std::ostream::operator<<();
  sub_C0F4(v12, "\n", 1);

  sub_C0F4(&v20, "  Bytes per Frame:    ", 22);
  v13 = [v2 physicalFormat];
  [v13 bytesPerFrame];
  v14 = std::ostream::operator<<();
  sub_C0F4(v14, "\n", 1);

  sub_C0F4(&v20, "  Channels per Frame: ", 22);
  v15 = [v2 physicalFormat];
  [v15 channelsPerFrame];
  v16 = std::ostream::operator<<();
  sub_C0F4(v16, "\n", 1);

  sub_C0F4(&v20, "  Bits per Channel:   ", 22);
  v17 = [v2 physicalFormat];
  [v17 bitsPerChannel];
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