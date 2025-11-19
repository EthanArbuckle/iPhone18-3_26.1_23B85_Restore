@interface GCDeviceDirectionPadDescription
- (GCDeviceDirectionPadDescription)init;
- (GCDeviceDirectionPadDescription)initWithCoder:(id)a3;
- (GCDeviceDirectionPadDescription)initWithName:(id)a3 additionalAliases:(id)a4 attributes:(unint64_t)a5 nameLocalizationKey:(id)a6 symbolName:(id)a7 sourceAttributes:(unint64_t)a8 sourceNameLocalizationKey:(id)a9 sourceSymbolName:(id)a10 sourcePressedThreshold:(float)a11 sourceUpExtendedEventField:(unint64_t)a12 sourceDownExtendedEventField:(unint64_t)a13 sourceLeftExtendedEventField:(unint64_t)a14 sourceRightExtendedEventField:(unint64_t)a15;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCDeviceDirectionPadDescription

- (GCDeviceDirectionPadDescription)initWithName:(id)a3 additionalAliases:(id)a4 attributes:(unint64_t)a5 nameLocalizationKey:(id)a6 symbolName:(id)a7 sourceAttributes:(unint64_t)a8 sourceNameLocalizationKey:(id)a9 sourceSymbolName:(id)a10 sourcePressedThreshold:(float)a11 sourceUpExtendedEventField:(unint64_t)a12 sourceDownExtendedEventField:(unint64_t)a13 sourceLeftExtendedEventField:(unint64_t)a14 sourceRightExtendedEventField:(unint64_t)a15
{
  v42.receiver = self;
  v42.super_class = GCDeviceDirectionPadDescription;
  v20 = a10;
  v21 = a9;
  v22 = a7;
  v23 = a6;
  v24 = a4;
  v25 = a3;
  v26 = [(GCDeviceDirectionPadDescription *)&v42 init];
  v27 = [v25 copy];

  name = v26->_name;
  v26->_name = v27;

  v29 = [v24 copy];
  v30 = v29;
  if (!v29)
  {
    v30 = [MEMORY[0x1E695DFD8] set];
  }

  objc_storeStrong(&v26->_additionalAliases, v30);
  if (!v29)
  {
  }

  v26->_attributes = a5;
  v31 = [v23 copy];

  nameLocalizationKey = v26->_nameLocalizationKey;
  v26->_nameLocalizationKey = v31;

  v33 = [v22 copy];
  symbolName = v26->_symbolName;
  v26->_symbolName = v33;

  v26->_sourceAttributes = a8;
  v35 = [v21 copy];

  sourceNameLocalizationKey = v26->_sourceNameLocalizationKey;
  v26->_sourceNameLocalizationKey = v35;

  v37 = [v20 copy];
  sourceSymbolName = v26->_sourceSymbolName;
  v26->_sourceSymbolName = v37;

  v26->_sourcePressedThreshold = a11;
  v26->_sourceUpExtendedEventFieldIndex = a12;
  v26->_sourceDownExtendedEventFieldIndex = a13;
  v26->_sourceLeftExtendedEventFieldIndex = a14;
  v26->_sourceRightExtendedEventFieldIndex = a15;
  return v26;
}

- (GCDeviceDirectionPadDescription)init
{
  [(GCDeviceDirectionPadDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCDeviceDirectionPadDescription)initWithCoder:(id)a3
{
  v3 = a3;
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v22 = [v3 decodeObjectOfClasses:v6 forKey:@"additionalAliases"];

  v21 = [v3 decodeIntegerForKey:@"attributes"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"nameLocalizationKey"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v9 = [v3 decodeIntegerForKey:@"sourceAttributes"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sourceNameLocalizationKey"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sourceSymbolName"];
  [v3 decodeFloatForKey:@"sourcePressedThreshold"];
  v13 = v12;
  v14 = [v3 decodeIntegerForKey:@"sourceUpExtendedEventFieldIndex"];
  v15 = [v3 decodeIntegerForKey:@"sourceDownExtendedEventFieldIndex"];
  v16 = [v3 decodeIntegerForKey:@"sourceLeftExtendedEventFieldIndex"];
  v17 = [v3 decodeIntegerForKey:@"sourceRightExtendedEventFieldIndex"];

  LODWORD(v18) = v13;
  v19 = [(GCDeviceDirectionPadDescription *)self initWithName:v23 additionalAliases:v22 attributes:v21 nameLocalizationKey:v7 symbolName:v8 sourceAttributes:v9 sourceNameLocalizationKey:v18 sourceSymbolName:v10 sourcePressedThreshold:v11 sourceUpExtendedEventField:v14 sourceDownExtendedEventField:v15 sourceLeftExtendedEventField:v16 sourceRightExtendedEventField:v17];

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v6 = a3;
  [v6 encodeObject:name forKey:@"name"];
  [v6 encodeObject:self->_additionalAliases forKey:@"additionalAliases"];
  [v6 encodeInteger:self->_attributes forKey:@"attributes"];
  [v6 encodeObject:self->_nameLocalizationKey forKey:@"nameLocalizationKey"];
  [v6 encodeObject:self->_symbolName forKey:@"symbolName"];
  [v6 encodeInteger:self->_sourceAttributes forKey:@"sourceAttributes"];
  [v6 encodeObject:self->_sourceNameLocalizationKey forKey:@"sourceNameLocalizationKey"];
  [v6 encodeObject:self->_sourceSymbolName forKey:@"sourceSymbolName"];
  *&v5 = self->_sourcePressedThreshold;
  [v6 encodeFloat:@"sourcePressedThreshold" forKey:v5];
  [v6 encodeInteger:self->_sourceUpExtendedEventFieldIndex forKey:@"sourceUpExtendedEventFieldIndex"];
  [v6 encodeInteger:self->_sourceDownExtendedEventFieldIndex forKey:@"sourceDownExtendedEventFieldIndex"];
  [v6 encodeInteger:self->_sourceLeftExtendedEventFieldIndex forKey:@"sourceLeftExtendedEventFieldIndex"];
  [v6 encodeInteger:self->_sourceRightExtendedEventFieldIndex forKey:@"sourceRightExtendedEventFieldIndex"];
}

@end