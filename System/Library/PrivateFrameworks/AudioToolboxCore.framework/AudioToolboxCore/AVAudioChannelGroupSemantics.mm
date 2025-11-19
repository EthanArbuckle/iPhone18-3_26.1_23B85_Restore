@interface AVAudioChannelGroupSemantics
- (AVAudioChannelGroupSemantics)initWithAudioChannelGroupSemantics:(const AudioChannelGroupSemantics *)a3;
- (AVAudioChannelGroupSemantics)initWithChannelCount:(unsigned int)a3 semantics:(unsigned int)a4 terminalType:(unsigned int)a5 layout:(id)a6;
- (AVAudioChannelGroupSemantics)initWithCoder:(id)a3;
- (AVAudioChannelLayout)layout;
- (AudioChannelGroupSemantics)createAudioChannelGroupSemantics;
- (uint64_t)createAudioChannelGroupSemantics;
- (void)encodeWithCoder:(id)a3;
- (void)setLayout:(id)a3;
@end

@implementation AVAudioChannelGroupSemantics

- (void)setLayout:(id)a3
{
  v6 = a3;
  v4 = [objc_alloc(getAVAudioChannelLayoutClass()) initWithLayout:{objc_msgSend(v6, "layout")}];
  layout = self->_layout;
  self->_layout = v4;
}

- (AVAudioChannelLayout)layout
{
  v2 = [objc_alloc(getAVAudioChannelLayoutClass()) initWithLayout:{-[AVAudioChannelLayout layout](self->_layout, "layout")}];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:self->_channelCount forKey:@"channelCount"];
  [v4 encodeInt:self->_semantics forKey:@"semantics"];
  [v4 encodeInt:self->_terminalType forKey:@"terminalType"];
  [v4 encodeObject:self->_layout forKey:@"layout"];
}

- (AVAudioChannelGroupSemantics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"channelCount"];
  v6 = [v4 decodeIntForKey:@"semantics"];
  v7 = [v4 decodeIntForKey:@"terminalType"];
  v8 = [v4 decodeObjectForKey:@"layout"];
  v9 = [(AVAudioChannelGroupSemantics *)self initWithChannelCount:v5 semantics:v6 terminalType:v7 layout:v8];

  return v9;
}

- (AudioChannelGroupSemantics)createAudioChannelGroupSemantics
{
  if ([(AVAudioChannelLayout *)self->_layout layout][8])
  {
    v3 = 20 * ([(AVAudioChannelLayout *)self->_layout layout][8] - 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = malloc_type_malloc(v3 + 44, 0x1000040D4159EFEuLL);
  v9 = v4;
  v7 = MEMORY[0x193ADF1D0]();
  v8 = &v9;
  v4->var0 = self->_channelCount;
  v4->var1 = self->_semantics;
  v4->var2 = self->_terminalType;
  memcpy(&v4->var3, [(AVAudioChannelLayout *)self->_layout layout], v3 + 12);
  v5 = v9;
  applesauce::raii::v1::detail::ScopeGuard<[AVAudioChannelGroupSemantics createAudioChannelGroupSemantics]::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(&v7);
  return v5;
}

- (uint64_t)createAudioChannelGroupSemantics
{
  if (MEMORY[0x193ADF1D0]() > *a1)
  {
    free(**(a1 + 8));
    **(a1 + 8) = 0;
  }

  return a1;
}

- (AVAudioChannelGroupSemantics)initWithAudioChannelGroupSemantics:(const AudioChannelGroupSemantics *)a3
{
  v9.receiver = self;
  v9.super_class = AVAudioChannelGroupSemantics;
  v4 = [(AVAudioChannelGroupSemantics *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_channelCount = a3->var0;
    v4->_semantics = a3->var1;
    v4->_terminalType = a3->var2;
    v6 = [objc_alloc(getAVAudioChannelLayoutClass()) initWithLayout:&a3->var3];
    layout = v5->_layout;
    v5->_layout = v6;
  }

  return v5;
}

- (AVAudioChannelGroupSemantics)initWithChannelCount:(unsigned int)a3 semantics:(unsigned int)a4 terminalType:(unsigned int)a5 layout:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = AVAudioChannelGroupSemantics;
  v12 = [(AVAudioChannelGroupSemantics *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_terminalType = a5;
    v12->_channelCount = a3;
    v12->_semantics = a4;
    objc_storeStrong(&v12->_layout, a6);
  }

  return v13;
}

@end