@interface THNoteCardEmptyLayer
- (CGSize)sizeThatFits:(CGSize)a3;
- (THNoteCardEmptyLayer)initWithStudyOptions:(id)a3 unfilteredContentAvailable:(BOOL)a4 darkMode:(BOOL)a5;
- (void)dealloc;
- (void)layoutSublayers;
- (void)p_setupHeadingLabel:(id)a3 bodyLabel:(id)a4;
- (void)p_setupWhenUnfilteredContentIsAvailable;
- (void)p_setupWhenUnfilteredContentIsNotAvailable;
- (void)setLayoutContext:(id)a3;
@end

@implementation THNoteCardEmptyLayer

- (THNoteCardEmptyLayer)initWithStudyOptions:(id)a3 unfilteredContentAvailable:(BOOL)a4 darkMode:(BOOL)a5
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = THNoteCardEmptyLayer;
  v8 = [(THNoteCardEmptyLayer *)&v10 init];
  if (v8)
  {
    v8->_studyOptions = a3;
    v8->_isUnfilteredContentAvailable = v6;
    v8->_darkMode = a5;
    if (v6)
    {
      [(THNoteCardEmptyLayer *)v8 p_setupWhenUnfilteredContentIsAvailable];
    }

    else
    {
      [(THNoteCardEmptyLayer *)v8 p_setupWhenUnfilteredContentIsNotAvailable];
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THNoteCardEmptyLayer;
  [(THNoteCardBodyLayer *)&v3 dealloc];
}

- (void)setLayoutContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = THNoteCardEmptyLayer;
  [(THNoteCardBodyLayer *)&v5 setLayoutContext:?];
  [a3 scale];
  [(THMultiLineLabel *)self->_headingLabel setScale:?];
  [a3 scale];
  [(THMultiLineLabel *)self->_bodyLabel setScale:?];
  [a3 scale];
  [(THInteractiveButtonLayer *)self->_viewAllCardsButton setScale:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(THNoteCardLayoutContext *)[(THNoteCardBodyLayer *)self layoutContext:a3.width] noteCardBodyHeight];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)layoutSublayers
{
  v33.receiver = self;
  v33.super_class = THNoteCardEmptyLayer;
  [(THNoteCardEmptyLayer *)&v33 layoutSublayers];
  [(THNoteCardLayoutContext *)[(THNoteCardBodyLayer *)self layoutContext] scale];
  v4 = v3 + v3;
  v28 = v3;
  v29 = v3 + v3;
  [(THNoteCardEmptyLayer *)self frame];
  [(THMultiLineLabel *)self->_headingLabel setFrame:?];
  [(THNoteCardEmptyLayer *)self frame];
  [(THMultiLineLabel *)self->_bodyLabel setFrame:?];
  [(THMultiLineLabel *)self->_headingLabel resizeToFitCurrentWidth];
  [(THMultiLineLabel *)self->_bodyLabel resizeToFitCurrentWidth];
  [(THMultiLineLabel *)self->_headingLabel bounds];
  v6 = v5;
  v8 = v7;
  [(THMultiLineLabel *)self->_bodyLabel bounds];
  v31 = v10;
  v32 = v9;
  v11 = v10;
  [(THNoteCardEmptyLayer *)self frame];
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v16 = v4 + v8 + v11;
  v17 = (CGRectGetWidth(v34) - v6) * 0.5;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v18 = (CGRectGetHeight(v35) - v16) * 0.5;
  v36.origin.x = v17;
  v36.origin.y = v18;
  v36.size.width = v6;
  v36.size.height = v8;
  v37 = CGRectIntegral(v36);
  [(THMultiLineLabel *)self->_headingLabel setFrame:v37.origin.x, v37.origin.y, v37.size.width, v37.size.height];
  v27 = height;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v19 = (CGRectGetWidth(v38) - v32) * 0.5;
  v39.origin.x = v17;
  v39.origin.y = v18;
  v39.size.width = v6;
  v39.size.height = v8;
  MaxY = CGRectGetMaxY(v39);
  v40.size.height = v31;
  v21 = v29 + MaxY;
  v30 = v19;
  v40.origin.x = v19;
  v40.origin.y = v21;
  v40.size.width = v32;
  v41 = CGRectIntegral(v40);
  [(THMultiLineLabel *)self->_bodyLabel setFrame:v41.origin.x, v41.origin.y, v41.size.width, v41.size.height];
  if (self->_viewAllCardsButton)
  {
    TSDMultiplySizeScalar();
    v23 = v22;
    v25 = v24;
    v42.size.height = v27;
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v26 = (CGRectGetWidth(v42) - v23) * 0.5;
    v43.origin.x = v30;
    v43.size.height = v31;
    v43.origin.y = v21;
    v43.size.width = v32;
    v44.origin.y = v28 * 93.0 + CGRectGetMaxY(v43);
    v44.origin.x = v26;
    v44.size.width = v23;
    v44.size.height = v25;
    v45 = CGRectIntegral(v44);
    [(THInteractiveButtonLayer *)self->_viewAllCardsButton setFrame:v45.origin.x, v45.origin.y, v45.size.width, v45.size.height];
  }
}

