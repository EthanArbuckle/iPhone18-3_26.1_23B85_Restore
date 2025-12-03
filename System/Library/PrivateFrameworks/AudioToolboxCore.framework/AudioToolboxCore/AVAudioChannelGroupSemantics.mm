@interface AVAudioChannelGroupSemantics
- (AVAudioChannelGroupSemantics)initWithAudioChannelGroupSemantics:(const AudioChannelGroupSemantics *)semantics;
- (AVAudioChannelGroupSemantics)initWithChannelCount:(unsigned int)count semantics:(unsigned int)semantics terminalType:(unsigned int)type layout:(id)layout;
- (AVAudioChannelGroupSemantics)initWithCoder:(id)coder;
- (AVAudioChannelLayout)layout;
- (AudioChannelGroupSemantics)createAudioChannelGroupSemantics;
- (uint64_t)createAudioChannelGroupSemantics;
- (void)encodeWithCoder:(id)coder;
- (void)setLayout:(id)layout;
@end

@implementation AVAudioChannelGroupSemantics

- (void)setLayout:(id)layout
{
  layoutCopy = layout;
  v4 = [objc_alloc(getAVAudioChannelLayoutClass()) initWithLayout:{objc_msgSend(layoutCopy, "layout")}];
  layout = self->_layout;
  self->_layout = v4;
}

- (AVAudioChannelLayout)layout
{
  v2 = [objc_alloc(getAVAudioChannelLayoutClass()) initWithLayout:{-[AVAudioChannelLayout layout](self->_layout, "layout")}];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->_channelCount forKey:@"channelCount"];
  [coderCopy encodeInt:self->_semantics forKey:@"semantics"];
  [coderCopy encodeInt:self->_terminalType forKey:@"terminalType"];
  [coderCopy encodeObject:self->_layout forKey:@"layout"];
}

- (AVAudioChannelGroupSemantics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"channelCount"];
  v6 = [coderCopy decodeIntForKey:@"semantics"];
  v7 = [coderCopy decodeIntForKey:@"terminalType"];
  v8 = [coderCopy decodeObjectForKey:@"layout"];
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
  if (MEMORY[0x193ADF1D0]() > *self)
  {
    free(**(self + 8));
    **(self + 8) = 0;
  }

  return self;
}

- (AVAudioChannelGroupSemantics)initWithAudioChannelGroupSemantics:(const AudioChannelGroupSemantics *)semantics
{
  v9.receiver = self;
  v9.super_class = AVAudioChannelGroupSemantics;
  v4 = [(AVAudioChannelGroupSemantics *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_channelCount = semantics->var0;
    v4->_semantics = semantics->var1;
    v4->_terminalType = semantics->var2;
    v6 = [objc_alloc(getAVAudioChannelLayoutClass()) initWithLayout:&semantics->var3];
    layout = v5->_layout;
    v5->_layout = v6;
  }

  return v5;
}

- (AVAudioChannelGroupSemantics)initWithChannelCount:(unsigned int)count semantics:(unsigned int)semantics terminalType:(unsigned int)type layout:(id)layout
{
  layoutCopy = layout;
  v15.receiver = self;
  v15.super_class = AVAudioChannelGroupSemantics;
  v12 = [(AVAudioChannelGroupSemantics *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_terminalType = type;
    v12->_channelCount = count;
    v12->_semantics = semantics;
    objc_storeStrong(&v12->_layout, layout);
  }

  return v13;
}

@end