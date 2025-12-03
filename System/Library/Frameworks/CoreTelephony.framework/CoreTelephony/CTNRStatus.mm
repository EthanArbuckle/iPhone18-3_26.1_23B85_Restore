@interface CTNRStatus
+ (id)default;
- (BOOL)isEqual:(id)equal;
- (CTNRStatus)initWithCoder:(id)coder;
- (CTNRStatus)initWithSASwitchVisible:(BOOL)visible saSwitchConfigurable:(BOOL)configurable saDisabledByBaseband:(BOOL)baseband saDisabledReasonMask:(unint64_t)mask nsaDisabledByBaseband:(BOOL)byBaseband nsaDisabledReasonMask:(unint64_t)reasonMask;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTNRStatus

+ (id)default
{
  v2 = [[CTNRStatus alloc] initWithSASwitchVisible:0 saSwitchConfigurable:0 saDisabledByBaseband:1 saDisabledReasonMask:0 nsaDisabledByBaseband:1 nsaDisabledReasonMask:0];

  return v2;
}

- (CTNRStatus)initWithSASwitchVisible:(BOOL)visible saSwitchConfigurable:(BOOL)configurable saDisabledByBaseband:(BOOL)baseband saDisabledReasonMask:(unint64_t)mask nsaDisabledByBaseband:(BOOL)byBaseband nsaDisabledReasonMask:(unint64_t)reasonMask
{
  v15.receiver = self;
  v15.super_class = CTNRStatus;
  result = [(CTNRStatus *)&v15 init];
  if (result)
  {
    result->_saSwitchVisible = visible;
    result->_saSwitchConfigurable = configurable;
    result->_saDisabled = baseband;
    result->_nsaDisabled = byBaseband;
    result->_saDisabledReasonMask = mask;
    result->_nsaDisabledReasonMask = reasonMask;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[CTNRStatus isSASwitchVisible](self, "isSASwitchVisible")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CTNRStatus isSASwitchConfigurable](self, "isSASwitchConfigurable")}];
  [v3 appendFormat:@" SA switch=(visible:%@, configurable:%@)", v4, v5];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CTNRStatus isSADisabled](self, "isSADisabled")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTNRStatus saDisabledReasonMask](self, "saDisabledReasonMask")}];
  [v3 appendFormat:@" SA=(disabled:%@, reasonMask:%@)", v6, v7];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CTNRStatus isNSADisabled](self, "isNSADisabled")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTNRStatus nsaDisabledReasonMask](self, "nsaDisabledReasonMask")}];
  [v3 appendFormat:@" NSA=(disabled:%@, reasonMask:%@)", v8, v9];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTNRStatus *)self isSASwitchVisible], v5 == [(CTNRStatus *)equalCopy isSASwitchVisible]) && (v6 = [(CTNRStatus *)self isSASwitchConfigurable], v6 == [(CTNRStatus *)equalCopy isSASwitchConfigurable]) && (v7 = [(CTNRStatus *)self isSADisabled], v7 == [(CTNRStatus *)equalCopy isSADisabled]) && (v8 = [(CTNRStatus *)self saDisabledReasonMask], v8 == [(CTNRStatus *)equalCopy saDisabledReasonMask]) && (v9 = [(CTNRStatus *)self isNSADisabled], v9 == [(CTNRStatus *)equalCopy isNSADisabled]))
    {
      nsaDisabledReasonMask = [(CTNRStatus *)self nsaDisabledReasonMask];
      v10 = nsaDisabledReasonMask == [(CTNRStatus *)equalCopy nsaDisabledReasonMask];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  isSASwitchVisible = [(CTNRStatus *)self isSASwitchVisible];
  isSASwitchConfigurable = [(CTNRStatus *)self isSASwitchConfigurable];
  isSADisabled = [(CTNRStatus *)self isSADisabled];
  saDisabledReasonMask = [(CTNRStatus *)self saDisabledReasonMask];
  isNSADisabled = [(CTNRStatus *)self isNSADisabled];
  nsaDisabledReasonMask = [(CTNRStatus *)self nsaDisabledReasonMask];

  return [v4 initWithSASwitchVisible:isSASwitchVisible saSwitchConfigurable:isSASwitchConfigurable saDisabledByBaseband:isSADisabled saDisabledReasonMask:saDisabledReasonMask nsaDisabledByBaseband:isNSADisabled nsaDisabledReasonMask:nsaDisabledReasonMask];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CTNRStatus isSASwitchVisible](self forKey:{"isSASwitchVisible"), @"saSwitchVisible"}];
  [coderCopy encodeBool:-[CTNRStatus isSASwitchConfigurable](self forKey:{"isSASwitchConfigurable"), @"saSwitchConfigurable"}];
  [coderCopy encodeBool:-[CTNRStatus isSADisabled](self forKey:{"isSADisabled"), @"saDisabled"}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTNRStatus saDisabledReasonMask](self, "saDisabledReasonMask")}];
  [coderCopy encodeObject:v5 forKey:@"saDisabledReasonMask"];

  [coderCopy encodeBool:-[CTNRStatus isNSADisabled](self forKey:{"isNSADisabled"), @"nsaDisabled"}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTNRStatus nsaDisabledReasonMask](self, "nsaDisabledReasonMask")}];
  [coderCopy encodeObject:v6 forKey:@"nsaDisabledReasonMask"];
}

- (CTNRStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTNRStatus;
  v5 = [(CTNRStatus *)&v9 init];
  if (v5)
  {
    v5->_saSwitchVisible = [coderCopy decodeBoolForKey:@"saSwitchVisible"];
    v5->_saSwitchConfigurable = [coderCopy decodeBoolForKey:@"saSwitchConfigurable"];
    v5->_saDisabled = [coderCopy decodeBoolForKey:@"saDisabled"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"saDisabledReasonMask"];
    v5->_saDisabledReasonMask = [v6 unsignedIntegerValue];

    v5->_nsaDisabled = [coderCopy decodeBoolForKey:@"nsaDisabled"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nsaDisabledReasonMask"];
    v5->_nsaDisabledReasonMask = [v7 unsignedIntegerValue];
  }

  return v5;
}

@end