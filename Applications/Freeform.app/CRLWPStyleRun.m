@interface CRLWPStyleRun
- (BOOL)coalesceWith:(id)a3;
- (CRLWPFontHeightInfo)fontHeightInfo;
- (CRLWPStyleRun)init;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setFontHeightInfo:(CRLWPFontHeightInfo *)a3;
@end

@implementation CRLWPStyleRun

- (CRLWPStyleRun)init
{
  v3.receiver = self;
  v3.super_class = CRLWPStyleRun;
  result = [(CRLWPStyleRun *)&v3 init];
  if (result)
  {
    result->_charIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setCharIndex:{-[CRLWPStyleRun charIndex](self, "charIndex")}];
  [v4 setRunLength:{-[CRLWPStyleRun runLength](self, "runLength")}];
  [v4 setFlags:{-[CRLWPStyleRun flags](self, "flags")}];
  v5 = [(CRLWPStyleRun *)self characterStyle];
  [v4 setCharacterStyle:v5];

  [v4 setCtFont:{-[CRLWPStyleRun ctFont](self, "ctFont")}];
  v6 = [(CRLWPStyleRun *)self attributes];
  [v4 setAttributes:v6];

  [(CRLWPStyleRun *)self fontHeightInfo];
  v8[2] = v8[8];
  v8[3] = v8[9];
  v8[4] = v8[10];
  v8[5] = v8[11];
  v8[0] = v8[6];
  v8[1] = v8[7];
  [v4 setFontHeightInfo:v8];
  return v4;
}

- (BOOL)coalesceWith:(id)a3
{
  v5 = a3;
  v6 = [(CRLWPStyleRun *)self charIndex];
  v7 = [(CRLWPStyleRun *)self runLength];
  if ((v7 + v6) != [v5 charIndex])
  {
    goto LABEL_19;
  }

  v8 = [(CRLWPStyleRun *)self flags];
  if (v8 != [v5 flags])
  {
    goto LABEL_19;
  }

  v9 = [(CRLWPStyleRun *)self characterStyle];
  v10 = [v5 characterStyle];
  if (v9 != v10)
  {
    v20 = [(CRLWPStyleRun *)self characterStyle];
    v3 = [v5 characterStyle];
    if (![v20 isEqual:v3])
    {
      goto LABEL_17;
    }
  }

  v11 = [(CRLWPStyleRun *)self ctFont];
  if (v11 != [v5 ctFont] && !CFEqual(-[CRLWPStyleRun ctFont](self, "ctFont"), objc_msgSend(v5, "ctFont")))
  {
    if (v9 == v10)
    {
LABEL_18:

LABEL_19:
      v18 = 0;
      goto LABEL_20;
    }

LABEL_17:

    goto LABEL_18;
  }

  v12 = [(CRLWPStyleRun *)self attributes];
  v13 = [v5 attributes];
  v14 = v13;
  if (v12 == v13)
  {

    if (v9 != v10)
    {
    }
  }

  else
  {
    v15 = [(CRLWPStyleRun *)self attributes];
    v16 = [v5 attributes];
    v17 = [v15 isEqualToDictionary:v16];

    if (v9 != v10)
    {
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  -[CRLWPStyleRun setRunLength:](self, "setRunLength:", [v5 runLength] + -[CRLWPStyleRun runLength](self, "runLength"));
  v18 = 1;
LABEL_20:

  return v18;
}

- (_NSRange)range
{
  v3 = [(CRLWPStyleRun *)self charIndex];
  v4 = [(CRLWPStyleRun *)self runLength];
  v5 = v3;
  result.length = v4;
  result.location = v5;
  return result;
}

- (CRLWPFontHeightInfo)fontHeightInfo
{
  v3 = *&self[1].attachmentHeight;
  *&retstr->descent = *&self->underlineThickness;
  *&retstr->leadingBelow = v3;
  v4 = *&self[1].leadingAbove;
  *&retstr->verticalHeight = *&self[1].capHeight;
  *&retstr->underlinePosition = v4;
  v5 = *&self->xHeight;
  *&retstr->spaceBefore = *&self->spaceAfter;
  *&retstr->ascent = v5;
  return self;
}

- (void)setFontHeightInfo:(CRLWPFontHeightInfo *)a3
{
  v3 = *&a3->spaceBefore;
  *&self->_fontHeightInfo.ascent = *&a3->ascent;
  *&self->_fontHeightInfo.spaceBefore = v3;
  v4 = *&a3->descent;
  v5 = *&a3->leadingBelow;
  v6 = *&a3->verticalHeight;
  *&self->_fontHeightInfo.underlinePosition = *&a3->underlinePosition;
  *&self->_fontHeightInfo.verticalHeight = v6;
  *&self->_fontHeightInfo.leadingBelow = v5;
  *&self->_fontHeightInfo.descent = v4;
}

@end