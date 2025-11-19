@interface _LTSELFLoggingEventData
- (_LTSELFLoggingEventData)initWithCoder:(id)a3;
- (_LTSELFLoggingEventData)initWithType:(int64_t)a3 invocationId:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTSELFLoggingEventData

- (_LTSELFLoggingEventData)initWithType:(int64_t)a3 invocationId:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _LTSELFLoggingEventData;
  v8 = [(_LTSELFLoggingEventData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_invocationId, a4);
    v10 = v9;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_invocationId forKey:@"invocationId"];
  [v5 encodeObject:self->_startInvocationOptions forKey:@"startInvocationOptions"];
  [v5 encodeObject:self->_qssSessionId forKey:@"qssSessionId"];
  [v5 encodeObject:self->_invocationEndedError forKey:@"invocationEndedError"];
  [v5 encodeObject:self->_invocationCancelledReason forKey:@"invocationCancelledReason"];
  [v5 encodeObject:self->_translationPayload forKey:@"translationPayload"];
  [v5 encodeObject:self->_translationLocalePair forKey:@"translationLocalePair"];
  [v5 encodeObject:self->_translationTTSData forKey:@"translationTTSData"];
  [v5 encodeObject:self->_translationLIDData forKey:@"translationLIDData"];
  [v5 encodeObject:self->_untrustedClientIdentifier forKey:@"untrustedClientIdentifier"];
}

- (_LTSELFLoggingEventData)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = _LTSELFLoggingEventData;
  v5 = [(_LTSELFLoggingEventData *)&v28 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invocationId"];
    invocationId = v5->_invocationId;
    v5->_invocationId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startInvocationOptions"];
    startInvocationOptions = v5->_startInvocationOptions;
    v5->_startInvocationOptions = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"qssSessionId"];
    qssSessionId = v5->_qssSessionId;
    v5->_qssSessionId = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invocationEndedError"];
    invocationEndedError = v5->_invocationEndedError;
    v5->_invocationEndedError = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invocationCancelledReason"];
    invocationCancelledReason = v5->_invocationCancelledReason;
    v5->_invocationCancelledReason = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"translationPayload"];
    translationPayload = v5->_translationPayload;
    v5->_translationPayload = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"translationLocalePair"];
    translationLocalePair = v5->_translationLocalePair;
    v5->_translationLocalePair = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"translationTTSData"];
    translationTTSData = v5->_translationTTSData;
    v5->_translationTTSData = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"translationLIDData"];
    translationLIDData = v5->_translationLIDData;
    v5->_translationLIDData = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"untrustedClientIdentifier"];
    untrustedClientIdentifier = v5->_untrustedClientIdentifier;
    v5->_untrustedClientIdentifier = v24;

    v26 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_LTSELFLoggingEventData alloc];
  v5 = [(_LTSELFLoggingEventData *)self type];
  v6 = [(_LTSELFLoggingEventData *)self invocationId];
  v7 = [(_LTSELFLoggingEventData *)v4 initWithType:v5 invocationId:v6];

  v8 = [(_LTSELFLoggingEventData *)self startInvocationOptions];
  [(_LTSELFLoggingEventData *)v7 setStartInvocationOptions:v8];

  v9 = [(_LTSELFLoggingEventData *)self qssSessionId];
  [(_LTSELFLoggingEventData *)v7 setQssSessionId:v9];

  v10 = [(_LTSELFLoggingEventData *)self invocationEndedError];
  [(_LTSELFLoggingEventData *)v7 setInvocationEndedError:v10];

  v11 = [(_LTSELFLoggingEventData *)self invocationCancelledReason];
  [(_LTSELFLoggingEventData *)v7 setInvocationCancelledReason:v11];

  v12 = [(_LTSELFLoggingEventData *)self translationPayload];
  [(_LTSELFLoggingEventData *)v7 setTranslationPayload:v12];

  v13 = [(_LTSELFLoggingEventData *)self translationLocalePair];
  [(_LTSELFLoggingEventData *)v7 setTranslationLocalePair:v13];

  v14 = [(_LTSELFLoggingEventData *)self translationTTSData];
  v15 = [v14 copy];
  [(_LTSELFLoggingEventData *)v7 setTranslationTTSData:v15];

  v16 = [(_LTSELFLoggingEventData *)self untrustedClientIdentifier];
  [(_LTSELFLoggingEventData *)v7 setUntrustedClientIdentifier:v16];

  v17 = [(_LTSELFLoggingEventData *)self trustedClientIdentifier];
  [(_LTSELFLoggingEventData *)v7 setTrustedClientIdentifier:v17];

  v18 = [(_LTSELFLoggingEventData *)self translationLIDData];
  v19 = [v18 copy];
  [(_LTSELFLoggingEventData *)v7 setTranslationLIDData:v19];

  return v7;
}

@end