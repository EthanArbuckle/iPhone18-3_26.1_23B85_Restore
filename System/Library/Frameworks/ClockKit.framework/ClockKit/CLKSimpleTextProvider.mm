@interface CLKSimpleTextProvider
+ (CLKSimpleTextProvider)textProviderWithText:(NSString *)text shortText:(NSString *)shortText accessibilityLabel:(NSString *)accessibilityLabel;
+ (id)finalizedTextProviderWithText:(id)text monospaceNumbers:(BOOL)numbers;
- (BOOL)_validate;
- (BOOL)isEqual:(id)equal;
- (CLKSimpleTextProvider)initWithCoder:(id)coder;
- (CLKSimpleTextProvider)initWithText:(NSString *)text shortText:(NSString *)shortText accessibilityLabel:(NSString *)accessibilityLabel;
- (id)JSONObjectRepresentation;
- (id)_initWithJSONObjectRepresentation:(id)representation;
- (id)_sessionAttributedTextForIndex:(unint64_t)index withStyle:(id)style;
- (id)attributedString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_validate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKSimpleTextProvider

- (CLKSimpleTextProvider)initWithText:(NSString *)text shortText:(NSString *)shortText accessibilityLabel:(NSString *)accessibilityLabel
{
  v8 = text;
  v9 = shortText;
  v10 = accessibilityLabel;
  v14.receiver = self;
  v14.super_class = CLKSimpleTextProvider;
  initPrivate = [(CLKTextProvider *)&v14 initPrivate];
  v12 = initPrivate;
  if (initPrivate)
  {
    [(CLKSimpleTextProvider *)initPrivate setText:v8];
    [(CLKSimpleTextProvider *)v12 setShortText:v9];
    [(CLKTextProvider *)v12 setAccessibilityLabel:v10];
  }

  return v12;
}

+ (CLKSimpleTextProvider)textProviderWithText:(NSString *)text shortText:(NSString *)shortText accessibilityLabel:(NSString *)accessibilityLabel
{
  v8 = accessibilityLabel;
  v9 = shortText;
  v10 = text;
  v11 = [[self alloc] initWithText:v10 shortText:v9 accessibilityLabel:v8];

  return v11;
}

+ (id)finalizedTextProviderWithText:(id)text monospaceNumbers:(BOOL)numbers
{
  v4 = [self textProviderWithText:{text, numbers}];
  [v4 finalize];

  return v4;
}

- (id)_sessionAttributedTextForIndex:(unint64_t)index withStyle:(id)style
{
  v80[2] = *MEMORY[0x277D85DE8];
  styleCopy = style;
  if (index)
  {
    if (index != 1)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = &OBJC_IVAR___CLKSimpleTextProvider__shortText;
  }

  else
  {
    v7 = &OBJC_IVAR___CLKSimpleTextProvider__text;
  }

  v8 = *(&self->super.super.isa + *v7);
LABEL_7:
  v9 = v8;
  if ([styleCopy uppercase] && !-[CLKTextProvider ignoreUppercaseStyle](self, "ignoreUppercaseStyle"))
  {
    v10 = ![(CLKSimpleTextProvider *)self useLowercaseSmallCaps];
  }

  else
  {
    v10 = 0;
  }

  v11 = self->_useAllSmallCaps && CLKSmallCapsAllowed() && !self->_useNoContentDashFormatting;
  v12 = self->_useLowercaseSmallCaps && CLKSmallCapsAllowed() && !self->_useNoContentDashFormatting;
  if ((v10 | v11))
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v14 = [v9 uppercaseStringWithLocale:currentLocale];

    v9 = v14;
  }

  if (!v9)
  {
    v19 = 0;
    goto LABEL_51;
  }

  font = [styleCopy font];
  v16 = font;
  if (v11)
  {
    smallCapsBaseFont = [styleCopy smallCapsBaseFont];
    cLKFontWithLocalizedSmallCaps = [smallCapsBaseFont CLKFontWithLocalizedSmallCaps];
  }

  else
  {
    if (!v12)
    {
      v25 = 0;
      v20 = font;
      goto LABEL_38;
    }

    smallCapsBaseFont = [styleCopy smallCapsBaseFont];
    cLKFontWithLocalizedSmallCaps = [smallCapsBaseFont CLKFontWithLocalizedLowerCaseSmallCaps];
  }

  v20 = cLKFontWithLocalizedSmallCaps;

  if (CLKUsesFauxSmallCaps())
  {
    smallCapsBaseFont2 = [styleCopy smallCapsBaseFont];
    font2 = [styleCopy font];
    v23 = [smallCapsBaseFont2 isEqual:font2];

    if (v23)
    {
      [v20 pointSize];
      [v20 fontWithSize:v24 + -2.5];
    }

    else
    {
      [styleCopy smallCapsBaseFont];
    }
    v26 = ;
    v27 = *MEMORY[0x277D740A8];
    v80[0] = v26;
    v28 = *MEMORY[0x277CC4830];
    v79[0] = v27;
    v79[1] = v28;
    v77 = *MEMORY[0x277CC4828];
    v78 = v26;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    v80[1] = v29;
    v30 = MEMORY[0x277CBEAC0];
    v31 = v80;
    v32 = v79;
    goto LABEL_36;
  }

  if (!v11 && !v12)
  {
    v25 = 0;
    goto LABEL_38;
  }

  if (CTFontGetSymbolicTraits(v20))
  {
    [v20 pointSize];
    v26 = [v20 fontWithSize:v64 * 0.75];
    v65 = *MEMORY[0x277D740A8];
    v76[0] = v26;
    v66 = *MEMORY[0x277CC4830];
    v75[0] = v65;
    v75[1] = v66;
    v73 = *MEMORY[0x277CC4828];
    v74 = v26;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v76[1] = v29;
    v30 = MEMORY[0x277CBEAC0];
    v31 = v76;
    v32 = v75;
LABEL_36:
    v25 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:2];

    goto LABEL_38;
  }

  v71 = *MEMORY[0x277D740A8];
  v72 = v20;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
