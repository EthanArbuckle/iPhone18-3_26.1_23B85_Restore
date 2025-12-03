@interface ShorteningLabel
- (void)_updateAttributedText;
- (void)layoutSubviews;
- (void)setAttributedTextAlternatives:(id)alternatives;
- (void)setFont:(id)font;
@end

@implementation ShorteningLabel

- (void)_updateAttributedText
{
  [(ShorteningLabel *)self bounds];
  if (v3 > 0.0)
  {
    v4 = v3;
    attributedTextAlternatives = [(ShorteningLabel *)self attributedTextAlternatives];
    v6 = [attributedTextAlternatives count];

    if (v6)
    {
      attributedTextAlternatives2 = [(ShorteningLabel *)self attributedTextAlternatives];
      v8 = [attributedTextAlternatives2 count];

      if (v8)
      {
        attributedTextAlternatives3 = [(ShorteningLabel *)self attributedTextAlternatives];
        lastObject = [attributedTextAlternatives3 lastObject];

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        attributedTextAlternatives4 = [(ShorteningLabel *)self attributedTextAlternatives];
        v12 = [attributedTextAlternatives4 countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v19 = lastObject;
          v14 = *v21;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(attributedTextAlternatives4);
              }

              lastObject = [[NSMutableAttributedString alloc] initWithAttributedString:*(*(&v20 + 1) + 8 * i)];
              v24 = NSFontAttributeName;
              font = [(ShorteningLabel *)self font];
              v25 = font;
              v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
              [lastObject setAttributes:v17 range:{0, objc_msgSend(lastObject, "length")}];

              [lastObject size];
              if (v18 <= v4)
              {

                goto LABEL_14;
              }
            }

            v13 = [attributedTextAlternatives4 countByEnumeratingWithState:&v20 objects:v26 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          lastObject = v19;
        }

LABEL_14:

        [(ShorteningLabel *)self setAttributedText:lastObject];
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

- (void)setAttributedTextAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  attributedTextAlternatives = self->_attributedTextAlternatives;
  if (attributedTextAlternatives != alternativesCopy)
  {
    v8 = alternativesCopy;
    v7 = [(NSArray *)attributedTextAlternatives isEqualToArray:alternativesCopy];
    alternativesCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_attributedTextAlternatives, alternatives);
      [(ShorteningLabel *)self _updateAttributedText];
      alternativesCopy = v8;
    }
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  font = [(ShorteningLabel *)self font];

  v6.receiver = self;
  v6.super_class = ShorteningLabel;
  [(ShorteningLabel *)&v6 setFont:fontCopy];

  if (font != fontCopy)
  {
    [(ShorteningLabel *)self _updateAttributedText];
  }
}

@end