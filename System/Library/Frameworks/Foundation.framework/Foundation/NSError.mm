@interface NSError
+ (NSError)errorWithDomain:(NSErrorDomain)domain code:(NSInteger)code userInfo:(NSDictionary *)dict;
+ (id)_cocoaErrorWithCode:(int64_t)code path:(id)path url:(id)url underlying:(id)underlying variant:(id)variant source:(id)source destination:(id)destination;
+ (id)_readCorruptErrorWithFormat:(id)format;
+ (id)_web_errorWithDomain:(id)domain code:(int64_t)code URL:(id)l;
+ (id)_web_errorWithDomain:(id)domain code:(int64_t)code failingURL:(id)l;
+ (void)_registerBuiltInFormatters;
+ (void)_registerFormatter:(void *)formatter forErrorKey:(id)key parameters:(const char *)parameters;
+ (void)_web_addErrorsWithCodesAndDescriptions:(id)descriptions inDomain:(id)domain;
+ (void)setUserInfoValueProviderForDomain:(NSErrorDomain)errorDomain provider:(void *)provider;
+ (void)userInfoValueProviderForDomain:(NSErrorDomain)errorDomain;
- (BOOL)_web_errorIsInDomain:(id)domain;
- (BOOL)isEqual:(id)equal;
- (NSArray)localizedRecoveryOptions;
- (NSArray)underlyingErrors;
- (NSDictionary)userInfo;
- (NSError)init;
- (NSError)initWithCoder:(id)coder;
- (NSError)initWithDomain:(NSErrorDomain)domain code:(NSInteger)code userInfo:(NSDictionary *)dict;
- (NSErrorDomain)domain;
- (NSString)helpAnchor;
- (NSString)localizedDescription;
- (NSString)localizedFailureReason;
- (NSString)localizedRecoverySuggestion;
- (__CFString)_retainedUserInfoCallBackForKey:(id)key;
- (id)_callStackReturnAddresses;
- (id)_cocoaErrorString:(id)string;
- (id)_cocoaErrorString:(id)string fromBundle:(id)bundle tableName:(id)name;
- (id)_cocoaErrorStringWithKind:(id)kind;
- (id)_cocoaErrorStringWithKind:(id)kind variant:(id)variant;
- (id)_formatCocoaErrorString:(id)string parameters:(const char *)parameters applicableFormatters:(id *)formatters count:(int64_t)count;
- (id)_web_failingURL;
- (id)_web_initWithDomain:(id)domain code:(int64_t)code failingURL:(id)l;
- (id)_web_initWithDomain_nowarn:(id)domain_nowarn code:(int64_t)code URL:(id)l;
- (id)_web_localizedDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)recoveryAttempter;
- (id)redactedDescription;
- (id)replacementObjectForPortCoder:(id)coder;
- (int64_t)_collectApplicableUserInfoFormatters:(id *)formatters max:(int64_t)max;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSError

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSError;
  [(NSError *)&v3 dealloc];
}

- (NSDictionary)userInfo
{
  if (self->_userInfo)
  {
    return self->_userInfo;
  }

  if (!_CFExecutableLinkedOnOrAfter())
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DF20];

  return [v4 dictionary];
}

- (NSErrorDomain)domain
{
  v2 = self->_domain;

  return v2;
}

- (id)description
{
  DebugDescription = _CFErrorCreateDebugDescription();

  return DebugDescription;
}

- (id)redactedDescription
{
  RedactedDescription = _CFErrorCreateRedactedDescription();

  return RedactedDescription;
}

- (NSString)localizedDescription
{
  v3 = [(NSDictionary *)[(NSError *)self userInfo] objectForKey:@"NSLocalizedDescription"];
  if (v3)
  {
    LocalizedDescription = [v3 copy];
  }

  else
  {
    LocalizedDescription = _CFErrorCreateLocalizedDescription();
    if (!LocalizedDescription)
    {
      return +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"The operation couldn\\U2019t be completed. (%1$@ error %2$ld.)" value:&stru_1EEEFDF90 table:@"FoundationErrors"], -[NSError domain](self, "domain"), -[NSError code](self, "code"));
    }
  }

  return LocalizedDescription;
}

