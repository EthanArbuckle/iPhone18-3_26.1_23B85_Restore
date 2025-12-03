@interface CLClientManagerAuthorizationContext
- (BOOL)isEqual:(id)equal;
- (CLClientManagerAuthorizationContext)initWithInUseLevel:(int)level registrationResult:(int)result transientAwareRegistrationResult:(int)registrationResult serviceMaskTuple:(CLClientServiceTypeMaskTuple)tuple diagnosticMask:(unint64_t)mask authorizedForWidgetUpdates:(BOOL)updates;
- (id)authorizationContextByANDingServiceMaskTuple:(CLClientServiceTypeMaskTuple)tuple;
- (id)getStateSummary;
@end

@implementation CLClientManagerAuthorizationContext

- (CLClientManagerAuthorizationContext)initWithInUseLevel:(int)level registrationResult:(int)result transientAwareRegistrationResult:(int)registrationResult serviceMaskTuple:(CLClientServiceTypeMaskTuple)tuple diagnosticMask:(unint64_t)mask authorizedForWidgetUpdates:(BOOL)updates
{
  var1 = tuple.var1;
  var0 = tuple.var0;
  v15.receiver = self;
  v15.super_class = CLClientManagerAuthorizationContext;
  result = [(CLClientManagerAuthorizationContext *)&v15 init];
  if (result)
  {
    result->_registrationResult = result;
    result->_inUseLevel = level;
    result->_effectiveServiceMask = var0;
    result->_provisionalServiceMask = var1;
    result->_transientAwareRegistrationResult = registrationResult;
    result->_diagnosticMask = mask;
    result->_authorizedForWidgetUpdates = updates;
  }

  return result;
}

- (id)authorizationContextByANDingServiceMaskTuple:(CLClientServiceTypeMaskTuple)tuple
{
  selfCopy = self;
  v4 = *(self + 5);
  v5 = *(self + 6);
  v6 = v4 & tuple.var0;
  v7 = v5 & tuple.var1;
  if ((v4 & tuple.var0) != v4 || v7 != v5)
  {
    v9 = [CLClientManagerAuthorizationContext alloc];
    LOBYTE(v11) = selfCopy[8];
    v10 = [(CLClientManagerAuthorizationContext *)v9 initWithInUseLevel:*(selfCopy + 5) registrationResult:*(selfCopy + 4) transientAwareRegistrationResult:*(selfCopy + 3) serviceMaskTuple:v6 diagnosticMask:v7 authorizedForWidgetUpdates:*(selfCopy + 3), v11];

    return v10;
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    LOBYTE(v5) = self->_inUseLevel == *(equal + 5) && self->_staticServiceMask == *(equal + 4) && self->_effectiveServiceMask == *(equal + 5) && self->_provisionalServiceMask == *(equal + 6) && self->_registrationResult == *(equal + 4) && self->_authorizedForWidgetUpdates == *(equal + 8) && self->_transientAwareRegistrationResult == *(equal + 3) && self->_diagnosticMask == *(equal + 3);
  }

  return v5;
}

- (id)getStateSummary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_inUseLevel), @"InUseLevel"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:", self->_effectiveServiceMask), @"EffectiveServiceMask"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:", self->_provisionalServiceMask), @"ProvisionalServiceMask"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_registrationResult), @"RegistrationResult"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_transientAwareRegistrationResult), @"TransientAwareRegistrationResult"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:", self->_diagnosticMask), @"DiagnosticMask"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_authorizedForWidgetUpdates), @"AuthorizedForWidgetUpdates"}];
  return dictionary;
}

@end