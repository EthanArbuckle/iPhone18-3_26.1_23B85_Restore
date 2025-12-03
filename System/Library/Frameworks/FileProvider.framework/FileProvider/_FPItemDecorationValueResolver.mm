@interface _FPItemDecorationValueResolver
+ (id)resolverForItem:(id)item style:(unint64_t)style;
- (_FPItemDecorationValueResolver)initWithItem:(id)item style:(unint64_t)style;
- (id)_formatNameComponents:(id)components;
- (id)fp_valueForKey:(id)key;
- (id)fp_valueForKeyPath:(id)path;
@end

@implementation _FPItemDecorationValueResolver

+ (id)resolverForItem:(id)item style:(unint64_t)style
{
  itemCopy = item;
  v7 = [[self alloc] initWithItem:itemCopy style:style];

  return v7;
}

- (_FPItemDecorationValueResolver)initWithItem:(id)item style:(unint64_t)style
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = _FPItemDecorationValueResolver;
  v8 = [(_FPItemDecorationValueResolver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_item, item);
    v9->_style = style;
  }

  return v9;
}

- (id)_formatNameComponents:(id)components
{
  v3 = self->_style - 1;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1AAC26528[v3];
  }

  return [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:components style:v4 options:0];
}

- (id)fp_valueForKey:(id)key
{
  keyCopy = key;
  if (([keyCopy isEqualToString:@"ownerNameComponents"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"mostRecentEditorNameComponents"))
  {
    if (self->_style)
    {
      goto LABEL_4;
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = [keyCopy substringToIndex:1];
    capitalizedString = [v8 capitalizedString];
    v10 = [keyCopy substringFromIndex:1];
    v11 = [v7 stringWithFormat:@"preformatted%@%@", capitalizedString, v10];

    v12 = [v11 substringToIndex:{objc_msgSend(v11, "length") - objc_msgSend(@"Components", "length")}];

    v6 = [(FPItem *)self->_item valueForKey:v12];

    if (!v6)
    {
LABEL_4:
      v5 = [(FPItem *)self->_item valueForKey:keyCopy];
      if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v6 = [(_FPItemDecorationValueResolver *)self _formatNameComponents:v5];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v13 = FPExtensionMatchingDictionaryForItem(self->_item, 0);
    v6 = [v13 objectForKeyedSubscript:keyCopy];
  }

  return v6;
}

- (id)fp_valueForKeyPath:(id)path
{
  v11 = 0;
  v12 = 0;
  v4 = [path fp_splitKeyPathInProperty:&v12 remainder:&v11];
  v5 = v12;
  v6 = v11;
  v7 = 0;
  if (v4)
  {
    v8 = [(_FPItemDecorationValueResolver *)self fp_valueForKey:v5];
    if (v8)
    {
      if (!v6)
      {
        goto LABEL_6;
      }

      if (objc_opt_respondsToSelector())
      {
        v9 = [v8 fp_valueForKeyPath:v6];

        v8 = v9;
LABEL_6:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [(_FPItemDecorationValueResolver *)self _formatNameComponents:v8];
        }

        else
        {
          v7 = v8;
          v8 = v7;
        }

        goto LABEL_10;
      }
    }

    v7 = 0;
LABEL_10:
  }

  return v7;
}

@end