- (id)_callStackReturnAddresses
{
  v2 = _CFErrorCopyCallStackReturnAddresses();

  return v2;
}

+ (void)_registerBuiltInFormatters
{
  if (_registerBuiltInFormatters_builtInsRegistered != -1)
  {
    dispatch_once(&_registerBuiltInFormatters_builtInsRegistered, &__block_literal_global_8);
  }
}

uint64_t __53__NSError_NSErrorPrivate___registerBuiltInFormatters__block_invoke()
{
  [NSError _registerFormatter:pathComponentFromPath forErrorKey:@"NSDestinationFilePath" parameters:"p"];
  [NSError _registerFormatter:pathComponentFromPath forErrorKey:@"NSFilePath" parameters:"dfv"];
  [NSError _registerFormatter:pathComponentFromURL forErrorKey:@"NSURL" parameters:"dfuv"];
  [NSError _registerFormatter:encodingName forErrorKey:@"NSStringEncoding" parameters:"e"];
  [NSError _registerFormatter:validationValue forErrorKey:@"NSInvalidValue" parameters:"a"];
  [NSError _registerFormatter:validationValue forErrorKey:@"NSMinimumValidValue" parameters:"n"];

  return [NSError _registerFormatter:validationValue forErrorKey:@"NSMaximumValidValue" parameters:"x"];
}

- (NSString)localizedFailureReason
{
  v2 = [(NSDictionary *)[(NSError *)self userInfo] objectForKey:@"NSLocalizedFailureReason"];
  if (v2)
  {
    result = [v2 copy];
  }

  else
  {
    result = _CFErrorCreateLocalizedFailureReason();
    if (!result)
    {
      return result;
    }
  }

  return result;
}

- (NSArray)underlyingErrors
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)[(NSError *)self userInfo] objectForKey:@"NSUnderlyingError"];
  v4 = [(NSDictionary *)[(NSError *)self userInfo] objectForKey:@"NSMultipleUnderlyingErrorsKey"];
  v5 = [(NSDictionary *)[(NSError *)self userInfo] objectForKey:@"NSDetailedErrors"];
  array = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSArray *)array addObject:v3];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v4 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(NSArray *)array addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v4 countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v5 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v5);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(NSArray *)array addObject:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v5 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v13);
  }

  return array;
}

- (NSError)init
{
  v7 = *MEMORY[0x1E69E9840];
  if ((init_warned & 1) == 0)
  {
    init_warned = 1;
    v3 = _NSOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18075C000, v3, OS_LOG_TYPE_ERROR, "[NSError init] called; this results in an invalid NSError instance. It will raise an exception in a future release. Please call errorWithDomain:code:userInfo: or initWithDomain:code:userInfo:. This message shown only once.", buf, 2u);
    }
  }

  v5.receiver = self;
  v5.super_class = NSError;
  return [(NSError *)&v5 init];
}

- (NSError)initWithDomain:(NSErrorDomain)domain code:(NSInteger)code userInfo:(NSDictionary *)dict
{
  v16 = *MEMORY[0x1E69E9840];
  if (!domain)
  {
    v13 = objc_opt_class();
    v14 = [NSString stringWithFormat:@"Invalid domain=nil in [%@ %s]", v13, sel_getName(a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0]);
  }

  v15.receiver = self;
  v15.super_class = NSError;
  v9 = [(NSError *)&v15 init];
  if (v9)
  {
    v10 = [(NSString *)domain copy];
    v9->_code = code;
    v9->_domain = v10;
    v9->_userInfo = [(NSDictionary *)dict copy];
    _CFErrorSetCallStackReturnAddresses();
  }

  return v9;
}

