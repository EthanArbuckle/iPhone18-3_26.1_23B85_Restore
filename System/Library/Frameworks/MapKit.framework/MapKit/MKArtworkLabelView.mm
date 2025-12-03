@interface MKArtworkLabelView
- (void)setFormattedString:(id)string;
@end

@implementation MKArtworkLabelView

- (void)setFormattedString:(id)string
{
  v11[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (![(MKServerFormattedString *)self->_formattedString isEqualToServerFormattedString:stringCopy])
  {
    objc_storeStrong(&self->_formattedString, string);
    [(_MKUILabel *)self set_mapkit_themeColorProvider:&__block_literal_global_7326];
    v6 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
    v10 = *MEMORY[0x1E69DB648];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [stringCopy multiPartAttributedStringWithAttributes:v7];
    attributedString = [v8 attributedString];
    [(MKArtworkLabelView *)self setAttributedText:attributedString];
  }
}

@end