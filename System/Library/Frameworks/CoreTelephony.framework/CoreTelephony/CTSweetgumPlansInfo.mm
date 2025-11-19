@interface CTSweetgumPlansInfo
- (BOOL)isEqual:(id)a3;
- (CTSweetgumPlansInfo)init;
- (CTSweetgumPlansInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(CTSweetgumPlansInfo *)self planGroups];
  [v3 appendFormat:@" planGroups=%@", v4];

  v5 = [(CTSweetgumPlansInfo *)self morePlansURL];
  [v3 appendFormat:@", morePlansURL=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (v6 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(CTSweetgumPlansInfo *)self planGroups];
      v8 = [(CTSweetgumPlansInfo *)v6 planGroups];
      if (v7 == v8 || (-[CTSweetgumPlansInfo planGroups](self, "planGroups"), v3 = objc_claimAutoreleasedReturnValue(), -[CTSweetgumPlansInfo planGroups](v6, "planGroups"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToArray:v4]))
      {
        v10 = [(CTSweetgumPlansInfo *)self morePlansURL];
        v11 = [(CTSweetgumPlansInfo *)v6 morePlansURL];
        if (v10 == v11)
        {
          v9 = 1;
        }

        else
        {
          v12 = [(CTSweetgumPlansInfo *)self morePlansURL];
          v13 = [(CTSweetgumPlansInfo *)v6 morePlansURL];
          v9 = [v12 isEqualToString:v13];
        }

        if (v7 == v8)
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

- (void)encodeWithCoder:(id)a3
{
  planGroups = self->_planGroups;
  v5 = a3;
  [v5 encodeObject:planGroups forKey:@"planGroups"];
  [v5 encodeObject:self->_morePlansURL forKey:@"morePlansURL"];
}

- (CTSweetgumPlansInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CTSweetgumPlansInfo;
  v5 = [(CTSweetgumPlansInfo *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"planGroups"];
    planGroups = v5->_planGroups;
    v5->_planGroups = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"morePlansURL"];
    morePlansURL = v5->_morePlansURL;
    v5->_morePlansURL = v11;
  }

  return v5;
}

@end