+ (NSError)errorWithDomain:(NSErrorDomain)domain code:(NSInteger)code userInfo:(NSDictionary *)dict
{
  v5 = [[self alloc] initWithDomain:domain code:code userInfo:dict];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    goto LABEL_11;
  }

  if (!equal || (objc_opt_isKindOfClass() & 1) == 0 || (v5 = -[NSError code](self, "code"), v5 != [equal code]))
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  v6 = -[NSString isEqual:](-[NSError domain](self, "domain"), "isEqual:", [equal domain]);
  if (v6)
  {
    userInfo = [(NSError *)self userInfo];
    userInfo2 = [equal userInfo];
    if (userInfo != userInfo2)
    {

      LOBYTE(v6) = [(NSDictionary *)userInfo isEqual:userInfo2];
      return v6;
    }

LABEL_11:
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)_cocoaErrorStringWithKind:(id)kind variant:(id)variant
{
  v7 = [(NSString *)[NSMutableString alloc] initWithFormat:@"Err%ld", [(NSError *)self code]];
  v8 = v7;
  if (kind)
  {
    [(NSMutableString *)v7 appendFormat:@"-%@", kind];
  }

  if (variant)
  {
    [(NSMutableString *)v8 appendFormat:@"(%@)", variant];
  }

  v9 = [(NSError *)self _cocoaErrorString:v8];

  return v9;
}

- (id)_cocoaErrorStringWithKind:(id)kind
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(NSDictionary *)[(NSError *)self userInfo] objectForKey:@"NSUserStringVariant"];
  if (!v5)
  {
    return [(NSError *)self _cocoaErrorStringWithKind:kind variant:0];
  }

  v6 = v5;
  if (_NSIsNSString() && [v6 containsString:{@", "}])
  {
    v6 = _variantPermutations([v6 componentsSeparatedByString:{@", "}]);
  }

  if (!_NSIsNSArray())
  {
    result = [(NSError *)self _cocoaErrorStringWithKind:kind variant:v6];
    if (result)
    {
      return result;
    }

    return [(NSError *)self _cocoaErrorStringWithKind:kind variant:0];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v7)
  {
    return [(NSError *)self _cocoaErrorStringWithKind:kind variant:0];
  }

  v8 = v7;
  v9 = *v14;
LABEL_8:
  v10 = 0;
  while (1)
  {
    if (*v14 != v9)
    {
      objc_enumerationMutation(v6);
    }

    result = [(NSError *)self _cocoaErrorStringWithKind:kind variant:*(*(&v13 + 1) + 8 * v10)];
    if (result)
    {
      return result;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v8)
      {
        goto LABEL_8;
      }

      return [(NSError *)self _cocoaErrorStringWithKind:kind variant:0];
    }
  }
}