- (void)p_setupWhenUnfilteredContentIsAvailable
{
  v3 = [THBundle() localizedStringForKey:@"To view your study cards\\U002C tap View All Cards\\U002C\nor tap the gear icon for more options." value:&stru_471858 table:0];
  -[THNoteCardEmptyLayer p_setupHeadingLabel:bodyLabel:](self, "p_setupHeadingLabel:bodyLabel:", [THBundle() localizedStringForKey:@"You\\U2019ve hidden all study cards." value:&stru_471858 table:0], v3);
  self->_viewAllCardsButton = objc_alloc_init(THInteractiveButtonLayer);
  v4 = [THBundle() localizedStringForKey:@"View All Cards" value:&stru_471858 table:0];
  v5 = [TSUFont systemFontOfSize:14.0];
  [v4 sizeWithAttributes:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", objc_msgSend(v5, "platformFont"), NSFontAttributeName, 0)}];
  self->_buttonSize.width = ceil(v6) + 34.0;
  self->_buttonSize.height = 35.0;
  -[THInteractiveButtonLayer setNormalBackgroundImage:](self->_viewAllCardsButton, "setNormalBackgroundImage:", [+[TSUImage imageNamed:inBundle:](TSUImage imageNamed:@"NoNotes-Button-N" inBundle:{THBundle()), "stretchedImageOfSize:leftCapWidth:rightCapWidth:topCapHeight:bottomCapHeight:", self->_buttonSize.width, self->_buttonSize.height, 10.0, 10.0, 10.0, 10.0}]);
  -[THInteractiveButtonLayer setPressedBackgroundImage:](self->_viewAllCardsButton, "setPressedBackgroundImage:", [+[TSUImage imageNamed:inBundle:](TSUImage imageNamed:@"NoNotes-Button-P" inBundle:{THBundle()), "stretchedImageOfSize:leftCapWidth:rightCapWidth:topCapHeight:bottomCapHeight:", self->_buttonSize.width, self->_buttonSize.height, 10.0, 10.0, 10.0, 10.0}]);
  [(THInteractiveButtonLayer *)self->_viewAllCardsButton setTitle:v4];
  [(THInteractiveButtonLayer *)self->_viewAllCardsButton setTitleFont:v5];
  [(THInteractiveButtonLayer *)self->_viewAllCardsButton setTitleColor:[TSUColor colorWithRed:0.57254902 green:0.57254902 blue:0.57254902 alpha:1.0]];
  [(THInteractiveButtonLayer *)self->_viewAllCardsButton setTitleShadowColor:[TSUColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5]];
  [(THInteractiveButtonLayer *)self->_viewAllCardsButton setTitleShadowOffset:0.0, -1.0];
  [(THInteractiveButtonLayer *)self->_viewAllCardsButton setTitleShadowBlurRadius:1.0];
  [(THNoteCardLayoutContext *)[(THNoteCardBodyLayer *)self layoutContext] scale];
  [(THInteractiveButtonLayer *)self->_viewAllCardsButton setScale:?];
  [(THInteractiveButtonLayer *)self->_viewAllCardsButton setTarget:self action:"viewAllCards:"];
  viewAllCardsButton = self->_viewAllCardsButton;

  [(THNoteCardEmptyLayer *)self addSublayer:viewAllCardsButton];
}

- (void)p_setupWhenUnfilteredContentIsNotAvailable
{
  v3 = [THBundle() localizedStringForKey:@"This chapter doesn\\U2019t have study cards." value:&stru_471858 table:0];
  v4 = [THBundle() localizedStringForKey:@"Study cards are only available for chapters with\nhighlights\\U002C notes\\U002C or glossary terms." value:&stru_471858 table:0];

  [(THNoteCardEmptyLayer *)self p_setupHeadingLabel:v3 bodyLabel:v4];
}

- (void)p_setupHeadingLabel:(id)a3 bodyLabel:(id)a4
{
  v7 = [THMultiLineLabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11 = [(THMultiLineLabel *)v7 initWithFrame:CGRectZero.origin.x, y, width, height];
  self->_headingLabel = v11;
  [(THMultiLineLabel *)v11 setDelegate:self];
  [(THMultiLineLabel *)self->_headingLabel setText:a3];
  [(THMultiLineLabel *)self->_headingLabel setFont:[TSUFont systemFontOfSize:50.0]];
  [(THMultiLineLabel *)self->_headingLabel setTextColor:THNoteCardEmptyHeadingTextColor(self->_darkMode)];
  -[THMultiLineLabel setBackgroundColor:](self->_headingLabel, "setBackgroundColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
  [(THMultiLineLabel *)self->_headingLabel setAlignment:1];
  [(TSUFont *)[(THMultiLineLabel *)self->_headingLabel font] lineHeight];
  [(THMultiLineLabel *)self->_headingLabel setLineHeight:fmax(v12, 50.0)];
  [(THNoteCardLayoutContext *)[(THNoteCardBodyLayer *)self layoutContext] scale];
  [(THMultiLineLabel *)self->_headingLabel setScale:?];
  TSUScreenScale();
  [(THMultiLineLabel *)self->_headingLabel setContentsScale:?];
  [(THNoteCardEmptyLayer *)self addSublayer:self->_headingLabel];
  v13 = [[THMultiLineLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  self->_bodyLabel = v13;
  [(THMultiLineLabel *)v13 setDelegate:self];
  [(THMultiLineLabel *)self->_bodyLabel setText:a4];
  [(THMultiLineLabel *)self->_bodyLabel setFont:[TSUFont systemFontOfSize:25.0]];
  [(THMultiLineLabel *)self->_bodyLabel setTextColor:THNoteCardEmptyBodyTextColor(self->_darkMode)];
  -[THMultiLineLabel setBackgroundColor:](self->_bodyLabel, "setBackgroundColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
  [(THMultiLineLabel *)self->_bodyLabel setAlignment:1];
  [(TSUFont *)[(THMultiLineLabel *)self->_bodyLabel font] lineHeight];
  [(THMultiLineLabel *)self->_bodyLabel setLineHeight:fmax(v14, 33.0)];
  [(THNoteCardLayoutContext *)[(THNoteCardBodyLayer *)self layoutContext] scale];
  [(THMultiLineLabel *)self->_bodyLabel setScale:?];
  TSUScreenScale();
  [(THMultiLineLabel *)self->_bodyLabel setContentsScale:?];
  bodyLabel = self->_bodyLabel;

  [(THNoteCardEmptyLayer *)self addSublayer:bodyLabel];
}

@end