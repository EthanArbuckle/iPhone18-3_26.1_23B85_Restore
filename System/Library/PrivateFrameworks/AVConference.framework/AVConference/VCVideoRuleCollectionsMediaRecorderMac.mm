@interface VCVideoRuleCollectionsMediaRecorderMac
- (VCVideoRuleCollectionsMediaRecorderMac)initWithHardwareSettings:(id)a3;
- (id)mediaRecorderImageTypes;
- (id)mediaRecorderVideoCodecs;
@end

@implementation VCVideoRuleCollectionsMediaRecorderMac

- (VCVideoRuleCollectionsMediaRecorderMac)initWithHardwareSettings:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCVideoRuleCollectionsMediaRecorderMac;
  result = [(VCVideoRuleCollectionsMediaRecorder *)&v5 init];
  if (result)
  {
    result->_hardwareSettings = a3;
  }

  return result;
}

- (id)mediaRecorderVideoCodecs
{
  v3 = [MEMORY[0x1E695DFA8] setWithObjects:{&unk_1F579A488, 0}];
  if ([(VCHardwareSettingsMacProtocol *)self->_hardwareSettings supportHEVC]&& self->super._isHEIFAndHEVCFormatEnabled)
  {
    [v3 addObject:&unk_1F579A4A0];
  }

  return v3;
}

- (id)mediaRecorderImageTypes
{
  v3 = [MEMORY[0x1E695DFA8] setWithObjects:{&unk_1F579A4B8, 0}];
  v4 = v3;
  if (self->super._isHEIFAndHEVCFormatEnabled)
  {
    [v3 addObject:&unk_1F579A4D0];
  }

  return v4;
}

@end