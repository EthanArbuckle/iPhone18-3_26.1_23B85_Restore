@interface CNPhoneNumber
+ (BOOL)_isCountryCodeForNorthAmericanDialingPlan:(id)a3;
+ (CNPhoneNumber)phoneNumberWithCopiedStringValue:(id)a3;
+ (CNPhoneNumber)phoneNumberWithDigits:(id)a3 countryCode:(id)a4;
+ (CNPhoneNumber)phoneNumberWithStringValue:(NSString *)stringValue;
+ (__CFPhoneNumber)createCFPhoneNumberForStringValue:(id)a3 countryCode:(id)a4;
+ (id)_countryCodeForNorthAmericanDialingPlanAreaCodesExcludingUS;
+ (id)_countryCodesForNorthAmericanDialingPlan;
+ (id)dialingCodeForISOCountryCode:(id)a3;
+ (id)unsupportedCountryCodes;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFullyQualified;
- (BOOL)isLikePhoneNumber:(id)a3;
- (BOOL)isLikePhoneNumberForSamePerson:(id)a3;
- (BOOL)isValid:(id *)a3;
- (CNPhoneNumber)initWithCoder:(id)a3;
- (CNPhoneNumber)initWithStringValue:(id)a3 countryCode:(id)a4;
- (NSString)countryCode;
- (NSString)description;
- (__CFPhoneNumber)nts_lazyPhoneNumberRef;
- (__CFPhoneNumber)phoneNumberRef;
- (id)_countryCodeFromPhoneNumberRef;
- (id)digitsRemovingDialingCode;
- (id)formattedStringValueRemovingDialingCode;
- (id)fullyQualifiedDigits;
- (id)lastFourDigits;
- (id)primitiveInitWithStringValue:(id)a3 countryCode:(id)a4;
- (id)stringValueWithCFPhoneNumberOptions:(unint64_t)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNPhoneNumber

- (void)dealloc
{
  phoneNumberRef = self->_phoneNumberRef;
  if (phoneNumberRef)
  {
    CFRelease(phoneNumberRef);
  }

  v4.receiver = self;
  v4.super_class = CNPhoneNumber;
  [(CNPhoneNumber *)&v4 dealloc];
}

- (__CFPhoneNumber)phoneNumberRef
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(CNPhoneNumber *)self nts_lazyPhoneNumberRef];
  os_unfair_lock_unlock(&self->_stateLock);
  return v3;
}

- (__CFPhoneNumber)nts_lazyPhoneNumberRef
{
  result = self->_phoneNumberRef;
  if (!result)
  {
    v4 = objc_opt_class();
    v5 = [(CNPhoneNumber *)self stringValue];
    v6 = [(CNPhoneNumber *)self initialCountryCode];
    self->_phoneNumberRef = [v4 createCFPhoneNumberForStringValue:v5 countryCode:v6];

    return self->_phoneNumberRef;
  }

  return result;
}

- (NSString)countryCode
{
  v3 = [(CNPhoneNumber *)self _countryCodeFromPhoneNumberRef];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CNPhoneNumber *)self initialCountryCode];
  }

  v6 = v5;

  return v6;
}

- (id)_countryCodeFromPhoneNumberRef
{
  v3 = [(CNPhoneNumber *)self phoneNumberRef];
  if (v3)
  {
    [(CNPhoneNumber *)self phoneNumberRef];
    v3 = CFPhoneNumberCopyISOCountryCode();
  }

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNPhoneNumber *)self stringValue];
  v5 = [v3 appendName:@"stringValue" object:v4];

  v6 = [(CNPhoneNumber *)self initialCountryCode];
  v7 = [v3 appendName:@"initialCountryCode" object:v6];

  v8 = [v3 build];

  return v8;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v4 = [(CNPhoneNumber *)self stringValue];
  v5 = [v3 objectHash:v4];

  v6 = MEMORY[0x1E6996730];
  v7 = [(CNPhoneNumber *)self initialCountryCode];
  v8 = [v6 objectHash:v7] - v5 + 32 * v5;

  return v8 + 16337;
}

- (CNPhoneNumber)initWithStringValue:(id)a3 countryCode:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  v8 = [v6 copy];

  v9 = [(CNPhoneNumber *)self primitiveInitWithStringValue:v7 countryCode:v8];
  return v9;
}