LABEL_38:
  fontFeatures = [(CLKTextProvider *)self fontFeatures];

  if (fontFeatures)
  {
    fontFeatures2 = [(CLKTextProvider *)self fontFeatures];
    v35 = [v20 CLKFontByApplyingFeatureSettings:fontFeatures2];

    if (v25)
    {
      v36 = [v25 mutableCopy];
      v37 = *MEMORY[0x277D740A8];
      v38 = [v36 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
      fontFeatures3 = [(CLKTextProvider *)self fontFeatures];
      [v38 CLKFontByApplyingFeatureSettings:fontFeatures3];
      v40 = styleCopy;
      v42 = v41 = v9;
      [v36 setObject:v42 forKeyedSubscript:v37];

      v9 = v41;
      styleCopy = v40;

      v25 = v36;
    }
  }

  else
  {
    v35 = v20;
  }

  if (self->_useNoContentDashFormatting)
  {
    fontDescriptor = [v35 fontDescriptor];
    v43 = _AlternatePunctuationAttributes();
    v67 = [fontDescriptor fontDescriptorByAddingAttributes:v43];

    v44 = [MEMORY[0x277D74300] fontWithDescriptor:v67 size:0.0];
    v45 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9];
    v46 = styleCopy;
    v47 = v9;
    v48 = [v9 length];
    v49 = 305.0 / CTFontGetUnitsPerEm(v35);
    [v35 pointSize];
    v51 = v25;
    v52 = v35;
    v53 = *MEMORY[0x277D740D0];
    v54 = [MEMORY[0x277CCABB0] numberWithDouble:v50 * v49];
    v55 = v53;
    v35 = v52;
    v25 = v51;
    [v45 addAttribute:v55 value:v54 range:{0, v48}];

    v56 = v48;
    v9 = v47;
    styleCopy = v46;
    [v45 addAttribute:*MEMORY[0x277D740A8] value:v44 range:{0, v56}];
  }

  else
  {
    v57 = objc_alloc(MEMORY[0x277CCA898]);
    v58 = v57;
    if (v25)
    {
      v45 = [v57 initWithString:v9 attributes:v25];
    }

    else
    {
      v69 = *MEMORY[0x277D740A8];
      v70 = v35;
      v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v45 = [v58 initWithString:v9 attributes:v59];
    }
  }

  v19 = [v45 _attributedStringWithOtherAttributesFromStyle:{styleCopy, v67}];

  if ([styleCopy shouldEmbedTintColors])
  {
    tintColor = [(CLKTextProvider *)self tintColor];

    if (tintColor)
    {
      tintColor2 = [(CLKTextProvider *)self tintColor];
      v62 = [v19 _attributedStringWithForegroundColor:tintColor2];

      v19 = v62;
    }
  }

LABEL_51:

  return v19;
}

