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
    v4 = [MEMORY[0x1E695DF70] array];
    [(AXMMLElementGroup *)v3 setSubfeatures:v4];
  }

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = AXMMLElementGroup;
  v3 = [(AXMMLElementGroup *)&v8 description];
  v4 = [(AXMMLElementGroup *)self feature];
  v5 = [(AXMMLElementGroup *)self subfeatures];
  v6 = [v3 stringByAppendingFormat:@"\n%@\n%@", v4, v5];

  return v6;
}

- (id)featureLabel
{
  v3 = [(AXMMLElementGroup *)self feature];
  v4 = [v3 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AXMMLElementGroup *)self feature];
    v6 = [v5 value];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [(AXMMLElementGroup *)self feature];
      v9 = [v8 value];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = [(AXMMLElementGroup *)self textLabel];
LABEL_6:

  return v9;
}

- (id)textLabel
{
  v3 = [(AXMMLElementGroup *)self subfeatures];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    v6 = &stru_1F23EA908;
    while (1)
    {
      v7 = [(AXMMLElementGroup *)self subfeatures];
      v8 = [v7 objectAtIndex:v5];

      v9 = [v8 featureLabel];
      v10 = [(AXMMLElementGroup *)self subfeatures];
      v11 = [v10 count] - 1;

      if (v5 < v11)
      {
        break;
      }

      ++v5;
LABEL_19:
      v28 = __AXMStringForVariables(v6, v12, v13, v14, v15, v16, v17, v18, v9);

      v29 = [(AXMMLElementGroup *)self subfeatures];
      v30 = [v29 count];

      v6 = v28;
      if (v5 >= v30)
      {
        goto LABEL_22;
      }
    }

    v19 = [(AXMMLElementGroup *)self subfeatures];
    v20 = [v19 objectAtIndex:++v5];

    v21 = [v8 feature];
    v22 = [v21 uiClass];
    if (v22 == 5 || ([v8 feature], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "uiClass") == 16))
    {
      v23 = [v20 feature];
      if ([v23 uiClass] == 11)
      {

        if (v22 != 5)
        {
        }
      }

      else
      {
        v24 = [v20 feature];
        v32 = [v24 uiClass];

        if (v22 != 5)
        {
        }

        if (v32 != 17)
        {
          goto LABEL_18;
        }
      }

      v21 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v25 = [v9 stringByTrimmingCharactersInSet:v21];

      v26 = [v20 featureLabel];
      v27 = [v26 stringByTrimmingCharactersInSet:v21];

      if (![v27 rangeOfString:v25 options:1])
      {

        v25 = 0;
      }
    }

    else
    {
      v27 = v33;
      v25 = v9;
    }

    v9 = v25;
LABEL_18:

    goto LABEL_19;
  }

  v28 = &stru_1F23EA908;
LABEL_22:

  return v28;
}

- (id)childFeatures
{
  v2 = [(AXMMLElementGroup *)self subfeatures];
  v3 = [v2 ax_mappedArrayUsingBlock:&__block_literal_global_17];

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