- (id)primitiveInitWithStringValue:(id)a3 countryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (v13.receiver = self, v13.super_class = CNPhoneNumber, v8 = [(CNPhoneNumber *)&v13 init], (self = v8) != 0))
  {
    v8->_stateLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_initialCountryCode, a4);
    v9 = [v6 _cn_stringBySanitizingPhoneNumber];
    stringValue = self->_stringValue;
    self->_stringValue = v9;

    self = self;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (CNPhoneNumber)phoneNumberWithDigits:(id)a3 countryCode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithStringValue:v7 countryCode:v6];

  return v8;
}

+ (CNPhoneNumber)phoneNumberWithStringValue:(NSString *)stringValue
{
  v4 = [(NSString *)stringValue copy];
  v5 = [a1 phoneNumberWithCopiedStringValue:v4];

  return v5;
}

+ (CNPhoneNumber)phoneNumberWithCopiedStringValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] primitiveInitWithStringValue:v4 countryCode:0];

  return v5;
}

+ (__CFPhoneNumber)createCFPhoneNumberForStringValue:(id)a3 countryCode:(id)a4
{
  v5 = a4;
  v6 = [a3 _cn_take:100];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v7 = [MEMORY[0x1E69967B0] countryCodeForNumber:v6];

    v5 = v7;
  }

  v8 = +[CNCFPhoneNumber makeProxy];
  v9 = [v8 create:v6 :v5];

  return v9;
}

- (CNPhoneNumber)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];

  v7 = [(CNPhoneNumber *)self initWithStringValue:v5 countryCode:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CNPhoneNumber *)self stringValue];
  [v4 encodeObject:v5 forKey:@"stringValue"];

  v6 = [(CNPhoneNumber *)self initialCountryCode];
  [v4 encodeObject:v6 forKey:@"countryCode"];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v17 = v5;
    v18 = v4;
    v19 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(CNPhoneNumber *)self stringValue];
      v12 = [a3 stringValue];
      if (!(v11 | v12) || (v13 = [v11 isEqual:v12]) != 0)
      {
        v14 = [(CNPhoneNumber *)self initialCountryCode:v6];
        v15 = [a3 initialCountryCode];
        if (!(v14 | v15) || (v13 = [v14 isEqual:v15]) != 0)
        {
          LOBYTE(v13) = 1;
        }
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (BOOL)isLikePhoneNumberForSamePerson:(id)a3
{
  v4 = a3;
  stringValue = self->_stringValue;
  if (!stringValue || (v6 = v4[2]) == 0 || (v7 = comparePhoneNumberStrings(stringValue, v6), v8 = v7 == 0, v7 == 2))
  {
    v8 = [(CNPhoneNumber *)self isLikePhoneNumber:v4];
  }

  return v8;
}

- (BOOL)isLikePhoneNumber:(id)a3
{
  v4 = a3;
  v5 = -[CNPhoneNumber phoneNumberRef](self, "phoneNumberRef") && [v4 phoneNumberRef] && CFEqual(-[CNPhoneNumber phoneNumberRef](self, "phoneNumberRef"), objc_msgSend(v4, "phoneNumberRef")) != 0;

  return v5;
}

- (id)lastFourDigits
{
  v2 = MEMORY[0x1E69967B0];
  v3 = [(CNPhoneNumber *)self unformattedInternationalStringValue];
  v4 = [v2 lastFourDigitsForNumber:v3];

  return v4;
}

- (BOOL)isValid:(id *)a3
{
  if (isValid__cn_once_token_0_4 != -1)
  {
    [CNPhoneNumber isValid:];
  }

  v5 = isValid__cn_once_object_0_4;
  if (isValid__cn_once_token_1_4 != -1)
  {
    [CNPhoneNumber isValid:];
  }

  v6 = isValid__cn_once_token_2_4;
  v7 = isValid__cn_once_object_1_4;
  if (v6 != -1)
  {
    [CNPhoneNumber isValid:];
  }

  v8 = [CN areValidKeyPaths:v5 forObject:self expectedClasses:v7 allowNil:isValid__cn_once_object_2_4 error:a3];

  return v8;
}

void __25__CNPhoneNumber_isValid___block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"countryCode";
  v3[1] = @"digits";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = [v0 copy];
  v2 = isValid__cn_once_object_0_4;
  isValid__cn_once_object_0_4 = v1;
}

