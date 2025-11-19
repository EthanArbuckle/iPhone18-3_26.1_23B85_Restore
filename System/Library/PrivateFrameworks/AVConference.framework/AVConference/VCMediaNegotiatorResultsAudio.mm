@interface VCMediaNegotiatorResultsAudio
- (BOOL)isEqual:(id)a3;
- (VCMediaNegotiatorResultsAudio)initWithACC24ForU1Enabled:(BOOL)a3;
- (void)addSecondaryPayload:(int)a3;
- (void)dealloc;
@end

@implementation VCMediaNegotiatorResultsAudio

- (VCMediaNegotiatorResultsAudio)initWithACC24ForU1Enabled:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCMediaNegotiatorResultsAudio;
  v4 = [(VCMediaNegotiatorResultsAudio *)&v6 init];
  if (v4)
  {
    *(v4 + 4) = objc_opt_new();
    *(v4 + 20) = 0x8000000080;
    *(v4 + 7) = 128;
    *(v4 + 6) = 3;
    v4[56] = a3;
  }

  return v4;
}

- (void)addSecondaryPayload:(int)a3
{
  secondaryPayloads = self->_secondaryPayloads;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];

  [(NSMutableSet *)secondaryPayloads addObject:v4];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaNegotiatorResultsAudio;
  [(VCMediaNegotiatorResultsAudio *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [a3 remoteSSRC] != self->_remoteSSRC || objc_msgSend(a3, "audioUnitModel") != self->_audioUnitModel || self->_allowRecording != objc_msgSend(a3, "allowRecording") || self->_allowSwitching != objc_msgSend(a3, "allowSwitching") || objc_msgSend(a3, "primaryPayload") != self->_primaryPayload || objc_msgSend(a3, "dtxPayload") != self->_dtxPayload || objc_msgSend(a3, "redPayload") != self->_redPayload || self->_useSBR != objc_msgSend(a3, "useSBR") || objc_msgSend(a3, "cipherSuite") != self->_cipherSuite)
  {
    return 0;
  }

  secondaryPayloads = self->_secondaryPayloads;
  v6 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(a3, "secondaryPayloads")}];

  return [(NSMutableSet *)secondaryPayloads isEqualToSet:v6];
}

@end