- (__CFString)_retainedUserInfoCallBackForKey:(id)key
{
  _CFAutoreleasePoolPush();
  if ([key isEqual:@"NSLocalizedDescription"])
  {
    v5 = [(NSError *)self _cocoaErrorStringWithKind:0];
    if (v5)
    {
      v6 = v5;
LABEL_9:
      CFRetain(v6);
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if ([key isEqual:@"NSLocalizedFailureReason"])
  {
LABEL_5:
    v7 = @"C";
    goto LABEL_8;
  }

  if (![key isEqual:@"NSLocalizedRecoverySuggestion"])
  {
    v6 = 0;
    goto LABEL_10;
  }

  v7 = @"R";
LABEL_8:
  v6 = [(NSError *)self _cocoaErrorStringWithKind:v7];
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  _CFAutoreleasePoolPop();
  return v6;
}

- (NSString)localizedRecoverySuggestion
{
  v2 = [(NSDictionary *)[(NSError *)self userInfo] objectForKey:@"NSLocalizedRecoverySuggestion"];
  if (v2)
  {
    result = [v2 copy];
  }

  else
  {
    result = _CFErrorCreateLocalizedRecoverySuggestion();
    if (!result)
    {
      return result;
    }
  }

  return result;
}

- (NSArray)localizedRecoveryOptions
{
  v3 = [(NSDictionary *)[(NSError *)self userInfo] objectForKey:@"NSLocalizedRecoveryOptions"];
  if (v3)
  {
    v4 = v3;

    return v4;
  }

  else
  {
    [(NSError *)self domain];
    v6 = CFErrorCopyCallBackBlockForDomain();
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    v8 = (*(v6 + 16))(v6, self, @"NSLocalizedRecoveryOptions");
    CFRelease(v7);
    if (!v8)
    {
      return 0;
    }

    return v8;
  }
}

- (id)recoveryAttempter
{
  v3 = [(NSDictionary *)[(NSError *)self userInfo] objectForKey:@"NSRecoveryAttempter"];
  if (v3)
  {
    return v3;
  }

  [(NSError *)self domain];
  v5 = CFErrorCopyCallBackBlockForDomain();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v4 = (*(v5 + 16))(v5, self, @"NSRecoveryAttempter");
  CFRelease(v6);
  if (!v4)
  {
    return 0;
  }

  return v4;
}

- (NSString)helpAnchor
{
  v3 = [(NSDictionary *)[(NSError *)self userInfo] objectForKey:@"NSHelpAnchor"];
  if (v3)
  {
    return v3;
  }

  [(NSError *)self domain];
  v5 = CFErrorCopyCallBackBlockForDomain();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v4 = (*(v5 + 16))(v5, self, @"NSHelpAnchor");
  CFRelease(v6);
  if (!v4)
  {
    return 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  userInfo = [(NSError *)self userInfo];
  if (![(NSDictionary *)userInfo count])
  {
    userInfo = 0;
  }

  v6 = objc_opt_class();
  if (v6 == NSCFError)
  {
    v9 = [NSError allocWithZone:zone];
    domain = [(NSError *)self domain];
    code = [(NSError *)self code];

    return [(NSError *)v9 initWithDomain:domain code:code userInfo:userInfo];
  }

  else
  {
    v7 = [(__objc2_class *)v6 allocWithZone:zone];
    v7->vtable = [(NSString *)[(NSError *)self domain] copy];
    v7->cache = [(NSError *)self code];
    v7->info = [(NSDictionary *)userInfo copy];
    [(NSError *)self _callStackReturnAddresses];
    _CFErrorSetCallStackReturnAddresses();
    return v7;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v8[1] = *MEMORY[0x1E69E9840];
  userInfo = [(NSError *)self userInfo];
  v8[0] = userInfo;
  if (![(NSDictionary *)userInfo count])
  {
    userInfo = 0;
    v8[0] = 0;
  }

  if ([coder allowsKeyedCoding])
  {
    [coder encodeInteger:-[NSError code](self forKey:{"code"), @"NSCode"}];
    [coder encodeObject:-[NSError domain](self forKey:{"domain"), @"NSDomain"}];

    [coder encodeObject:userInfo forKey:@"NSUserInfo"];
  }

  else
  {
    code = [(NSError *)self code];
    domain = [(NSError *)self domain];
    [coder encodeValuesOfObjCTypes:{"i@@", &code, &domain, v8}];
  }
}

- (NSError)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = NSError;
  v5 = [(NSError *)&v17 init];
  v6 = [objc_msgSend(coder "allowedClasses")];
  if (![coder allowsKeyedCoding])
  {
    v16 = 0;
    p_userInfo = &v5->_userInfo;
    [coder decodeValuesOfObjCTypes:{"i@@", &v16, &v5->_domain, &v5->_userInfo}];
    v5->_code = v16;
    if (!v5->_userInfo)
    {
      return v5;
    }

    if (_NSIsNSDictionary())
    {
      userInfo = *p_userInfo;
      if (!*p_userInfo)
      {
        return v5;
      }

      goto LABEL_9;
    }

    goto LABEL_18;
  }

  if (([coder containsValueForKey:@"NSCode"] & 1) == 0)
  {
    v14 = _NSMethodExceptionProem(v5, a2);
    v11 = @"%@: missing error code";
LABEL_19:
    v10 = [NSError _readCorruptErrorWithFormat:v11, v14, v15];
    goto LABEL_20;
  }

  v5->_code = [coder decodeIntegerForKey:@"NSCode"];
  if ([coder error])
  {
    goto LABEL_5;
  }

  v5->_domain = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSDomain"];
  if ([coder error])
  {
    goto LABEL_5;
  }

  if (!v5->_domain)
  {
    v14 = _NSMethodExceptionProem(v5, a2);
    v11 = @"%@: missing domain string";
    goto LABEL_19;
  }

  v5->_userInfo = [coder decodeObjectOfClasses:v6 forKey:@"NSUserInfo"];
  if ([coder error])
  {
LABEL_5:

    return 0;
  }

  if (!v5->_userInfo)
  {
    return v5;
  }

  if ((_NSIsNSDictionary() & 1) == 0)
  {
LABEL_18:
    v14 = _NSMethodExceptionProem(v5, a2);
    v11 = @"%@: userInfo dictionary found in archive was not a dictionary";
    goto LABEL_19;
  }

  userInfo = v5->_userInfo;
  if (!userInfo)
  {
    return v5;
  }

LABEL_9:
  v9 = _validateKnownUserInfoKeyTypes(userInfo);
  if (v9)
  {
    v10 = [NSError _readCorruptErrorWithFormat:@"%@: userInfo dictionary found in archive contained an invalid value type for key %@", _NSMethodExceptionProem(v5, a2), v9];
LABEL_20:
    v12 = v10;

    [coder failWithError:v12];
    return 0;
  }

  return v5;
}

+ (void)setUserInfoValueProviderForDomain:(NSErrorDomain)errorDomain provider:(void *)provider
{
  if (!errorDomain)
  {
    v8 = [NSString stringWithFormat:@"%@: nil domain argument", _NSMethodExceptionProem(self, a2)];
    goto LABEL_8;
  }

  if ([(NSString *)errorDomain isEqual:@"NSCocoaErrorDomain"])
  {
    v8 = [NSString stringWithFormat:@"%@: Cannot replace provider for NSCocoaErrorDomain", _NSMethodExceptionProem(self, a2)];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0]);
  }

  MEMORY[0x1EEDB6F98](errorDomain, provider);
}

+ (void)userInfoValueProviderForDomain:(NSErrorDomain)errorDomain
{
  v3 = CFErrorCopyCallBackBlockForDomain();

  return v3;
}

+ (id)_cocoaErrorWithCode:(int64_t)code path:(id)path url:(id)url underlying:(id)underlying variant:(id)variant source:(id)source destination:(id)destination
{
  v19[1] = *MEMORY[0x1E69E9840];
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = v15;
  if (path)
  {
    [v15 setObject:path forKeyedSubscript:@"NSFilePath"];
  }

  if (url)
  {
    [v16 setObject:url forKeyedSubscript:@"NSURL"];
  }

  if (underlying)
  {
    [v16 setObject:underlying forKeyedSubscript:@"NSUnderlyingError"];
  }

  if (variant)
  {
    v19[0] = variant;
    [v16 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v19, 1), @"NSUserStringVariant"}];
  }

  if (source)
  {
    [v16 setObject:source forKeyedSubscript:@"NSSourceFilePathErrorKey"];
  }

  if (destination)
  {
    [v16 setObject:destination forKeyedSubscript:@"NSDestinationFilePath"];
  }

  v17 = [[NSError alloc] initWithDomain:@"NSCocoaErrorDomain" code:code userInfo:v16];

  return v17;
}

