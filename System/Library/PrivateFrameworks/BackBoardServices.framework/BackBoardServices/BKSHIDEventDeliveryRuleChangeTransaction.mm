@interface BKSHIDEventDeliveryRuleChangeTransaction
- (BKSHIDEventDeliveryRuleChangeTransaction)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
- (void)setBufferingPredicates:(id)predicates;
- (void)setConstraintAssertions:(id)assertions;
- (void)setDiscreteDispatchingRules:(id)rules;
- (void)setKeyCommandDispatchingRules:(id)rules;
- (void)setKeyCommandsRegistrations:(id)registrations;
- (void)setModalityAssertions:(id)assertions;
- (void)setSelectionRequests:(id)requests;
@end

@implementation BKSHIDEventDeliveryRuleChangeTransaction

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendBodySectionWithName:0 block:v6];
}

void __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUInt64:*(*(a1 + 40) + 8) withName:@"contentsMask" format:1];
  v3 = *(a1 + 40);
  if (v3[2])
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E698E690] collectionLineBreakNoneStyle];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke_2;
    v32[3] = &unk_1E6F47C78;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v33 = v6;
    v34 = v7;
    [v4 overlayStyle:v5 block:v32];

    v3 = *(a1 + 40);
  }

  if (v3[3])
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E698E690] collectionLineBreakNoneStyle];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke_4;
    v29[3] = &unk_1E6F47C78;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v30 = v10;
    v31 = v11;
    [v8 overlayStyle:v9 block:v29];

    v3 = *(a1 + 40);
  }

  v12 = v3[4];
  if (v12)
  {
    v13 = [*(a1 + 32) appendObject:v12 withName:@"keyCommandDispatchingRules"];
    v3 = *(a1 + 40);
  }

  if (v3[5])
  {
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x1E698E690] collectionLineBreakNoneStyle];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke_6;
    v26[3] = &unk_1E6F47C78;
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v27 = v16;
    v28 = v17;
    [v14 overlayStyle:v15 block:v26];

    v3 = *(a1 + 40);
  }

  v18 = v3[6];
  if (v18)
  {
    v19 = [*(a1 + 32) appendObject:v18 withName:@"bufferingPredicates"];
    v3 = *(a1 + 40);
  }

  v20 = v3[8];
  if (v20)
  {
    v21 = [*(a1 + 32) appendObject:v20 withName:@"modalityAssertions"];
    v3 = *(a1 + 40);
  }

  v22 = v3[7];
  if (v22)
  {
    v23 = [*(a1 + 32) appendObject:v22 withName:@"constraintAssertions"];
    v3 = *(a1 + 40);
  }

  v24 = v3[9];
  if (v24)
  {
    v25 = [*(a1 + 32) appendObject:v24 withName:@"selectionRequests"];
  }
}

void __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 16) bs_map:&__block_literal_global_2232];
  v2 = [v1 appendObject:v3 withName:@"discreteDispatchingRules"];
}

void __70__BKSHIDEventDeliveryRuleChangeTransaction_appendDescriptionToStream___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 24) bs_map:&__block_literal_global_174];
  v2 = [v1 appendObject:v3 withName:@"deferringRules"];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_contentsMask forKey:@"contentsMask"];
  discreteDispatchingRules = self->_discreteDispatchingRules;
  if (discreteDispatchingRules)
  {
    [coderCopy encodeObject:discreteDispatchingRules forKey:@"discreteDispatchingRules"];
  }

  deferringRules = self->_deferringRules;
  if (deferringRules)
  {
    [coderCopy encodeObject:deferringRules forKey:@"deferringRules"];
  }

  keyCommandDispatchingRules = self->_keyCommandDispatchingRules;
  v7 = coderCopy;
  if (keyCommandDispatchingRules)
  {
    [coderCopy encodeObject:keyCommandDispatchingRules forKey:@"keyCommandDispatchingRules"];
    v7 = coderCopy;
  }

  keyCommandsRegistrations = self->_keyCommandsRegistrations;
  if (keyCommandsRegistrations)
  {
    [coderCopy encodeObject:keyCommandsRegistrations forKey:@"keyCommandsRegistrations"];
    v7 = coderCopy;
  }

  bufferingPredicates = self->_bufferingPredicates;
  if (bufferingPredicates)
  {
    [coderCopy encodeObject:bufferingPredicates forKey:@"bufferingPredicates"];
    v7 = coderCopy;
  }

  modalityAssertions = self->_modalityAssertions;
  if (modalityAssertions)
  {
    [coderCopy encodeObject:modalityAssertions forKey:@"modalityAssertions"];
    v7 = coderCopy;
  }

  constraintAssertions = self->_constraintAssertions;
  if (constraintAssertions)
  {
    [coderCopy encodeObject:constraintAssertions forKey:@"constraintAssertions"];
    v7 = coderCopy;
  }

  selectionRequests = self->_selectionRequests;
  if (selectionRequests)
  {
    [coderCopy encodeObject:selectionRequests forKey:@"selectionRequests"];
    v7 = coderCopy;
  }
}

