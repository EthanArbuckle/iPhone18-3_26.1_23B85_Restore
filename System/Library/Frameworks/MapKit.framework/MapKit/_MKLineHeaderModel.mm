@interface _MKLineHeaderModel
- (UIView)ownerView;
- (_MKLineHeaderModel)init;
- (id)_placeCardHeaderSeparatorString;
- (id)colorProvider;
- (id)contentAttributedString;
- (id)description;
- (void)addToken:(id)token;
- (void)insertToken:(id)token atIndex:(unint64_t)index;
- (void)removeToken:(id)token;
@end

@implementation _MKLineHeaderModel

- (UIView)ownerView
{
  WeakRetained = objc_loadWeakRetained(&self->_ownerView);

  return WeakRetained;
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [&stru_1F15B23C0 mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_tokens;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) description];
        [v3 appendFormat:@"%@\n", v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x1E696AEC0];
  contentAttributedString = [(_MKLineHeaderModel *)self contentAttributedString];
  v12 = [v10 stringWithFormat:@"%@\n%@", contentAttributedString, v3, v14];

  return v12;
}

- (id)_placeCardHeaderSeparatorString
{
  v2 = _placeCardHeaderSeparatorString_separatorString;
  if (!_placeCardHeaderSeparatorString_separatorString)
  {
    v2 = @" · ";
    _placeCardHeaderSeparatorString_separatorString = @" · ";
  }

  return v2;
}

- (id)contentAttributedString
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v28 = [(NSDictionary *)self->_fontAttribute mutableCopy];
  colorProvider = self->_colorProvider;
  if (colorProvider)
  {
    WeakRetained = objc_loadWeakRetained(&self->_ownerView);
    mk_theme = [WeakRetained mk_theme];
    v7 = colorProvider[2](colorProvider, mk_theme);
    [v28 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB650]];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_tokens;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = *v35;
    v10 = *MEMORY[0x1E69DB648];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        if ([v3 length] && (objc_msgSend(v12, "isEmpty") & 1) == 0)
        {
          v13 = objc_alloc(MEMORY[0x1E696AAB0]);
          _placeCardHeaderSeparatorString = [(_MKLineHeaderModel *)self _placeCardHeaderSeparatorString];
          v15 = [v13 initWithString:_placeCardHeaderSeparatorString attributes:v28];
          [v3 appendAttributedString:v15];
        }

        attributedString = [v12 attributedString];
        v17 = [attributedString mutableCopy];

        if (v17)
        {
          v30 = 0;
          v31 = &v30;
          v32 = 0x2020000000;
          v33 = 1;
          v18 = [v17 length];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __45___MKLineHeaderModel_contentAttributedString__block_invoke;
          v29[3] = &unk_1E76C9030;
          v29[4] = &v30;
          [v17 enumerateAttribute:v10 inRange:0 options:v18 usingBlock:{0, v29}];
          if (*(v31 + 24) == 1)
          {
            fontAttribute = self->_fontAttribute;
            if (fontAttribute)
            {
              [v17 addAttributes:fontAttribute range:{0, objc_msgSend(v17, "length")}];
            }
          }

          _Block_object_dispose(&v30, 8);
        }

        else
        {
          string = [v12 string];
          v21 = [string length] == 0;

          if (v21)
          {
            v17 = 0;
          }

          else
          {
            v22 = objc_alloc(MEMORY[0x1E696AD40]);
            string2 = [v12 string];
            v17 = [v22 initWithString:string2 attributes:v28];
          }
        }

        if ([v17 length])
        {
          [v3 appendAttributedString:v17];
        }
      }

      v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  if (self->_shouldUseEmptyPlaceholder && ![v3 length])
  {
    v24 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@" " attributes:v28];

    v3 = v24;
  }

  v25 = [v3 copy];

  return v25;
}

- (void)removeToken:(id)token
{
  if (token)
  {
    [(NSMutableArray *)self->_tokens removeObject:?];
  }
}

- (void)insertToken:(id)token atIndex:(unint64_t)index
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v8 = tokenCopy;
    v7 = [(NSMutableArray *)self->_tokens count];
    tokenCopy = v8;
    if (v7 > index)
    {
      [(NSMutableArray *)self->_tokens insertObject:v8 atIndex:index];
      tokenCopy = v8;
    }
  }
}

- (void)addToken:(id)token
{
  if (token)
  {
    [(NSMutableArray *)self->_tokens addObject:?];
  }
}

- (id)colorProvider
{
  if (self->_colorProvider)
  {
    colorProvider = self->_colorProvider;
  }

  else
  {
    colorProvider = &__block_literal_global_19576;
  }

  v3 = MEMORY[0x1A58E9F30](colorProvider, a2);

  return v3;
}

- (_MKLineHeaderModel)init
{
  v6.receiver = self;
  v6.super_class = _MKLineHeaderModel;
  v2 = [(_MKLineHeaderModel *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695E0F0] mutableCopy];
    tokens = v2->_tokens;
    v2->_tokens = v3;
  }

  return v2;
}

@end