+ (void)_web_addErrorsWithCodesAndDescriptions:(id)descriptions inDomain:(id)domain
{
  pthread_once(&initControl, WebNSErrorExtrasInit);
  descriptionsCopy = descriptions;

  [descriptionsCopy setObject:descriptions forKey:domain];
}

+ (id)_web_errorWithDomain:(id)domain code:(int64_t)code failingURL:(id)l
{
  v5 = [[self alloc] _web_initWithDomain:domain code:code failingURL:l];

  return v5;
}

+ (id)_web_errorWithDomain:(id)domain code:(int64_t)code URL:(id)l
{
  v5 = [[self alloc] _web_initWithDomain_nowarn:domain code:code URL:l];

  return v5;
}

- (id)_web_initWithDomain:(id)domain code:(int64_t)code failingURL:(id)l
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = v9;
  if (l)
  {
    [v9 setObject:l forKey:@"NSErrorFailingURLStringKey"];
    l = [MEMORY[0x1E695DFF8] URLWithString:l];
    if (l)
    {
      [v10 setObject:l forKey:@"NSErrorFailingURLKey"];
    }
  }

  [l host];
  v11 = localizedDescriptionForError(domain, code);
  if (v11)
  {
    [v10 setObject:v11 forKey:@"NSLocalizedDescription"];
  }

  if ([domain isEqualToString:@"NSURLErrorDomain"])
  {
    LocalizedFailureReason = _CFNetworkErrorGetLocalizedFailureReason();
    if (LocalizedFailureReason)
    {
      [v10 setObject:LocalizedFailureReason forKey:@"NSLocalizedFailureReason"];
    }
  }

  if ([domain isEqualToString:@"NSURLErrorDomain"])
  {
    LocalizedRecoverySuggestion = _CFNetworkErrorGetLocalizedRecoverySuggestion();
    if (LocalizedRecoverySuggestion)
    {
      [v10 setObject:LocalizedRecoverySuggestion forKey:@"NSLocalizedRecoverySuggestion"];
    }
  }

  if ([v10 count])
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  return [(NSError *)self initWithDomain:domain code:code userInfo:v14];
}

