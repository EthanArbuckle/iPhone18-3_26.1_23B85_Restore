@interface MKArtworkLabelView
- (void)setFormattedString:(id)a3;
@end

@implementation MKArtworkLabelView

- (void)setFormattedString:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(MKServerFormattedString *)self->_formattedString isEqualToServerFormattedString:v5])
  {
    objc_storeStrong(&self->_formattedString, a3);
    [(_MKUILabel *)self set_mapkit_themeColorProvider:&__block_literal_global_7326];
    v6 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
    v10 = *MEMORY[0x1E69DB648];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v5 multiPartAttributedStringWithAttributes:v7];
    v9 = [v8 attributedString];
    [(MKArtworkLabelView *)self setAttributedText:v9];
  }
}

@end