@interface CTSweetgumPlansInfo
- (BOOL)isEqual:(id)equal;
- (CTSweetgumPlansInfo)init;
- (CTSweetgumPlansInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSweetgumPlansInfo

- (CTSweetgumPlansInfo)init
{
  v6.receiver = self;
  v6.super_class = CTSweetgumPlansInfo;
  v2 = [(CTSweetgumPlansInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    planGroups = v2->_planGroups;
    v2->_planGroups = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  planGroups = [(CTSweetgumPlansInfo *)self planGroups];
  [v3 appendFormat:@" planGroups=%@", planGroups];

  morePlansURL = [(CTSweetgumPlansInfo *)self morePlansURL];
  [v3 appendFormat:@", morePlansURL=%@", morePlansURL];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      planGroups = [(CTSweetgumPlansInfo *)self planGroups];
      planGroups2 = [(CTSweetgumPlansInfo *)equalCopy planGroups];
      if (planGroups == planGroups2 || (-[CTSweetgumPlansInfo planGroups](self, "planGroups"), v3 = objc_claimAutoreleasedReturnValue(), -[CTSweetgumPlansInfo planGroups](equalCopy, "planGroups"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToArray:v4]))
      {
        morePlansURL = [(CTSweetgumPlansInfo *)self morePlansURL];
        morePlansURL2 = [(CTSweetgumPlansInfo *)equalCopy morePlansURL];
        if (morePlansURL == morePlansURL2)
        {
          v9 = 1;
        }

        else
        {
          morePlansURL3 = [(CTSweetgumPlansInfo *)self morePlansURL];
          morePlansURL4 = [(CTSweetgumPlansInfo *)equalCopy morePlansURL];
          v9 = [morePlansURL3 isEqualToString:morePlansURL4];
        }

        if (planGroups == planGroups2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  planGroups = self->_planGroups;
  coderCopy = coder;
  [coderCopy encodeObject:planGroups forKey:@"planGroups"];
  [coderCopy encodeObject:self->_morePlansURL forKey:@"morePlansURL"];
}

- (CTSweetgumPlansInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CTSweetgumPlansInfo;
  v5 = [(CTSweetgumPlansInfo *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"planGroups"];
    planGroups = v5->_planGroups;
    v5->_planGroups = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"morePlansURL"];
    morePlansURL = v5->_morePlansURL;
    v5->_morePlansURL = v11;
  }

  return v5;
}

@end