- (BOOL)_web_errorIsInDomain:(id)domain
{
  domain = [(NSError *)self domain];

  return [(NSString *)domain isEqualToString:domain];
}

- (id)_web_localizedDescription
{
  _web_failingURL = [(NSError *)self _web_failingURL];
  if (_web_failingURL)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:_web_failingURL];
  }

  else
  {
    v4 = 0;
  }

  domain = [(NSError *)self domain];
  code = [(NSError *)self code];
  [v4 host];
  result = localizedDescriptionForError(domain, code);
  if (!result)
  {

    return [(NSError *)self localizedDescription];
  }

  return result;
}

- (id)_web_failingURL
{
  v2 = [-[NSDictionary objectForKey:](-[NSError userInfo](self "userInfo")];

  return v2;
}

- (id)_web_initWithDomain_nowarn:(id)domain_nowarn code:(int64_t)code URL:(id)l
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = v9;
  if (l)
  {
    [v9 setObject:l forKey:@"NSErrorFailingURLKey"];
    [v10 setObject:objc_msgSend(l forKey:{"absoluteString"), @"NSErrorFailingURLStringKey"}];
  }

  [l host];
  v11 = localizedDescriptionForError(domain_nowarn, code);
  if (v11)
  {
    [v10 setObject:v11 forKey:@"NSLocalizedDescription"];
  }

  if ([domain_nowarn isEqualToString:@"NSURLErrorDomain"])
  {
    LocalizedFailureReason = _CFNetworkErrorGetLocalizedFailureReason();
    if (LocalizedFailureReason)
    {
      [v10 setObject:LocalizedFailureReason forKey:@"NSLocalizedFailureReason"];
    }
  }

  if ([domain_nowarn isEqualToString:@"NSURLErrorDomain"])
  {
    LocalizedRecoverySuggestion = _CFNetworkErrorGetLocalizedRecoverySuggestion();
    if (LocalizedRecoverySuggestion)
    {
      [v10 setObject:LocalizedRecoverySuggestion forKey:@"NSLocalizedRecoverySuggestion"];
    }
  }

  if ([v10 count])
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  return [(NSError *)self initWithDomain:domain_nowarn code:code userInfo:v14];
}

