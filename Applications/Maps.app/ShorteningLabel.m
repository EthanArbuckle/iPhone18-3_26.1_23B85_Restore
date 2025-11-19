@interface ShorteningLabel
- (void)_updateAttributedText;
- (void)layoutSubviews;
- (void)setAttributedTextAlternatives:(id)a3;
- (void)setFont:(id)a3;
@end

@implementation ShorteningLabel

- (void)_updateAttributedText
{
  [(ShorteningLabel *)self bounds];
  if (v3 > 0.0)
  {
    v4 = v3;
    v5 = [(ShorteningLabel *)self attributedTextAlternatives];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(ShorteningLabel *)self attributedTextAlternatives];
      v8 = [v7 count];

      if (v8)
      {
        v9 = [(ShorteningLabel *)self attributedTextAlternatives];
        v10 = [v9 lastObject];

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [(ShorteningLabel *)self attributedTextAlternatives];
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v19 = v10;
          v14 = *v21;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v10 = [[NSMutableAttributedString alloc] initWithAttributedString:*(*(&v20 + 1) + 8 * i)];
              v24 = NSFontAttributeName;
              v16 = [(ShorteningLabel *)self font];
              v25 = v16;
              v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
              [v10 setAttributes:v17 range:{0, objc_msgSend(v10, "length")}];

              [v10 size];
              if (v18 <= v4)
              {

                goto LABEL_14;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v10 = v19;
        }

LABEL_14:

        [(ShorteningLabel *)self setAttributedText:v10];
      }

      else
      {
        [(ShorteningLabel *)self setAttributedText:0];
      }

      self->_lastUpdateWidth = v4;
    }
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = ShorteningLabel;
  [(ShorteningLabel *)&v4 layoutSubviews];
  [(ShorteningLabel *)self bounds];
  if (v3 != self->_lastUpdateWidth)
  {
    [(ShorteningLabel *)self _updateAttributedText];
  }
}

- (void)setAttributedTextAlternatives:(id)a3
{
  v5 = a3;
  attributedTextAlternatives = self->_attributedTextAlternatives;
  if (attributedTextAlternatives != v5)
  {
    v8 = v5;
    v7 = [(NSArray *)attributedTextAlternatives isEqualToArray:v5];
    v5 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_attributedTextAlternatives, a3);
      [(ShorteningLabel *)self _updateAttributedText];
      v5 = v8;
    }
  }
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(ShorteningLabel *)self font];

  v6.receiver = self;
  v6.super_class = ShorteningLabel;
  [(ShorteningLabel *)&v6 setFont:v4];

  if (v5 != v4)
  {
    [(ShorteningLabel *)self _updateAttributedText];
  }
}

@end