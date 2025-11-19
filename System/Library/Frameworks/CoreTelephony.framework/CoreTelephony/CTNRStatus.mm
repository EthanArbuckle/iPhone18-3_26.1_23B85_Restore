@interface CTNRStatus
+ (id)default;
- (BOOL)isEqual:(id)a3;
- (CTNRStatus)initWithCoder:(id)a3;
- (CTNRStatus)initWithSASwitchVisible:(BOOL)a3 saSwitchConfigurable:(BOOL)a4 saDisabledByBaseband:(BOOL)a5 saDisabledReasonMask:(unint64_t)a6 nsaDisabledByBaseband:(BOOL)a7 nsaDisabledReasonMask:(unint64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTNRStatus

+ (id)default
{
  v2 = [[CTNRStatus alloc] initWithSASwitchVisible:0 saSwitchConfigurable:0 saDisabledByBaseband:1 saDisabledReasonMask:0 nsaDisabledByBaseband:1 nsaDisabledReasonMask:0];

  return v2;
}

- (CTNRStatus)initWithSASwitchVisible:(BOOL)a3 saSwitchConfigurable:(BOOL)a4 saDisabledByBaseband:(BOOL)a5 saDisabledReasonMask:(unint64_t)a6 nsaDisabledByBaseband:(BOOL)a7 nsaDisabledReasonMask:(unint64_t)a8
{
  v15.receiver = self;
  v15.super_class = CTNRStatus;
  result = [(CTNRStatus *)&v15 init];
  if (result)
  {
    result->_saSwitchVisible = a3;
    result->_saSwitchConfigurable = a4;
    result->_saDisabled = a5;
    result->_nsaDisabled = a7;
    result->_saDisabledReasonMask = a6;
    result->_nsaDisabledReasonMask = a8;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTNRStatus *)self isSASwitchVisible], v5 == [(CTNRStatus *)v4 isSASwitchVisible]) && (v6 = [(CTNRStatus *)self isSASwitchConfigurable], v6 == [(CTNRStatus *)v4 isSASwitchConfigurable]) && (v7 = [(CTNRStatus *)self isSADisabled], v7 == [(CTNRStatus *)v4 isSADisabled]) && (v8 = [(CTNRStatus *)self saDisabledReasonMask], v8 == [(CTNRStatus *)v4 saDisabledReasonMask]) && (v9 = [(CTNRStatus *)self isNSADisabled], v9 == [(CTNRStatus *)v4 isNSADisabled]))
    {
      v12 = [(CTNRStatus *)self nsaDisabledReasonMask];
      v10 = v12 == [(CTNRStatus *)v4 nsaDisabledReasonMask];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CTNRStatus *)self isSASwitchVisible];
  v6 = [(CTNRStatus *)self isSASwitchConfigurable];
  v7 = [(CTNRStatus *)self isSADisabled];
  v8 = [(CTNRStatus *)self saDisabledReasonMask];
  v9 = [(CTNRStatus *)self isNSADisabled];
  v10 = [(CTNRStatus *)self nsaDisabledReasonMask];

  return [v4 initWithSASwitchVisible:v5 saSwitchConfigurable:v6 saDisabledByBaseband:v7 saDisabledReasonMask:v8 nsaDisabledByBaseband:v9 nsaDisabledReasonMask:v10];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CTNRStatus isSASwitchVisible](self forKey:{"isSASwitchVisible"), @"saSwitchVisible"}];
  [v4 encodeBool:-[CTNRStatus isSASwitchConfigurable](self forKey:{"isSASwitchConfigurable"), @"saSwitchConfigurable"}];
  [v4 encodeBool:-[CTNRStatus isSADisabled](self forKey:{"isSADisabled"), @"saDisabled"}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTNRStatus saDisabledReasonMask](self, "saDisabledReasonMask")}];
  [v4 encodeObject:v5 forKey:@"saDisabledReasonMask"];

  [v4 encodeBool:-[CTNRStatus isNSADisabled](self forKey:{"isNSADisabled"), @"nsaDisabled"}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTNRStatus nsaDisabledReasonMask](self, "nsaDisabledReasonMask")}];
  [v4 encodeObject:v6 forKey:@"nsaDisabledReasonMask"];
}

- (CTNRStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTNRStatus;
  v5 = [(CTNRStatus *)&v9 init];
  if (v5)
  {
    v5->_saSwitchVisible = [v4 decodeBoolForKey:@"saSwitchVisible"];
    v5->_saSwitchConfigurable = [v4 decodeBoolForKey:@"saSwitchConfigurable"];
    v5->_saDisabled = [v4 decodeBoolForKey:@"saDisabled"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"saDisabledReasonMask"];
    v5->_saDisabledReasonMask = [v6 unsignedIntegerValue];

    v5->_nsaDisabled = [v4 decodeBoolForKey:@"nsaDisabled"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nsaDisabledReasonMask"];
    v5->_nsaDisabledReasonMask = [v7 unsignedIntegerValue];
  }

  return v5;
}

@end