+ (void)_registerFormatter:(void *)formatter forErrorKey:(id)key parameters:(const char *)parameters
{
  if (!qword_1ED43E6C0)
  {
    v8 = NSCreateMapTableWithZone(&NSObjectMapKeyCallBacks, &NSOwnedPointerMapValueCallBacks, formatter, key);
    v9 = 0;
    atomic_compare_exchange_strong(&qword_1ED43E6C0, &v9, v8);
    if (v9)
    {
      NSFreeMapTable(v8);
    }
  }

  v10 = malloc_type_malloc(0x18uLL, 0x1080040622C3295uLL);
  *v10 = formatter;
  v10[1] = [key copy];
  *(v10 + 4) = 0;
  v11 = *parameters;
  if (*parameters)
  {
    v12 = 0;
    v13 = parameters + 1;
    do
    {
      v12 |= 1 << (v11 - 97);
      *(v10 + 4) = v12;
      v14 = *v13++;
      v11 = v14;
    }

    while (v14);
  }

  os_unfair_lock_lock(&_MergedGlobals_3);
  if (NSMapGet(qword_1ED43E6C0, key))
  {
    free(v10);
  }

  else
  {
    NSMapInsert(qword_1ED43E6C0, key, v10);
  }

  os_unfair_lock_unlock(&_MergedGlobals_3);
}

- (int64_t)_collectApplicableUserInfoFormatters:(id *)formatters max:(int64_t)max
{
  +[NSError _registerBuiltInFormatters];
  if (qword_1ED43E6C0)
  {
    keyEnumerator = [(NSDictionary *)[(NSError *)self userInfo] keyEnumerator];
    nextObject = [(NSEnumerator *)keyEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v10 = 0;
      while (1)
      {
        os_unfair_lock_lock(&_MergedGlobals_3);
        v11 = NSMapGet(qword_1ED43E6C0, nextObject2);
        os_unfair_lock_unlock(&_MergedGlobals_3);
        if (v11)
        {
          if (v10 == max)
          {
            return -1;
          }

          formatters[v10++] = v11;
        }

        nextObject2 = [(NSEnumerator *)keyEnumerator nextObject];
        if (!nextObject2)
        {
          return v10;
        }
      }
    }
  }

  return 0;
}

- (id)_formatCocoaErrorString:(id)string parameters:(const char *)parameters applicableFormatters:(id *)formatters count:(int64_t)count
{
  stringCopy = string;
  v27 = *MEMORY[0x1E69E9840];
  if (string)
  {
    if (parameters)
    {
      v10 = strlen(parameters);
      if (v10 >= 1)
      {
        v11 = v10;
        v21 = stringCopy;
        parametersCopy = parameters;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        userInfo = [(NSError *)self userInfo];
        v13 = 0;
        while (1)
        {
          if (count >= 1)
          {
            formattersCopy = formatters;
            v15 = parametersCopy[v13];
            v16 = 1 << (parametersCopy[v13] - 97);
            countCopy = count;
            do
            {
              if ((*(*formattersCopy + 4) & v16) != 0)
              {
                v18 = [(NSDictionary *)userInfo objectForKey:*(*formattersCopy + 1)];
                if (v18)
                {
                  v19 = (**formattersCopy)(v18, self, v15);
                  if (v19)
                  {
                    *(&v24 + v13) = v19;
                  }
                }
              }

              ++formattersCopy;
              --countCopy;
            }

            while (countCopy);
          }

          if (!*(&v24 + v13))
          {
            break;
          }

          if (++v13 == v11)
          {
            return [NSString stringWithValidatedFormat:v21 validFormatSpecifiers:@"%@%@%@%@%@%@" error:0, v24, v25, v26];
          }
        }

        return 0;
      }
    }
  }

  return stringCopy;
}

