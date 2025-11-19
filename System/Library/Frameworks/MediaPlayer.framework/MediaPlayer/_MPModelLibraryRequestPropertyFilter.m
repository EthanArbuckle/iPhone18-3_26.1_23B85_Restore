@interface _MPModelLibraryRequestPropertyFilter
- (BOOL)isEqual:(id)a3;
- (_MPModelLibraryRequestPropertyFilter)initWithCoder:(id)a3;
- (_MPModelLibraryRequestPropertyFilter)initWithKeys:(id)a3 value:(id)a4 comparisonType:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MPModelLibraryRequestPropertyFilter

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  v5 = [(_MPModelLibraryRequestPropertyFilter *)self keys];
  v6 = [v4 keys];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [v5 isEqual:v6];

    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v9 = [(_MPModelLibraryRequestPropertyFilter *)self value];
  v10 = [v4 value];
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_10;
  }

  v12 = [v9 isEqual:v10];

  if (v12)
  {
LABEL_10:
    v14 = [(_MPModelLibraryRequestPropertyFilter *)self comparisonType];
    v13 = v14 == [v4 comparisonType];
    goto LABEL_11;
  }

LABEL_8:
  v13 = 0;
LABEL_11:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  keys = self->_keys;
  v5 = a3;
  [v5 encodeObject:keys forKey:@"MPModelLibraryRequestPropertyFilterCodingKeyKeys"];
  [v5 encodeObject:self->_value forKey:@"MPModelLibraryRequestPropertyFilterCodingKeyValue"];
  [v5 encodeInteger:self->_comparisonType forKey:@"MPModelLibraryRequestPropertyFilterCodingKeyComparisonType"];
}

- (_MPModelLibraryRequestPropertyFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _MPModelLibraryRequestPropertyFilter;
  v5 = [(_MPModelLibraryRequestPropertyFilter *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"MPModelLibraryRequestPropertyFilterCodingKeyKeys"];
    keys = v5->_keys;
    v5->_keys = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibraryRequestPropertyFilterCodingKeyValue"];
    value = v5->_value;
    v5->_value = v11;

    v5->_comparisonType = [v4 decodeIntegerForKey:@"MPModelLibraryRequestPropertyFilterCodingKeyComparisonType"];
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
    v5 = [(NSArray *)self->_keys msv_compactDescription];
    [v4 appendFormat:@" keyPath=[%@]", v5];
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

- (_MPModelLibraryRequestPropertyFilter)initWithKeys:(id)a3 value:(id)a4 comparisonType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = _MPModelLibraryRequestPropertyFilter;
  v10 = [(_MPModelLibraryRequestPropertyFilter *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    keys = v10->_keys;
    v10->_keys = v11;

    v13 = [v9 copy];
    value = v10->_value;
    v10->_value = v13;

    v10->_comparisonType = a5;
  }

  return v10;
}

@end