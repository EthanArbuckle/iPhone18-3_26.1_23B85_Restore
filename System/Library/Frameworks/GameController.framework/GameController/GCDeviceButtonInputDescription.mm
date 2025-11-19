@interface GCDeviceButtonInputDescription
- (GCDeviceButtonInputDescription)init;
- (GCDeviceButtonInputDescription)initWithCoder:(id)a3;
- (GCDeviceButtonInputDescription)initWithName:(id)a3 additionalAliases:(id)a4 attributes:(unint64_t)a5 nameLocalizationKey:(id)a6 symbolName:(id)a7 sourceAttributes:(unint64_t)a8 sourceNameLocalizationKey:(id)a9 sourceSymbolName:(id)a10 sourceTouchedThreshold:(float)a11 sourcePressedThreshold:(float)a12 sourceExtendedEventField:(int64_t)a13;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCDeviceButtonInputDescription

- (GCDeviceButtonInputDescription)initWithName:(id)a3 additionalAliases:(id)a4 attributes:(unint64_t)a5 nameLocalizationKey:(id)a6 symbolName:(id)a7 sourceAttributes:(unint64_t)a8 sourceNameLocalizationKey:(id)a9 sourceSymbolName:(id)a10 sourceTouchedThreshold:(float)a11 sourcePressedThreshold:(float)a12 sourceExtendedEventField:(int64_t)a13
{
  v41.receiver = self;
  v41.super_class = GCDeviceButtonInputDescription;
  v20 = a10;
  v21 = a9;
  v22 = a7;
  v23 = a6;
  v24 = a4;
  v25 = a3;
  v26 = [(GCDeviceButtonInputDescription *)&v41 init];
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

  v26->_sourceTouchedThreshold = a11;
  v26->_sourcePressedThreshold = a12;
  v26->_sourceExtendedEventFieldIndex = a13;
  return v26;
}

- (GCDeviceButtonInputDescription)init
{
  [(GCDeviceButtonInputDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCDeviceButtonInputDescription)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"additionalAliases"];

  v9 = [v3 decodeIntegerForKey:@"attributes"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"nameLocalizationKey"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v12 = [v3 decodeIntegerForKey:@"sourceAttributes"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sourceNameLocalizationKey"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sourceSymbolName"];
  [v3 decodeFloatForKey:@"sourceTouchedThreshold"];
  v16 = v15;
  [v3 decodeFloatForKey:@"sourcePressedThreshold"];
  v18 = v17;
  v19 = [v3 decodeIntegerForKey:@"sourceExtendedEventFieldIndex"];

  LODWORD(v20) = v16;
  LODWORD(v21) = v18;
  v22 = [(GCDeviceButtonInputDescription *)self initWithName:v4 additionalAliases:v8 attributes:v9 nameLocalizationKey:v10 symbolName:v11 sourceAttributes:v12 sourceNameLocalizationKey:v20 sourceSymbolName:v21 sourceTouchedThreshold:v13 sourcePressedThreshold:v14 sourceExtendedEventField:v19];

  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v7 = a3;
  [v7 encodeObject:name forKey:@"name"];
  [v7 encodeObject:self->_additionalAliases forKey:@"additionalAliases"];
  [v7 encodeInteger:self->_attributes forKey:@"attributes"];
  [v7 encodeObject:self->_nameLocalizationKey forKey:@"nameLocalizationKey"];
  [v7 encodeObject:self->_symbolName forKey:@"symbolName"];
  [v7 encodeInteger:self->_sourceAttributes forKey:@"sourceAttributes"];
  [v7 encodeObject:self->_sourceNameLocalizationKey forKey:@"sourceNameLocalizationKey"];
  [v7 encodeObject:self->_sourceSymbolName forKey:@"sourceSymbolName"];
  *&v5 = self->_sourceTouchedThreshold;
  [v7 encodeFloat:@"sourceTouchedThreshold" forKey:v5];
  *&v6 = self->_sourcePressedThreshold;
  [v7 encodeFloat:@"sourcePressedThreshold" forKey:v6];
  [v7 encodeInteger:self->_sourceExtendedEventFieldIndex forKey:@"sourceExtendedEventFieldIndex"];
}

@end