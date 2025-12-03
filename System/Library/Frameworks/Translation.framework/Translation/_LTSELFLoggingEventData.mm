@interface _LTSELFLoggingEventData
- (_LTSELFLoggingEventData)initWithCoder:(id)coder;
- (_LTSELFLoggingEventData)initWithType:(int64_t)type invocationId:(id)id;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTSELFLoggingEventData

- (_LTSELFLoggingEventData)initWithType:(int64_t)type invocationId:(id)id
{
  idCopy = id;
  v12.receiver = self;
  v12.super_class = _LTSELFLoggingEventData;
  v8 = [(_LTSELFLoggingEventData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_invocationId, id);
    v10 = v9;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_invocationId forKey:@"invocationId"];
  [coderCopy encodeObject:self->_startInvocationOptions forKey:@"startInvocationOptions"];
  [coderCopy encodeObject:self->_qssSessionId forKey:@"qssSessionId"];
  [coderCopy encodeObject:self->_invocationEndedError forKey:@"invocationEndedError"];
  [coderCopy encodeObject:self->_invocationCancelledReason forKey:@"invocationCancelledReason"];
  [coderCopy encodeObject:self->_translationPayload forKey:@"translationPayload"];
  [coderCopy encodeObject:self->_translationLocalePair forKey:@"translationLocalePair"];
  [coderCopy encodeObject:self->_translationTTSData forKey:@"translationTTSData"];
  [coderCopy encodeObject:self->_translationLIDData forKey:@"translationLIDData"];
  [coderCopy encodeObject:self->_untrustedClientIdentifier forKey:@"untrustedClientIdentifier"];
}

- (_LTSELFLoggingEventData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = _LTSELFLoggingEventData;
  v5 = [(_LTSELFLoggingEventData *)&v28 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invocationId"];
    invocationId = v5->_invocationId;
    v5->_invocationId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startInvocationOptions"];
    startInvocationOptions = v5->_startInvocationOptions;
    v5->_startInvocationOptions = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"qssSessionId"];
    qssSessionId = v5->_qssSessionId;
    v5->_qssSessionId = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invocationEndedError"];
    invocationEndedError = v5->_invocationEndedError;
    v5->_invocationEndedError = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invocationCancelledReason"];
    invocationCancelledReason = v5->_invocationCancelledReason;
    v5->_invocationCancelledReason = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"translationPayload"];
    translationPayload = v5->_translationPayload;
    v5->_translationPayload = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"translationLocalePair"];
    translationLocalePair = v5->_translationLocalePair;
    v5->_translationLocalePair = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"translationTTSData"];
    translationTTSData = v5->_translationTTSData;
    v5->_translationTTSData = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"translationLIDData"];
    translationLIDData = v5->_translationLIDData;
    v5->_translationLIDData = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"untrustedClientIdentifier"];
    untrustedClientIdentifier = v5->_untrustedClientIdentifier;
    v5->_untrustedClientIdentifier = v24;

    v26 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_LTSELFLoggingEventData alloc];
  type = [(_LTSELFLoggingEventData *)self type];
  invocationId = [(_LTSELFLoggingEventData *)self invocationId];
  v7 = [(_LTSELFLoggingEventData *)v4 initWithType:type invocationId:invocationId];

  startInvocationOptions = [(_LTSELFLoggingEventData *)self startInvocationOptions];
  [(_LTSELFLoggingEventData *)v7 setStartInvocationOptions:startInvocationOptions];

  qssSessionId = [(_LTSELFLoggingEventData *)self qssSessionId];
  [(_LTSELFLoggingEventData *)v7 setQssSessionId:qssSessionId];

  invocationEndedError = [(_LTSELFLoggingEventData *)self invocationEndedError];
  [(_LTSELFLoggingEventData *)v7 setInvocationEndedError:invocationEndedError];

  invocationCancelledReason = [(_LTSELFLoggingEventData *)self invocationCancelledReason];
  [(_LTSELFLoggingEventData *)v7 setInvocationCancelledReason:invocationCancelledReason];

  translationPayload = [(_LTSELFLoggingEventData *)self translationPayload];
  [(_LTSELFLoggingEventData *)v7 setTranslationPayload:translationPayload];

  translationLocalePair = [(_LTSELFLoggingEventData *)self translationLocalePair];
  [(_LTSELFLoggingEventData *)v7 setTranslationLocalePair:translationLocalePair];

  translationTTSData = [(_LTSELFLoggingEventData *)self translationTTSData];
  v15 = [translationTTSData copy];
  [(_LTSELFLoggingEventData *)v7 setTranslationTTSData:v15];

  untrustedClientIdentifier = [(_LTSELFLoggingEventData *)self untrustedClientIdentifier];
  [(_LTSELFLoggingEventData *)v7 setUntrustedClientIdentifier:untrustedClientIdentifier];

  trustedClientIdentifier = [(_LTSELFLoggingEventData *)self trustedClientIdentifier];
  [(_LTSELFLoggingEventData *)v7 setTrustedClientIdentifier:trustedClientIdentifier];

  translationLIDData = [(_LTSELFLoggingEventData *)self translationLIDData];
  v19 = [translationLIDData copy];
  [(_LTSELFLoggingEventData *)v7 setTranslationLIDData:v19];

  return v7;
}

@end