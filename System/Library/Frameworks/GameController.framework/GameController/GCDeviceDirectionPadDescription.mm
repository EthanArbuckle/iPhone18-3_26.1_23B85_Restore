@interface GCDeviceDirectionPadDescription
- (GCDeviceDirectionPadDescription)init;
- (GCDeviceDirectionPadDescription)initWithCoder:(id)coder;
- (GCDeviceDirectionPadDescription)initWithName:(id)name additionalAliases:(id)aliases attributes:(unint64_t)attributes nameLocalizationKey:(id)key symbolName:(id)symbolName sourceAttributes:(unint64_t)sourceAttributes sourceNameLocalizationKey:(id)localizationKey sourceSymbolName:(id)self0 sourcePressedThreshold:(float)self1 sourceUpExtendedEventField:(unint64_t)self2 sourceDownExtendedEventField:(unint64_t)self3 sourceLeftExtendedEventField:(unint64_t)self4 sourceRightExtendedEventField:(unint64_t)self5;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCDeviceDirectionPadDescription

- (GCDeviceDirectionPadDescription)initWithName:(id)name additionalAliases:(id)aliases attributes:(unint64_t)attributes nameLocalizationKey:(id)key symbolName:(id)symbolName sourceAttributes:(unint64_t)sourceAttributes sourceNameLocalizationKey:(id)localizationKey sourceSymbolName:(id)self0 sourcePressedThreshold:(float)self1 sourceUpExtendedEventField:(unint64_t)self2 sourceDownExtendedEventField:(unint64_t)self3 sourceLeftExtendedEventField:(unint64_t)self4 sourceRightExtendedEventField:(unint64_t)self5
{
  v42.receiver = self;
  v42.super_class = GCDeviceDirectionPadDescription;
  sourceSymbolNameCopy = sourceSymbolName;
  localizationKeyCopy = localizationKey;
  symbolNameCopy = symbolName;
  keyCopy = key;
  aliasesCopy = aliases;
  nameCopy = name;
  v26 = [(GCDeviceDirectionPadDescription *)&v42 init];
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

  v26->_sourcePressedThreshold = threshold;
  v26->_sourceUpExtendedEventFieldIndex = field;
  v26->_sourceDownExtendedEventFieldIndex = eventField;
  v26->_sourceLeftExtendedEventFieldIndex = extendedEventField;
  v26->_sourceRightExtendedEventFieldIndex = rightExtendedEventField;
  return v26;
}

- (GCDeviceDirectionPadDescription)init
{
  [(GCDeviceDirectionPadDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCDeviceDirectionPadDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v22 = [coderCopy decodeObjectOfClasses:v6 forKey:@"additionalAliases"];

  v21 = [coderCopy decodeIntegerForKey:@"attributes"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nameLocalizationKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v9 = [coderCopy decodeIntegerForKey:@"sourceAttributes"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceNameLocalizationKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceSymbolName"];
  [coderCopy decodeFloatForKey:@"sourcePressedThreshold"];
  v13 = v12;
  v14 = [coderCopy decodeIntegerForKey:@"sourceUpExtendedEventFieldIndex"];
  v15 = [coderCopy decodeIntegerForKey:@"sourceDownExtendedEventFieldIndex"];
  v16 = [coderCopy decodeIntegerForKey:@"sourceLeftExtendedEventFieldIndex"];
  v17 = [coderCopy decodeIntegerForKey:@"sourceRightExtendedEventFieldIndex"];

  LODWORD(v18) = v13;
  v19 = [(GCDeviceDirectionPadDescription *)self initWithName:v23 additionalAliases:v22 attributes:v21 nameLocalizationKey:v7 symbolName:v8 sourceAttributes:v9 sourceNameLocalizationKey:v18 sourceSymbolName:v10 sourcePressedThreshold:v11 sourceUpExtendedEventField:v14 sourceDownExtendedEventField:v15 sourceLeftExtendedEventField:v16 sourceRightExtendedEventField:v17];

  return v19;
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
  *&v5 = self->_sourcePressedThreshold;
  [coderCopy encodeFloat:@"sourcePressedThreshold" forKey:v5];
  [coderCopy encodeInteger:self->_sourceUpExtendedEventFieldIndex forKey:@"sourceUpExtendedEventFieldIndex"];
  [coderCopy encodeInteger:self->_sourceDownExtendedEventFieldIndex forKey:@"sourceDownExtendedEventFieldIndex"];
  [coderCopy encodeInteger:self->_sourceLeftExtendedEventFieldIndex forKey:@"sourceLeftExtendedEventFieldIndex"];
  [coderCopy encodeInteger:self->_sourceRightExtendedEventFieldIndex forKey:@"sourceRightExtendedEventFieldIndex"];
}

@end