- (id)_cocoaErrorString:(id)string fromBundle:(id)bundle tableName:(id)name
{
  nameCopy = name;
  v41 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  if (!bundle)
  {
    return 0;
  }

  selfCopy = self;
  memset(v40, 0, sizeof(v40));
  v7 = [(NSError *)self _collectApplicableUserInfoFormatters:v40 max:12];
  if (v7)
  {
    v34 = v7;
    v8 = 0;
    if (v7 >= 1)
    {
      v9 = v40;
      v10 = v7;
      do
      {
        v11 = *v9++;
        v8 |= *(v11 + 16);
        --v10;
      }

      while (v10);
    }

    v12 = 0;
    v13 = 0;
    do
    {
      if ((v8 >> v12))
      {
        v39[v13++] = v12 + 97;
      }

      if (v12 > 0x18)
      {
        break;
      }

      ++v12;
    }

    while (v13 < 6);
    v35 = selfCopy;
    v33[1] = v33;
    v14 = 1 << v13;
    v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v15 = 0;
    if (1 << v13 >= 2)
    {
      v16 = 1;
      do
      {
        if (v16 < 2 * v16)
        {
          v17 = v33 - (((1 << v13) + 15) & 0xFFFFFFFFFFFFFFF0);
          v18 = v16;
          do
          {
            v17[v16] = *v17 + 1;
            ++v17;
            --v18;
          }

          while (v18);
          v16 *= 2;
        }
      }

      while (v16 < v14);
    }

    if (v13 >= 1)
    {
      if (v14 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = 1 << v13;
      }

      v36 = (v13 + 16) & 0xFFFFFFFFFFFFFFF0;
      v20 = v13;
      do
      {
        if (v13 != 31)
        {
          for (i = 0; i != v19; ++i)
          {
            if (v20 == v15[i])
            {
              v22 = v33 - v36;
              v23 = v33 - v36;
              if (i)
              {
                v24 = v39;
                v25 = i;
                v23 = v33 - v36;
                do
                {
                  if (v25)
                  {
                    *v23++ = *v24;
                  }

                  ++v24;
                  v26 = v25 > 1;
                  v25 >>= 1;
                }

                while (v26);
              }

              *v23 = 0;
              stringCopy = string;
              v28 = [NSString stringWithFormat:@"%@.%s", string, v22];
              v29 = [bundleCopy localizedStringForKey:v28 value:0 table:nameCopy];
              if (v29)
              {
                v30 = v29;
                if (([v29 isEqual:v28] & 1) == 0)
                {
                  result = [(NSError *)v35 _formatCocoaErrorString:v30 parameters:v22 applicableFormatters:v40 count:v34];
                  if (result)
                  {
                    return result;
                  }
                }
              }

              string = stringCopy;
            }
          }
        }

        v26 = v20-- < 2;
      }

      while (!v26);
    }

    selfCopy = v35;
  }

  result = [bundleCopy localizedStringForKey:string value:0 table:nameCopy];
  if (result)
  {
    v32 = result;
    if ([result isEqual:string])
    {
      return 0;
    }

    return [(NSError *)selfCopy _formatCocoaErrorString:v32 parameters:0 applicableFormatters:0 count:0];
  }

  return result;
}

- (id)_cocoaErrorString:(id)string
{
  code = [(NSError *)self code];
  if (code >= 0x10000 || (result = [(NSError *)self _cocoaErrorString:string fromBundle:_NSFoundationBundle() tableName:@"FoundationErrors"]) == 0)
  {
    if ((code & 0xFFFFFFFFFFFF0000) != 0x20000 && (code - 1024) > 0x3FE)
    {
      return 0;
    }

    result = [(NSError *)self _cocoaErrorString:string fromBundle:[NSBundle tableName:"bundleWithIdentifier:" bundleWithIdentifier:?], @"CoreDataErrors"];
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

+ (id)_readCorruptErrorWithFormat:(id)format
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [[NSString alloc] initWithFormat:format arguments:&v9];
  if (v3)
  {
    v4 = v3;
    v7 = @"NSDebugDescription";
    v8[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return [NSError errorWithDomain:@"NSCocoaErrorDomain" code:4864 userInfo:v5, &v9];
}

- (id)replacementObjectForPortCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  if ([coder isByref])
  {
    v6.receiver = self;
    v6.super_class = NSError;
    return [(NSError *)&v6 replacementObjectForPortCoder:coder];
  }

  return self;
}

@end