- (BOOL)_validate
{
  text = self->_text;
  if (!text)
  {
    v4 = CLKLoggingObjectForDomain(10);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(CLKSimpleTextProvider *)self _validate];
    }
  }

  return text != 0;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CLKSimpleTextProvider;
  v2 = [(CLKTextProvider *)&v4 description];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CLKSimpleTextProvider;
  v4 = [(CLKTextProvider *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4 != self)
  {
    objc_storeStrong(&v4->_text, self->_text);
    objc_storeStrong(&v5->_shortText, self->_shortText);
    v5->_useNoContentDashFormatting = self->_useNoContentDashFormatting;
    v5->_useAllSmallCaps = self->_useAllSmallCaps;
    v5->_useLowercaseSmallCaps = self->_useLowercaseSmallCaps;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = CLKSimpleTextProvider;
  v5 = [(CLKTextProvider *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CLKEqualObjects(self->_text, equalCopy[17]) && CLKEqualObjects(self->_shortText, equalCopy[18]) && self->_useNoContentDashFormatting == *(equalCopy + 128) && self->_useAllSmallCaps == *(equalCopy + 129) && self->_useLowercaseSmallCaps == *(equalCopy + 130);

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = CLKSimpleTextProvider;
  v3 = [(CLKTextProvider *)&v6 hash];
  v4 = v3 + [(NSString *)self->_text hash];
  return v4 + 4 * [(NSString *)self->_shortText hash]+ 32 * self->_useNoContentDashFormatting + (self->_useAllSmallCaps << 6) + (self->_useLowercaseSmallCaps << 7);
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CLKSimpleTextProvider;
  coderCopy = coder;
  [(CLKTextProvider *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_text forKey:{@"_text", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_shortText forKey:@"_shortText"];
  [coderCopy encodeBool:self->_useNoContentDashFormatting forKey:@"useNoContentDashFormatting"];
  [coderCopy encodeBool:self->_useAllSmallCaps forKey:@"useAllSmallCaps"];
  [coderCopy encodeBool:self->_useLowercaseSmallCaps forKey:@"useLowercaseSmallCaps"];
}

- (CLKSimpleTextProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CLKSimpleTextProvider;
  v5 = [(CLKTextProvider *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_shortText"];
    shortText = v5->_shortText;
    v5->_shortText = v8;

    v5->_useNoContentDashFormatting = [coderCopy decodeBoolForKey:@"useNoContentDashFormatting"];
    v5->_useAllSmallCaps = [coderCopy decodeBoolForKey:@"useAllSmallCaps"];
    v5->_useLowercaseSmallCaps = [coderCopy decodeBoolForKey:@"useLowercaseSmallCaps"];
  }

  return v5;
}

- (id)attributedString
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  v4 = v3;
  if (self->_text)
  {
    v5 = [v3 initWithString:?];
  }

  else
  {
    v6 = CLKLocalizedString(@"EMPTY_TEXT_DASHES");
    v5 = [v4 initWithString:v6];
  }

  return v5;
}

- (id)_initWithJSONObjectRepresentation:(id)representation
{
  representationCopy = representation;
  v10.receiver = self;
  v10.super_class = CLKSimpleTextProvider;
  v5 = [(CLKTextProvider *)&v10 _initWithJSONObjectRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"text", v6}];
    }

    objc_storeStrong(v5 + 17, v6);
    v7 = [representationCopy objectForKeyedSubscript:@"shortText"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a string - invalid value: %@", @"shortText", v7}];
      }

      objc_storeStrong(v5 + 18, v7);
    }

    v8 = [representationCopy objectForKeyedSubscript:@"smallCaps"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"smallCaps", v7}];
      }

      *(v5 + 130) = [v8 BOOLValue];
    }
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v5.receiver = self;
  v5.super_class = CLKSimpleTextProvider;
  jSONObjectRepresentation = [(CLKTextProvider *)&v5 JSONObjectRepresentation];
  [jSONObjectRepresentation setObject:self->_text forKeyedSubscript:@"text"];
  [jSONObjectRepresentation setObject:self->_shortText forKeyedSubscript:@"shortText"];
  if (self->_useLowercaseSmallCaps)
  {
    [jSONObjectRepresentation setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"smallCaps"];
  }

  return jSONObjectRepresentation;
}

- (void)_validate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = v3;
  v6 = 138412802;
  v7 = @"text";
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = objc_opt_class();
  v5 = v11;
  _os_log_fault_impl(&dword_23702D000, a2, OS_LOG_TYPE_FAULT, "Property '%@' is not set on %@. This property must not be nil when passing %@ to the complication data handler.", &v6, 0x20u);
}

@end