void __25__CNPhoneNumber_isValid___block_invoke_2()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = [v0 copy];
  v2 = isValid__cn_once_object_1_4;
  isValid__cn_once_object_1_4 = v1;
}

uint64_t __25__CNPhoneNumber_isValid___block_invoke_3()
{
  v0 = [&unk_1F0987618 copy];
  v1 = isValid__cn_once_object_2_4;
  isValid__cn_once_object_2_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)stringValueWithCFPhoneNumberOptions:(unint64_t)a3
{
  if (![(CNPhoneNumber *)self phoneNumberRef]|| (os_unfair_lock_lock(&self->_stateLock), String = CFPhoneNumberCreateString(), os_unfair_lock_unlock(&self->_stateLock), !String))
  {
    String = [(CNPhoneNumber *)self stringValue];
  }

  return String;
}

+ (id)unsupportedCountryCodes
{
  if (unsupportedCountryCodes_cn_once_token_3 != -1)
  {
    +[CNPhoneNumber unsupportedCountryCodes];
  }

  v3 = unsupportedCountryCodes_cn_once_object_3;

  return v3;
}

void __40__CNPhoneNumber_unsupportedCountryCodes__block_invoke()
{
  v0 = unsupportedCountryCodes_cn_once_object_3;
  unsupportedCountryCodes_cn_once_object_3 = &unk_1F0987630;
}

+ (id)dialingCodeForISOCountryCode:(id)a3
{
  v3 = _PNCopyInternationalCodeForCountry();
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"+%@", v3];
  }

  return v4;
}

- (BOOL)isFullyQualified
{
  v2 = [(CNPhoneNumber *)self digits];
  v3 = [v2 hasPrefix:@"+"];

  return v3;
}

- (id)fullyQualifiedDigits
{
  v3 = [(CNPhoneNumber *)self stringValue];
  [(CNPhoneNumber *)self _countryCodeFromPhoneNumberRef];
  v4 = _PNCopyFullyQualifiedNumberForCountry();

  v5 = v4;

  return v5;
}

- (id)digitsRemovingDialingCode
{
  v3 = [(CNPhoneNumber *)self countryCode];
  if ([objc_opt_class() _isCountryCodeForNorthAmericanDialingPlan:v3])
  {

    v3 = @"us";
  }

  v4 = [(CNPhoneNumber *)self stringValue];
  v5 = PNCreateFormattedStringWithCountry();

  return v5;
}

- (id)formattedStringValueRemovingDialingCode
{
  v3 = [(CNPhoneNumber *)self countryCode];
  if ([objc_opt_class() _isCountryCodeForNorthAmericanDialingPlan:v3])
  {

    v3 = @"us";
  }

  v4 = [(CNPhoneNumber *)self stringValue];
  v5 = PNCreateFormattedStringWithCountry();

  return v5;
}

+ (BOOL)_isCountryCodeForNorthAmericanDialingPlan:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _countryCodesForNorthAmericanDialingPlan];
  v5 = [v4 containsObject:v3];

  return v5;
}

+ (id)_countryCodesForNorthAmericanDialingPlan
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CNPhoneNumber__countryCodesForNorthAmericanDialingPlan__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_countryCodesForNorthAmericanDialingPlan_cn_once_token_4 != -1)
  {
    dispatch_once(&_countryCodesForNorthAmericanDialingPlan_cn_once_token_4, block);
  }

  v2 = _countryCodesForNorthAmericanDialingPlan_cn_once_object_4;

  return v2;
}

void __57__CNPhoneNumber__countryCodesForNorthAmericanDialingPlan__block_invoke()
{
  v0 = MEMORY[0x1E695DFA8];
  v1 = [objc_opt_class() _countryCodeForNorthAmericanDialingPlanAreaCodesExcludingUS];
  v2 = [v1 allValues];
  v3 = [v0 setWithArray:v2];

  [v3 addObject:@"us"];
  v4 = [v3 copy];

  v5 = _countryCodesForNorthAmericanDialingPlan_cn_once_object_4;
  _countryCodesForNorthAmericanDialingPlan_cn_once_object_4 = v4;
}

