@interface AXMMLElementGroup
- (AXMMLElementGroup)init;
- (CGRect)frame;
- (id)childFeatures;
- (id)description;
- (id)featureLabel;
- (id)textLabel;
@end

@implementation AXMMLElementGroup

- (AXMMLElementGroup)init
{
  v6.receiver = self;
  v6.super_class = AXMMLElementGroup;
  v2 = [(AXMMLElementGroup *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(AXMMLElementGroup *)v2 setTopLevel:1];
    [(AXMMLElementGroup *)v3 setIncludeChildren:1];
    [(AXMMLElementGroup *)v3 setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    array = [MEMORY[0x1E695DF70] array];
    [(AXMMLElementGroup *)v3 setSubfeatures:array];
  }

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = AXMMLElementGroup;
  v3 = [(AXMMLElementGroup *)&v8 description];
  feature = [(AXMMLElementGroup *)self feature];
  subfeatures = [(AXMMLElementGroup *)self subfeatures];
  v6 = [v3 stringByAppendingFormat:@"\n%@\n%@", feature, subfeatures];

  return v6;
}

- (id)featureLabel
{
  feature = [(AXMMLElementGroup *)self feature];
  value = [feature value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    feature2 = [(AXMMLElementGroup *)self feature];
    value2 = [feature2 value];
    v7 = [value2 length];

    if (v7)
    {
      feature3 = [(AXMMLElementGroup *)self feature];
      value3 = [feature3 value];

      goto LABEL_6;
    }
  }

  else
  {
  }

  value3 = [(AXMMLElementGroup *)self textLabel];
LABEL_6:

  return value3;
}

- (id)textLabel
{
  subfeatures = [(AXMMLElementGroup *)self subfeatures];
  v4 = [subfeatures count];

  if (v4)
  {
    v5 = 0;
    v6 = &stru_1F23EA908;
    while (1)
    {
      subfeatures2 = [(AXMMLElementGroup *)self subfeatures];
      v8 = [subfeatures2 objectAtIndex:v5];

      featureLabel = [v8 featureLabel];
      subfeatures3 = [(AXMMLElementGroup *)self subfeatures];
      v11 = [subfeatures3 count] - 1;

      if (v5 < v11)
      {
        break;
      }

      ++v5;
LABEL_19:
      v28 = __AXMStringForVariables(v6, v12, v13, v14, v15, v16, v17, v18, featureLabel);

      subfeatures4 = [(AXMMLElementGroup *)self subfeatures];
      v30 = [subfeatures4 count];

      v6 = v28;
      if (v5 >= v30)
      {
        goto LABEL_22;
      }
    }

    subfeatures5 = [(AXMMLElementGroup *)self subfeatures];
    v20 = [subfeatures5 objectAtIndex:++v5];

    feature = [v8 feature];
    uiClass = [feature uiClass];
    if (uiClass == 5 || ([v8 feature], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "uiClass") == 16))
    {
      feature2 = [v20 feature];
      if ([feature2 uiClass] == 11)
      {

        if (uiClass != 5)
        {
        }
      }

      else
      {
        feature3 = [v20 feature];
        uiClass2 = [feature3 uiClass];

        if (uiClass != 5)
        {
        }

        if (uiClass2 != 17)
        {
          goto LABEL_18;
        }
      }

      feature = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v25 = [featureLabel stringByTrimmingCharactersInSet:feature];

      featureLabel2 = [v20 featureLabel];
      v27 = [featureLabel2 stringByTrimmingCharactersInSet:feature];

      if (![v27 rangeOfString:v25 options:1])
      {

        v25 = 0;
      }
    }

    else
    {
      v27 = v33;
      v25 = featureLabel;
    }

    featureLabel = v25;
LABEL_18:

    goto LABEL_19;
  }

  v28 = &stru_1F23EA908;
LABEL_22:

  return v28;
}

- (id)childFeatures
{
  subfeatures = [(AXMMLElementGroup *)self subfeatures];
  v3 = [subfeatures ax_mappedArrayUsingBlock:&__block_literal_global_17];

  return v3;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end