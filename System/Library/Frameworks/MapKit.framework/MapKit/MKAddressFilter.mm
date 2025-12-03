@interface MKAddressFilter
+ (MKAddressFilter)filterExcludingAll;
+ (MKAddressFilter)filterIncludingAll;
- (BOOL)excludesOptions:(unint64_t)options;
- (BOOL)includesOptions:(unint64_t)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAddressFilter:(id)filter;
- (MKAddressFilter)initWithCoder:(id)coder;
- (id)_commaSeparatedListOfOptions:(unint64_t)options;
- (id)_geoAddressFilter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initExcludingOptions:(unint64_t)options;
- (id)initIncludingOptions:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MKAddressFilter

- (id)_geoAddressFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69A1B38]) initWithOptionsToInclude:self->_includedOptions optionsToExclude:self->_excludedOptions];

  return v2;
}

- (id)_commaSeparatedListOfOptions:(unint64_t)options
{
  optionsCopy = options;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = v4;
  if (optionsCopy)
  {
    [v4 appendString:{@"Country, "}];
    if ((optionsCopy & 2) == 0)
    {
LABEL_3:
      if ((optionsCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((optionsCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 appendString:{@"Administrative Area, "}];
  if ((optionsCopy & 4) == 0)
  {
LABEL_4:
    if ((optionsCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v5 appendString:{@"Subadministrative Area, "}];
  if ((optionsCopy & 8) == 0)
  {
LABEL_5:
    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v5 appendString:{@"Locality, "}];
  if ((optionsCopy & 0x10) == 0)
  {
LABEL_6:
    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  [v5 appendString:{@"Sublocality, "}];
  if ((optionsCopy & 0x20) != 0)
  {
LABEL_7:
    [v5 appendString:{@"Postal Code, "}];
  }

LABEL_8:
  if ([v5 length] >= 3)
  {
    [v5 replaceCharactersInRange:objc_msgSend(v5 withString:{"length") - 2, 2, &stru_1F15B23C0}];
  }

  return v5;
}

- (id)description
{
  includedOptions = self->_includedOptions;
  if (includedOptions == -1)
  {
    v8 = @"Include: All";
  }

  else if (self->_excludedOptions == -1)
  {
    v8 = @"Exclude: All";
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = 8;
    if (includedOptions)
    {
      v6 = @"Include: %@";
    }

    else
    {
      v5 = 16;
      v6 = @"Exclude: %@";
    }

    v7 = [(MKAddressFilter *)self _commaSeparatedListOfOptions:*(&self->super.isa + v5)];
    v8 = [v4 initWithFormat:v6, v7];
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"%@: %p %@", v11, self, v8];

  return v12;
}

- (BOOL)isEqualToAddressFilter:(id)filter
{
  filterCopy = filter;
  v5 = filterCopy && self->_includedOptions == filterCopy[1] && self->_excludedOptions == filterCopy[2];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MKAddressFilter *)self isEqualToAddressFilter:equalCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = self->_includedOptions;
  *(result + 2) = self->_excludedOptions;
  return result;
}

- (MKAddressFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"inclusions"];
  v6 = [coderCopy decodeInt64ForKey:@"exclusions"];

  if (v5 | v6)
  {
    v12.receiver = self;
    v12.super_class = MKAddressFilter;
    v8 = [(MKAddressFilter *)&v12 init];
    if (v8)
    {
      if (v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = v6;
      }

      v10 = 8;
      if (!v5)
      {
        v10 = 16;
      }

      *(&v8->super.isa + v10) = v9;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  includedOptions = self->_includedOptions;
  coderCopy = coder;
  [coderCopy encodeInt64:includedOptions forKey:@"inclusions"];
  [coderCopy encodeInt64:self->_excludedOptions forKey:@"exclusions"];
}

- (BOOL)excludesOptions:(unint64_t)options
{
  excludedOptions = self->_excludedOptions;
  if (excludedOptions)
  {
    return (options & ~excludedOptions) == 0;
  }

  else
  {
    return (options & ~self->_includedOptions) != 0;
  }
}

- (BOOL)includesOptions:(unint64_t)options
{
  includedOptions = self->_includedOptions;
  if (includedOptions)
  {
    return (options & ~includedOptions) == 0;
  }

  else
  {
    return (options & ~self->_excludedOptions) != 0;
  }
}

- (id)initExcludingOptions:(unint64_t)options
{
  v7.receiver = self;
  v7.super_class = MKAddressFilter;
  result = [(MKAddressFilter *)&v7 init];
  if (result)
  {
    v5 = 16;
    if (options)
    {
      optionsCopy = options;
    }

    else
    {
      v5 = 8;
      optionsCopy = -1;
    }

    *(result + v5) = optionsCopy;
  }

  return result;
}

- (id)initIncludingOptions:(unint64_t)options
{
  v7.receiver = self;
  v7.super_class = MKAddressFilter;
  result = [(MKAddressFilter *)&v7 init];
  if (result)
  {
    v5 = 8;
    if (options)
    {
      optionsCopy = options;
    }

    else
    {
      v5 = 16;
      optionsCopy = -1;
    }

    *(result + v5) = optionsCopy;
  }

  return result;
}

+ (MKAddressFilter)filterExcludingAll
{
  v2 = [objc_alloc(objc_opt_class()) initExcludingOptions:-1];

  return v2;
}

+ (MKAddressFilter)filterIncludingAll
{
  v2 = [objc_alloc(objc_opt_class()) initIncludingOptions:-1];

  return v2;
}

@end