+ (id)_countryCodeForNorthAmericanDialingPlanAreaCodesExcludingUS
{
  if (_countryCodeForNorthAmericanDialingPlanAreaCodesExcludingUS_cn_once_token_5 != -1)
  {
    +[CNPhoneNumber _countryCodeForNorthAmericanDialingPlanAreaCodesExcludingUS];
  }

  v3 = _countryCodeForNorthAmericanDialingPlanAreaCodesExcludingUS_cn_once_object_5;

  return v3;
}

void __76__CNPhoneNumber__countryCodeForNorthAmericanDialingPlanAreaCodesExcludingUS__block_invoke()
{
  v63[136] = *MEMORY[0x1E69E9840];
  v62[0] = @"386";
  v62[1] = @"403";
  v63[0] = @"ca";
  v63[1] = @"ca";
  v62[2] = @"587";
  v62[3] = @"780";
  v63[2] = @"ca";
  v63[3] = @"ca";
  v62[4] = @"825";
  v62[5] = @"236";
  v63[4] = @"ca";
  v63[5] = @"ca";
  v62[6] = @"250";
  v62[7] = @"604";
  v63[6] = @"ca";
  v63[7] = @"ca";
  v62[8] = @"672";
  v62[9] = @"778";
  v63[8] = @"ca";
  v63[9] = @"ca";
  v62[10] = @"907";
  v62[11] = @"204";
  v63[10] = @"ca";
  v63[11] = @"ca";
  v62[12] = @"431";
  v62[13] = @"584";
  v63[12] = @"ca";
  v63[13] = @"ca";
  v62[14] = @"506";
  v62[15] = @"428";
  v63[14] = @"ca";
  v63[15] = @"ca";
  v62[16] = @"709";
  v62[17] = @"879";
  v63[16] = @"ca";
  v63[17] = @"ca";
  v62[18] = @"867";
  v62[19] = @"782";
  v63[18] = @"ca";
  v63[19] = @"ca";
  v62[20] = @"902";
  v62[21] = @"226";
  v63[20] = @"ca";
  v63[21] = @"ca";
  v62[22] = @"249";
  v62[23] = @"289";
  v63[22] = @"ca";
  v63[23] = @"ca";
  v62[24] = @"343";
  v62[25] = @"365";
  v63[24] = @"ca";
  v63[25] = @"ca";
  v62[26] = @"382";
  v62[27] = @"387";
  v63[26] = @"ca";
  v63[27] = @"ca";
  v62[28] = @"416";
  v62[29] = @"437";
  v63[28] = @"ca";
  v63[29] = @"ca";
  v62[30] = @"519";
  v62[31] = @"548";
  v63[30] = @"ca";
  v63[31] = @"ca";
  v62[32] = @"613";
  v62[33] = @"647";
  v63[32] = @"ca";
  v63[33] = @"ca";
  v62[34] = @"683";
  v62[35] = @"705";
  v63[34] = @"ca";
  v63[35] = @"ca";
  v62[36] = @"742";
  v62[37] = @"753";
  v63[36] = @"ca";
  v63[37] = @"ca";
  v62[38] = @"807";
  v62[39] = @"905";
  v63[38] = @"ca";
  v63[39] = @"ca";
  v62[40] = @"942";
  v62[41] = @"263";
  v63[40] = @"ca";
  v63[41] = @"ca";
  v62[42] = @"354";
  v62[43] = @"367";
  v63[42] = @"ca";
  v63[43] = @"ca";
  v62[44] = @"418";
  v62[45] = @"438";
  v63[44] = @"ca";
  v63[45] = @"ca";
  v62[46] = @"450";
  v62[47] = @"468";
  v63[46] = @"ca";
  v63[47] = @"ca";
  v62[48] = @"514";
  v62[49] = @"579";
  v63[48] = @"ca";
  v63[49] = @"ca";
  v62[50] = @"581";
  v62[51] = @"819";
  v63[50] = @"ca";
  v63[51] = @"ca";
  v62[52] = @"873";
  v62[53] = @"306";
  v63[52] = @"ca";
  v63[53] = @"ca";
  v62[54] = @"474";
  v62[55] = @"639";
  v63[54] = @"ca";
  v63[55] = @"ca";
  v62[56] = @"264";
  v62[57] = @"268";
  v63[56] = @"ai";
  v63[57] = @"ag";
  v62[58] = @"246";
  v62[59] = @"441";
  v63[58] = @"bb";
  v63[59] = @"bm";
  v62[60] = @"284";
  v62[61] = @"345";
  v63[60] = @"vg";
  v63[61] = @"ky";
  v62[62] = @"767";
  v62[63] = @"473";
  v63[62] = @"dm";
  v63[63] = @"gd";
  v62[64] = @"876";
  v63[64] = @"jm";
  v62[65] = @"664";
  v63[65] = @"ms";
  v62[66] = @"737";
  v63[66] = @"pr";
  v62[67] = @"939";
  v63[67] = @"pr";
  v62[68] = @"869";
  v63[68] = @"kn";
  v62[69] = @"758";
  v63[69] = @"lc";
  v62[70] = @"784";
  v63[70] = @"vc";
  v62[71] = @"721";
  v63[71] = @"sx";
  v62[72] = @"242";
  v63[72] = @"bs";
  v62[73] = @"868";
  v63[73] = @"tt";
  v62[74] = @"649";
  v63[74] = @"tc";
  v62[75] = @"340";
  v63[75] = @"vi";
  v62[76] = @"600";
  v61 = [MEMORY[0x1E695DFB0] null];
  v63[76] = v61;
  v62[77] = @"622";
  v60 = [MEMORY[0x1E695DFB0] null];
  v63[77] = v60;
  v62[78] = @"633";
  v59 = [MEMORY[0x1E695DFB0] null];
  v63[78] = v59;
  v62[79] = @"644";
  v58 = [MEMORY[0x1E695DFB0] null];
  v63[79] = v58;
  v62[80] = @"655";
  v57 = [MEMORY[0x1E695DFB0] null];
  v63[80] = v57;
  v62[81] = @"677";
  v56 = [MEMORY[0x1E695DFB0] null];
  v63[81] = v56;
  v62[82] = @"688";
  v55 = [MEMORY[0x1E695DFB0] null];
  v63[82] = v55;
  v62[83] = @"700";
  v54 = [MEMORY[0x1E695DFB0] null];
  v63[83] = v54;
  v62[84] = @"500";
  v53 = [MEMORY[0x1E695DFB0] null];
  v63[84] = v53;
  v62[85] = @"521";
  v52 = [MEMORY[0x1E695DFB0] null];
  v63[85] = v52;
  v62[86] = @"522";
  v51 = [MEMORY[0x1E695DFB0] null];
  v63[86] = v51;
  v62[87] = @"523";
  v50 = [MEMORY[0x1E695DFB0] null];
  v63[87] = v50;
  v62[88] = @"524";
  v49 = [MEMORY[0x1E695DFB0] null];
  v63[88] = v49;
  v62[89] = @"525";
  v48 = [MEMORY[0x1E695DFB0] null];
  v63[89] = v48;
  v62[90] = @"526";
  v47 = [MEMORY[0x1E695DFB0] null];
  v63[90] = v47;
  v62[91] = @"527";
  v46 = [MEMORY[0x1E695DFB0] null];
  v63[91] = v46;
  v62[92] = @"528";
  v45 = [MEMORY[0x1E695DFB0] null];
  v63[92] = v45;
  v62[93] = @"529";
  v44 = [MEMORY[0x1E695DFB0] null];
  v63[93] = v44;
  v62[94] = @"532";
  v43 = [MEMORY[0x1E695DFB0] null];
  v63[94] = v43;
  v62[95] = @"533";
  v42 = [MEMORY[0x1E695DFB0] null];
  v63[95] = v42;
  v62[96] = @"535";
  v41 = [MEMORY[0x1E695DFB0] null];
  v63[96] = v41;
  v62[97] = @"538";
  v40 = [MEMORY[0x1E695DFB0] null];
  v63[97] = v40;
  v62[98] = @"542";
  v39 = [MEMORY[0x1E695DFB0] null];
  v63[98] = v39;
  v62[99] = @"543";
  v38 = [MEMORY[0x1E695DFB0] null];
  v63[99] = v38;
  v62[100] = @"544";
  v37 = [MEMORY[0x1E695DFB0] null];
  v63[100] = v37;
  v62[101] = @"545";
  v36 = [MEMORY[0x1E695DFB0] null];
  v63[101] = v36;
  v62[102] = @"546";
  v35 = [MEMORY[0x1E695DFB0] null];
  v63[102] = v35;
  v62[103] = @"547";
  v34 = [MEMORY[0x1E695DFB0] null];
  v63[103] = v34;
  v62[104] = @"549";
  v33 = [MEMORY[0x1E695DFB0] null];
  v63[104] = v33;
  v62[105] = @"550";
  v32 = [MEMORY[0x1E695DFB0] null];
  v63[105] = v32;
  v62[106] = @"552";
  v31 = [MEMORY[0x1E695DFB0] null];
  v63[106] = v31;
  v62[107] = @"553";
  v30 = [MEMORY[0x1E695DFB0] null];
  v63[107] = v30;
  v62[108] = @"554";
  v29 = [MEMORY[0x1E695DFB0] null];
  v63[108] = v29;
  v62[109] = @"556";
  v28 = [MEMORY[0x1E695DFB0] null];
  v63[109] = v28;
  v62[110] = @"566";
  v27 = [MEMORY[0x1E695DFB0] null];
  v63[110] = v27;
  v62[111] = @"558";
  v26 = [MEMORY[0x1E695DFB0] null];
  v63[111] = v26;
  v62[112] = @"569";
  v25 = [MEMORY[0x1E695DFB0] null];
  v63[112] = v25;
  v62[113] = @"577";
  v24 = [MEMORY[0x1E695DFB0] null];
  v63[113] = v24;
  v62[114] = @"578";
  v23 = [MEMORY[0x1E695DFB0] null];
  v63[114] = v23;
  v62[115] = @"588";
  v22 = [MEMORY[0x1E695DFB0] null];
  v63[115] = v22;
  v62[116] = @"589";
  v21 = [MEMORY[0x1E695DFB0] null];
  v63[116] = v21;
  v62[117] = @"900";
  v20 = [MEMORY[0x1E695DFB0] null];
  v63[117] = v20;
  v62[118] = @"800";
  v19 = [MEMORY[0x1E695DFB0] null];
  v63[118] = v19;
  v62[119] = @"822";
  v18 = [MEMORY[0x1E695DFB0] null];
  v63[119] = v18;
  v62[120] = @"833";
  v17 = [MEMORY[0x1E695DFB0] null];
  v63[120] = v17;
  v62[121] = @"844";
  v16 = [MEMORY[0x1E695DFB0] null];
  v63[121] = v16;
  v62[122] = @"855";
  v15 = [MEMORY[0x1E695DFB0] null];
  v63[122] = v15;
  v62[123] = @"866";
  v14 = [MEMORY[0x1E695DFB0] null];
  v63[123] = v14;
  v62[124] = @"877";
  v13 = [MEMORY[0x1E695DFB0] null];
  v63[124] = v13;
  v62[125] = @"880";
  v12 = [MEMORY[0x1E695DFB0] null];
  v63[125] = v12;
  v62[126] = @"881";
  v0 = [MEMORY[0x1E695DFB0] null];
  v63[126] = v0;
  v62[127] = @"882";
  v1 = [MEMORY[0x1E695DFB0] null];
  v63[127] = v1;
  v62[128] = @"883";
  v2 = [MEMORY[0x1E695DFB0] null];
  v63[128] = v2;
  v62[129] = @"884";
  v3 = [MEMORY[0x1E695DFB0] null];
  v63[129] = v3;
  v62[130] = @"885";
  v4 = [MEMORY[0x1E695DFB0] null];
  v63[130] = v4;
  v62[131] = @"886";
  v5 = [MEMORY[0x1E695DFB0] null];
  v63[131] = v5;
  v62[132] = @"887";
  v6 = [MEMORY[0x1E695DFB0] null];
  v63[132] = v6;
  v62[133] = @"888";
  v7 = [MEMORY[0x1E695DFB0] null];
  v63[133] = v7;
  v62[134] = @"889";
  v8 = [MEMORY[0x1E695DFB0] null];
  v63[134] = v8;
  v62[135] = @"710";
  v9 = [MEMORY[0x1E695DFB0] null];
  v63[135] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:136];
  v11 = _countryCodeForNorthAmericanDialingPlanAreaCodesExcludingUS_cn_once_object_5;
  _countryCodeForNorthAmericanDialingPlanAreaCodesExcludingUS_cn_once_object_5 = v10;
}

@end