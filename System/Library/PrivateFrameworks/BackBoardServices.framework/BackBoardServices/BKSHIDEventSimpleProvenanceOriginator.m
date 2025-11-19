@interface BKSHIDEventSimpleProvenanceOriginator
- (id)buildProvenance:(id)a3;
@end

@implementation BKSHIDEventSimpleProvenanceOriginator

- (id)buildProvenance:(id)a3
{
  v4 = a3;
  key = self->_key;
  if (!key)
  {
    v6 = +[_BKSHIDEventAuthenticationKey eventAuthenticationKey];
    v7 = self->_key;
    self->_key = v6;

    key = self->_key;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__BKSHIDEventSimpleProvenanceOriginator_buildProvenance___block_invoke;
  v11[3] = &unk_1E6F47728;
  v12 = v4;
  v8 = v4;
  v9 = [BKSHIDEventSimpleProvenance _withInternalKey:key buildMessage:v11];

  return v9;
}

@end