- (BKSHIDEventDeliveryRuleChangeTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BKSHIDEventDeliveryRuleChangeTransaction *)self init];
  if (v5)
  {
    v5->_contentsMask = [coderCopy decodeIntegerForKey:@"contentsMask"];
    v6 = objc_opt_class();
    v7 = _BKDecodeArrayOfClass(coderCopy, v6, @"discreteDispatchingRules");
    discreteDispatchingRules = v5->_discreteDispatchingRules;
    v5->_discreteDispatchingRules = v7;

    v9 = objc_opt_class();
    v10 = _BKDecodeArrayOfClass(coderCopy, v9, @"deferringRules");
    deferringRules = v5->_deferringRules;
    v5->_deferringRules = v10;

    v12 = objc_opt_class();
    v13 = _BKDecodeArrayOfClass(coderCopy, v12, @"keyCommandDispatchingRules");
    keyCommandDispatchingRules = v5->_keyCommandDispatchingRules;
    v5->_keyCommandDispatchingRules = v13;

    v15 = objc_opt_class();
    v16 = _BKDecodeArrayOfClass(coderCopy, v15, @"keyCommandsRegistrations");
    keyCommandsRegistrations = v5->_keyCommandsRegistrations;
    v5->_keyCommandsRegistrations = v16;

    v18 = objc_opt_class();
    v19 = _BKDecodeArrayOfClass(coderCopy, v18, @"bufferingPredicates");
    bufferingPredicates = v5->_bufferingPredicates;
    v5->_bufferingPredicates = v19;

    v21 = objc_opt_class();
    v22 = _BKDecodeArrayOfClass(coderCopy, v21, @"constraintAssertions");
    constraintAssertions = v5->_constraintAssertions;
    v5->_constraintAssertions = v22;

    v24 = objc_opt_class();
    v25 = _BKDecodeArrayOfClass(coderCopy, v24, @"modalityAssertions");
    modalityAssertions = v5->_modalityAssertions;
    v5->_modalityAssertions = v25;

    v27 = objc_opt_class();
    v28 = _BKDecodeArrayOfClass(coderCopy, v27, @"selectionRequests");
    selectionRequests = v5->_selectionRequests;
    v5->_selectionRequests = v28;
  }

  return v5;
}

- (void)setSelectionRequests:(id)requests
{
  v4 = [requests copy];
  selectionRequests = self->_selectionRequests;
  self->_selectionRequests = v4;

  self->_contentsMask |= 0x80uLL;
}

- (void)setModalityAssertions:(id)assertions
{
  v4 = [assertions copy];
  modalityAssertions = self->_modalityAssertions;
  self->_modalityAssertions = v4;

  self->_contentsMask |= 0x40uLL;
}

- (void)setConstraintAssertions:(id)assertions
{
  v4 = [assertions copy];
  constraintAssertions = self->_constraintAssertions;
  self->_constraintAssertions = v4;

  self->_contentsMask |= 0x20uLL;
}

- (void)setKeyCommandDispatchingRules:(id)rules
{
  v4 = [rules copy];
  keyCommandDispatchingRules = self->_keyCommandDispatchingRules;
  self->_keyCommandDispatchingRules = v4;

  self->_contentsMask |= 4uLL;
}

- (void)setKeyCommandsRegistrations:(id)registrations
{
  v4 = [registrations copy];
  keyCommandsRegistrations = self->_keyCommandsRegistrations;
  self->_keyCommandsRegistrations = v4;

  self->_contentsMask |= 8uLL;
}

- (void)setBufferingPredicates:(id)predicates
{
  v4 = [predicates copy];
  bufferingPredicates = self->_bufferingPredicates;
  self->_bufferingPredicates = v4;

  self->_contentsMask |= 0x10uLL;
}

- (void)setDiscreteDispatchingRules:(id)rules
{
  v4 = [rules copy];
  discreteDispatchingRules = self->_discreteDispatchingRules;
  self->_discreteDispatchingRules = v4;

  self->_contentsMask |= 1uLL;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (!v9)
    {
      goto LABEL_18;
    }

    if (self->_contentsMask != v9->_contentsMask)
    {
      goto LABEL_18;
    }

    discreteDispatchingRules = self->_discreteDispatchingRules;
    v11 = v9->_discreteDispatchingRules;
    if (!BSEqualObjects())
    {
      goto LABEL_18;
    }

    deferringRules = self->_deferringRules;
    v13 = v9->_deferringRules;
    if (!BSEqualObjects())
    {
      goto LABEL_18;
    }

    keyCommandDispatchingRules = self->_keyCommandDispatchingRules;
    v15 = v9->_keyCommandDispatchingRules;
    if (!BSEqualObjects())
    {
      goto LABEL_18;
    }

    keyCommandsRegistrations = self->_keyCommandsRegistrations;
    v17 = v9->_keyCommandsRegistrations;
    if (!BSEqualObjects())
    {
      goto LABEL_18;
    }

    bufferingPredicates = self->_bufferingPredicates;
    v19 = v9->_bufferingPredicates;
    if (BSEqualObjects() && (modalityAssertions = self->_modalityAssertions, v21 = v9->_modalityAssertions, BSEqualObjects()) && (constraintAssertions = self->_constraintAssertions, v23 = v9->_constraintAssertions, BSEqualObjects()))
    {
      selectionRequests = self->_selectionRequests;
      v25 = v9->_selectionRequests;
      v8 = BSEqualObjects();
    }

    else
    {
LABEL_18:
      v8 = 0;
    }
  }

  return v8;
}

@end