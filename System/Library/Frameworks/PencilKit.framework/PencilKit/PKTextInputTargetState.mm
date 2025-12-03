@interface PKTextInputTargetState
- (NSString)description;
- (PKTextInputTargetState)init;
- (__n128)clear;
- (id)copyWithZone:(_NSZone *)zone;
- (void)reportDebugStateDescription:(id)description;
- (void)setInProgressGestureStrokeUUID:(uint64_t)d;
@end

@implementation PKTextInputTargetState

- (PKTextInputTargetState)init
{
  v6.receiver = self;
  v6.super_class = PKTextInputTargetState;
  v2 = [(PKTextInputTargetState *)&v6 init];
  v4 = v2;
  if (v2)
  {
    [(PKTextInputTargetState *)v2 clear];
  }

  return v4;
}

- (__n128)clear
{
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, a2, 0, 48);
    objc_setProperty_nonatomic_copy(self, v3, 0, 56);
    objc_setProperty_nonatomic_copy(self, v4, 0, 16);
    v5 = *(self + 24);
    *(self + 24) = 0;

    v6 = *(self + 32);
    *(self + 32) = 0;

    objc_setProperty_nonatomic_copy(self, v7, 0, 40);
    *(self + 64) = 0;
    *(self + 104) = xmmword_1C801E6F0;
    v8 = *(self + 80);
    *(self + 80) = 0;

    *(self + 72) = 0x7FFFFFFFFFFFFFFFLL;
    result = xmmword_1C801E6F0;
    *(self + 120) = xmmword_1C801E6F0;
    *(self + 136) = xmmword_1C801E6F0;
    *(self + 88) = 0;
    *(self + 96) = 0;
    *(self + 8) = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PKTextInputTargetState);
  v6 = v4;
  if (self)
  {
    uncommittedPendingText = self->_uncommittedPendingText;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  uncommittedPendingText = 0;
  if (v4)
  {
LABEL_3:
    objc_setProperty_nonatomic_copy(v4, v5, uncommittedPendingText, 48);
  }

LABEL_4:
  if (self)
  {
    activePreviewText = self->_activePreviewText;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  activePreviewText = 0;
  if (v6)
  {
LABEL_6:
    objc_setProperty_nonatomic_copy(v6, v5, activePreviewText, 56);
  }

LABEL_7:
  if (self)
  {
    elementRecognitionIdentifier = self->_elementRecognitionIdentifier;
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  elementRecognitionIdentifier = 0;
  if (v6)
  {
LABEL_9:
    objc_setProperty_nonatomic_copy(v6, v5, elementRecognitionIdentifier, 16);
  }

LABEL_10:
  if (self)
  {
    [(PKMathResultAttribution *)v6 setString:?];
    [(PKMathResultAttribution *)v6 setDate:?];
    writingSessionIdentifier = self->_writingSessionIdentifier;
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [(PKMathResultAttribution *)v6 setString:?];
  [(PKMathResultAttribution *)v6 setDate:?];
  writingSessionIdentifier = 0;
  if (v6)
  {
LABEL_12:
    objc_setProperty_nonatomic_copy(v6, v10, writingSessionIdentifier, 40);
  }

LABEL_13:
  if (self)
  {
    sessionCommitLength = self->_sessionCommitLength;
    if (!v6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sessionCommitLength = 0;
  if (v6)
  {
LABEL_15:
    *(v6 + 64) = sessionCommitLength;
  }

LABEL_16:
  if (self)
  {
    lastCommittedCharacterLevelPosition = self->_lastCommittedCharacterLevelPosition;
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  lastCommittedCharacterLevelPosition = 0;
  if (v6)
  {
LABEL_18:
    *(v6 + 72) = lastCommittedCharacterLevelPosition;
  }

LABEL_19:
  if (self)
  {
    inProgressGestureInitialSelectedRange = self->_inProgressGestureInitialSelectedRange;
    if (!v6)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  inProgressGestureInitialSelectedRange = 0;
  if (v6)
  {
LABEL_21:
    *(v6 + 104) = inProgressGestureInitialSelectedRange;
  }

LABEL_22:
  if (self)
  {
    [(PKTextInputTargetState *)v6 setInProgressGestureStrokeUUID:?];
    lastUpdateTimestamp = self->_lastUpdateTimestamp;
    if (!v6)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  [(PKTextInputTargetState *)v6 setInProgressGestureStrokeUUID:?];
  lastUpdateTimestamp = 0.0;
  if (v6)
  {
LABEL_24:
    *(v6 + 96) = lastUpdateTimestamp;
  }

LABEL_25:
  if (self)
  {
    inProgressGestureSelectionRange = self->_inProgressGestureSelectionRange;
    if (!v6)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  inProgressGestureSelectionRange = 0;
  if (v6)
  {
LABEL_27:
    *(v6 + 120) = inProgressGestureSelectionRange;
  }

LABEL_28:
  if (self)
  {
    inProgressGestureRangeToDelete = self->_inProgressGestureRangeToDelete;
    if (!v6)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  inProgressGestureRangeToDelete = 0;
  if (v6)
  {
LABEL_30:
    *(v6 + 136) = inProgressGestureRangeToDelete;
  }

LABEL_31:
  if (self)
  {
    inProgressGestureStartTimestamp = self->_inProgressGestureStartTimestamp;
    if (!v6)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  inProgressGestureStartTimestamp = 0.0;
  if (v6)
  {
LABEL_33:
    *(v6 + 88) = inProgressGestureStartTimestamp;
  }

LABEL_34:
  if (!self)
  {
    nextCommitShouldHavePrecedingSeparator = 0;
    if (!v6)
    {
      return v6;
    }

    goto LABEL_36;
  }

  nextCommitShouldHavePrecedingSeparator = self->_nextCommitShouldHavePrecedingSeparator;
  if (v6)
  {
LABEL_36:
    *(v6 + 8) = nextCommitShouldHavePrecedingSeparator;
  }

  return v6;
}

- (void)setInProgressGestureStrokeUUID:(uint64_t)d
{
  if (d)
  {
    objc_storeStrong((d + 80), a2);
  }
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = PKTextInputTargetState;
  v3 = [(PKTextInputTargetState *)&v7 description];
  v4 = [PKTextInputDebugStateIntrospector debugStateLineDescriptionForIntrospectable:self];
  v5 = [v3 stringByAppendingFormat:@" %@", v4];

  return v5;
}

- (void)reportDebugStateDescription:(id)description
{
  descriptionCopy = description;
  uncommittedPendingText = self->_uncommittedPendingText;
  v21 = descriptionCopy;
  if (uncommittedPendingText)
  {
    uncommittedPendingText = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", uncommittedPendingText];
    v21[2](v21, @"uncommittedPendingText", uncommittedPendingText);
  }

  else
  {
    descriptionCopy[2](descriptionCopy, @"uncommittedPendingText", &stru_1F476BD20);
  }

  writingSessionIdentifier = self->_writingSessionIdentifier;
  if (writingSessionIdentifier)
  {
    v8 = [(NSNumber *)writingSessionIdentifier description];
    v21[2](v21, @"writingSessionID", v8);
  }

  else
  {
    v21[2](v21, @"writingSessionID", &stru_1F476BD20);
  }

  if (self->_activePreviewText)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", self->_activePreviewText];
    v21[2](v21, @"activePreviewText", v9);
  }

  else
  {
    v21[2](v21, @"activePreviewText", &stru_1F476BD20);
  }

  v10 = [(NSNumber *)self->_elementRecognitionIdentifier description];
  v21[2](v21, @"elementID", v10);

  itemStableIdentifier = [(CHTextInputQueryItem *)self->_lastQueryItem itemStableIdentifier];
  v12 = [itemStableIdentifier description];
  v21[2](v21, @"lastQueryItemID", v12);

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", self->_sessionCommitLength];
  v21[2](v21, @"sessionCommitLength", v13);

  if (self->_handwritingShot)
  {
    v14 = @"Yes";
  }

  else
  {
    v14 = @"No";
  }

  v21[2](v21, @"handwritingShot", v14);
  if (self->_lastCommittedCharacterLevelPosition == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21[2](v21, @"lastCommittedCharacterLevelPosition", @"None");
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", self->_lastCommittedCharacterLevelPosition];
    v21[2](v21, @"lastCommittedCharacterLevelPosition", v15);
  }

  v16.location = self->_inProgressGestureInitialSelectedRange.location;
  if (v16.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21[2](v21, @"inProgressGestureInitialSelectedRange", @"None");
  }

  else
  {
    v16.length = self->_inProgressGestureInitialSelectedRange.length;
    v17 = NSStringFromRange(v16);
    v21[2](v21, @"inProgressGestureInitialSelectedRange", v17);
  }

  inProgressGestureStrokeUUID = self->_inProgressGestureStrokeUUID;
  if (inProgressGestureStrokeUUID)
  {
    v19 = [(NSUUID *)inProgressGestureStrokeUUID description];
    v21[2](v21, @"inProgressGestureStrokeUUID", v19);
  }

  else
  {
    v21[2](v21, @"inProgressGestureStrokeUUID", @"None");
  }

  if (self->_nextCommitShouldHavePrecedingSeparator)
  {
    v20 = @"Yes";
  }

  else
  {
    v20 = @"No";
  }

  v21[2](v21, @"nextCommitShouldHavePrecedingSeparator", v20);
}

@end