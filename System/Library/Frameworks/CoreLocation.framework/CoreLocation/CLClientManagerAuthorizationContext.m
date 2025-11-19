@interface CLClientManagerAuthorizationContext
- (BOOL)isEqual:(id)a3;
- (CLClientManagerAuthorizationContext)initWithInUseLevel:(int)a3 registrationResult:(int)a4 transientAwareRegistrationResult:(int)a5 serviceMaskTuple:(CLClientServiceTypeMaskTuple)a6 diagnosticMask:(unint64_t)a7 authorizedForWidgetUpdates:(BOOL)a8;
- (id)authorizationContextByANDingServiceMaskTuple:(CLClientServiceTypeMaskTuple)a3;
- (id)getStateSummary;
@end

@implementation CLClientManagerAuthorizationContext

- (CLClientManagerAuthorizationContext)initWithInUseLevel:(int)a3 registrationResult:(int)a4 transientAwareRegistrationResult:(int)a5 serviceMaskTuple:(CLClientServiceTypeMaskTuple)a6 diagnosticMask:(unint64_t)a7 authorizedForWidgetUpdates:(BOOL)a8
{
  var1 = a6.var1;
  var0 = a6.var0;
  v15.receiver = self;
  v15.super_class = CLClientManagerAuthorizationContext;
  result = [(CLClientManagerAuthorizationContext *)&v15 init];
  if (result)
  {
    result->_registrationResult = a4;
    result->_inUseLevel = a3;
    result->_effectiveServiceMask = var0;
    result->_provisionalServiceMask = var1;
    result->_transientAwareRegistrationResult = a5;
    result->_diagnosticMask = a7;
    result->_authorizedForWidgetUpdates = a8;
  }

  return result;
}

- (id)authorizationContextByANDingServiceMaskTuple:(CLClientServiceTypeMaskTuple)a3
{
  v3 = self;
  v4 = *(self + 5);
  v5 = *(self + 6);
  v6 = v4 & a3.var0;
  v7 = v5 & a3.var1;
  if ((v4 & a3.var0) != v4 || v7 != v5)
  {
    v9 = [CLClientManagerAuthorizationContext alloc];
    LOBYTE(v11) = v3[8];
    v10 = [(CLClientManagerAuthorizationContext *)v9 initWithInUseLevel:*(v3 + 5) registrationResult:*(v3 + 4) transientAwareRegistrationResult:*(v3 + 3) serviceMaskTuple:v6 diagnosticMask:v7 authorizedForWidgetUpdates:*(v3 + 3), v11];

    return v10;
  }

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    LOBYTE(v5) = self->_inUseLevel == *(a3 + 5) && self->_staticServiceMask == *(a3 + 4) && self->_effectiveServiceMask == *(a3 + 5) && self->_provisionalServiceMask == *(a3 + 6) && self->_registrationResult == *(a3 + 4) && self->_authorizedForWidgetUpdates == *(a3 + 8) && self->_transientAwareRegistrationResult == *(a3 + 3) && self->_diagnosticMask == *(a3 + 3);
  }

  return v5;
}

- (id)getStateSummary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_inUseLevel), @"InUseLevel"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:", self->_effectiveServiceMask), @"EffectiveServiceMask"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:", self->_provisionalServiceMask), @"ProvisionalServiceMask"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_registrationResult), @"RegistrationResult"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_transientAwareRegistrationResult), @"TransientAwareRegistrationResult"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:", self->_diagnosticMask), @"DiagnosticMask"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_authorizedForWidgetUpdates), @"AuthorizedForWidgetUpdates"}];
  return v3;
}

@end