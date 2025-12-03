@interface GCDeviceButtonInputDescription
- (GCDeviceButtonInputDescription)init;
- (GCDeviceButtonInputDescription)initWithCoder:(id)coder;
- (GCDeviceButtonInputDescription)initWithName:(id)name additionalAliases:(id)aliases attributes:(unint64_t)attributes nameLocalizationKey:(id)key symbolName:(id)symbolName sourceAttributes:(unint64_t)sourceAttributes sourceNameLocalizationKey:(id)localizationKey sourceSymbolName:(id)self0 sourceTouchedThreshold:(float)self1 sourcePressedThreshold:(float)self2 sourceExtendedEventField:(int64_t)self3;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCDeviceButtonInputDescription

- (GCDeviceButtonInputDescription)initWithName:(id)name additionalAliases:(id)aliases attributes:(unint64_t)attributes nameLocalizationKey:(id)key symbolName:(id)symbolName sourceAttributes:(unint64_t)sourceAttributes sourceNameLocalizationKey:(id)localizationKey sourceSymbolName:(id)self0 sourceTouchedThreshold:(float)self1 sourcePressedThreshold:(float)self2 sourceExtendedEventField:(int64_t)self3
{
  v41.receiver = self;
  v41.super_class = GCDeviceButtonInputDescription;
  sourceSymbolNameCopy = sourceSymbolName;
  localizationKeyCopy = localizationKey;
  symbolNameCopy = symbolName;
  keyCopy = key;
  aliasesCopy = aliases;
  nameCopy = name;
  v26 = [(GCDeviceButtonInputDescription *)&v41 init];
  v27 = [nameCopy copy];

  name = v26->_name;
  v26->_name = v27;

  v29 = [aliasesCopy copy];
  v30 = v29;
  if (!v29)
  {
    v30 = [MEMORY[0x1E695DFD8] set];
  }

  objc_storeStrong(&v26->_additionalAliases, v30);
  if (!v29)
  {
  }

  v26->_attributes = attributes;
  v31 = [keyCopy copy];

  nameLocalizationKey = v26->_nameLocalizationKey;
  v26->_nameLocalizationKey = v31;

  v33 = [symbolNameCopy copy];
  symbolName = v26->_symbolName;
  v26->_symbolName = v33;

  v26->_sourceAttributes = sourceAttributes;
  v35 = [localizationKeyCopy copy];

  sourceNameLocalizationKey = v26->_sourceNameLocalizationKey;
  v26->_sourceNameLocalizationKey = v35;

  v37 = [sourceSymbolNameCopy copy];
  sourceSymbolName = v26->_sourceSymbolName;
  v26->_sourceSymbolName = v37;

  v26->_sourceTouchedThreshold = threshold;
  v26->_sourcePressedThreshold = pressedThreshold;
  v26->_sourceExtendedEventFieldIndex = field;
  return v26;
}

- (GCDeviceButtonInputDescription)init
{
  [(GCDeviceButtonInputDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCDeviceButtonInputDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"additionalAliases"];

  v9 = [coderCopy decodeIntegerForKey:@"attributes"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nameLocalizationKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v12 = [coderCopy decodeIntegerForKey:@"sourceAttributes"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceNameLocalizationKey"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceSymbolName"];
  [coderCopy decodeFloatForKey:@"sourceTouchedThreshold"];
  v16 = v15;
  [coderCopy decodeFloatForKey:@"sourcePressedThreshold"];
  v18 = v17;
  v19 = [coderCopy decodeIntegerForKey:@"sourceExtendedEventFieldIndex"];

  LODWORD(v20) = v16;
  LODWORD(v21) = v18;
  v22 = [(GCDeviceButtonInputDescription *)self initWithName:v4 additionalAliases:v8 attributes:v9 nameLocalizationKey:v10 symbolName:v11 sourceAttributes:v12 sourceNameLocalizationKey:v20 sourceSymbolName:v21 sourceTouchedThreshold:v13 sourcePressedThreshold:v14 sourceExtendedEventField:v19];

  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_additionalAliases forKey:@"additionalAliases"];
  [coderCopy encodeInteger:self->_attributes forKey:@"attributes"];
  [coderCopy encodeObject:self->_nameLocalizationKey forKey:@"nameLocalizationKey"];
  [coderCopy encodeObject:self->_symbolName forKey:@"symbolName"];
  [coderCopy encodeInteger:self->_sourceAttributes forKey:@"sourceAttributes"];
  [coderCopy encodeObject:self->_sourceNameLocalizationKey forKey:@"sourceNameLocalizationKey"];
  [coderCopy encodeObject:self->_sourceSymbolName forKey:@"sourceSymbolName"];
  *&v5 = self->_sourceTouchedThreshold;
  [coderCopy encodeFloat:@"sourceTouchedThreshold" forKey:v5];
  *&v6 = self->_sourcePressedThreshold;
  [coderCopy encodeFloat:@"sourcePressedThreshold" forKey:v6];
  [coderCopy encodeInteger:self->_sourceExtendedEventFieldIndex forKey:@"sourceExtendedEventFieldIndex"];
}

@end