@interface _MPModelLibraryRequestPropertyFilter
- (BOOL)isEqual:(id)equal;
- (_MPModelLibraryRequestPropertyFilter)initWithCoder:(id)coder;
- (_MPModelLibraryRequestPropertyFilter)initWithKeys:(id)keys value:(id)value comparisonType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MPModelLibraryRequestPropertyFilter

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  keys = [(_MPModelLibraryRequestPropertyFilter *)self keys];
  keys2 = [equalCopy keys];
  v7 = keys2;
  if (keys == keys2)
  {
  }

  else
  {
    v8 = [keys isEqual:keys2];

    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  value = [(_MPModelLibraryRequestPropertyFilter *)self value];
  value2 = [equalCopy value];
  v11 = value2;
  if (value == value2)
  {

    goto LABEL_10;
  }

  v12 = [value isEqual:value2];

  if (v12)
  {
LABEL_10:
    comparisonType = [(_MPModelLibraryRequestPropertyFilter *)self comparisonType];
    v13 = comparisonType == [equalCopy comparisonType];
    goto LABEL_11;
  }

LABEL_8:
  v13 = 0;
LABEL_11:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  keys = self->_keys;
  coderCopy = coder;
  [coderCopy encodeObject:keys forKey:@"MPModelLibraryRequestPropertyFilterCodingKeyKeys"];
  [coderCopy encodeObject:self->_value forKey:@"MPModelLibraryRequestPropertyFilterCodingKeyValue"];
  [coderCopy encodeInteger:self->_comparisonType forKey:@"MPModelLibraryRequestPropertyFilterCodingKeyComparisonType"];
}

- (_MPModelLibraryRequestPropertyFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _MPModelLibraryRequestPropertyFilter;
  v5 = [(_MPModelLibraryRequestPropertyFilter *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MPModelLibraryRequestPropertyFilterCodingKeyKeys"];
    keys = v5->_keys;
    v5->_keys = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibraryRequestPropertyFilterCodingKeyValue"];
    value = v5->_value;
    v5->_value = v11;

    v5->_comparisonType = [coderCopy decodeIntegerForKey:@"MPModelLibraryRequestPropertyFilterCodingKeyComparisonType"];
  }

  return v5;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = _MPModelLibraryRequestPropertyFilter;
  v3 = [(_MPModelLibraryRequestPropertyFilter *)&v10 description];
  v4 = [v3 mutableCopy];

  [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
  if ([(NSArray *)self->_keys count])
  {
    msv_compactDescription = [(NSArray *)self->_keys msv_compactDescription];
    [v4 appendFormat:@" keyPath=[%@]", msv_compactDescription];
  }

  if ([(NSString *)self->_value length])
  {
    [v4 appendFormat:@" value=%@", self->_value];
  }

  comparisonType = self->_comparisonType;
  if (comparisonType)
  {
    if (comparisonType != 1)
    {
      goto LABEL_10;
    }

    v7 = @" comparisonType=contains >";
  }

  else
  {
    v7 = @" comparisonType=equalTo >";
  }

  [v4 appendString:v7];
LABEL_10:
  v8 = [v4 copy];

  return v8;
}

- (_MPModelLibraryRequestPropertyFilter)initWithKeys:(id)keys value:(id)value comparisonType:(int64_t)type
{
  keysCopy = keys;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = _MPModelLibraryRequestPropertyFilter;
  v10 = [(_MPModelLibraryRequestPropertyFilter *)&v16 init];
  if (v10)
  {
    v11 = [keysCopy copy];
    keys = v10->_keys;
    v10->_keys = v11;

    v13 = [valueCopy copy];
    value = v10->_value;
    v10->_value = v13;

    v10->_comparisonType = type;
  }

  return v10;
}

@end