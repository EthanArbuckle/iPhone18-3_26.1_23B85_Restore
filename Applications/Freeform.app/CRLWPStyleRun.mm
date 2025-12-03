@interface CRLWPStyleRun
- (BOOL)coalesceWith:(id)with;
- (CRLWPFontHeightInfo)fontHeightInfo;
- (CRLWPStyleRun)init;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setFontHeightInfo:(CRLWPFontHeightInfo *)info;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setCharIndex:{-[CRLWPStyleRun charIndex](self, "charIndex")}];
  [v4 setRunLength:{-[CRLWPStyleRun runLength](self, "runLength")}];
  [v4 setFlags:{-[CRLWPStyleRun flags](self, "flags")}];
  characterStyle = [(CRLWPStyleRun *)self characterStyle];
  [v4 setCharacterStyle:characterStyle];

  [v4 setCtFont:{-[CRLWPStyleRun ctFont](self, "ctFont")}];
  attributes = [(CRLWPStyleRun *)self attributes];
  [v4 setAttributes:attributes];

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

- (BOOL)coalesceWith:(id)with
{
  withCopy = with;
  charIndex = [(CRLWPStyleRun *)self charIndex];
  runLength = [(CRLWPStyleRun *)self runLength];
  if ((runLength + charIndex) != [withCopy charIndex])
  {
    goto LABEL_19;
  }

  flags = [(CRLWPStyleRun *)self flags];
  if (flags != [withCopy flags])
  {
    goto LABEL_19;
  }

  characterStyle = [(CRLWPStyleRun *)self characterStyle];
  characterStyle2 = [withCopy characterStyle];
  if (characterStyle != characterStyle2)
  {
    characterStyle3 = [(CRLWPStyleRun *)self characterStyle];
    characterStyle4 = [withCopy characterStyle];
    if (![characterStyle3 isEqual:characterStyle4])
    {
      goto LABEL_17;
    }
  }

  ctFont = [(CRLWPStyleRun *)self ctFont];
  if (ctFont != [withCopy ctFont] && !CFEqual(-[CRLWPStyleRun ctFont](self, "ctFont"), objc_msgSend(withCopy, "ctFont")))
  {
    if (characterStyle == characterStyle2)
    {
LABEL_18:

LABEL_19:
      v18 = 0;
      goto LABEL_20;
    }

LABEL_17:

    goto LABEL_18;
  }

  attributes = [(CRLWPStyleRun *)self attributes];
  attributes2 = [withCopy attributes];
  v14 = attributes2;
  if (attributes == attributes2)
  {

    if (characterStyle != characterStyle2)
    {
    }
  }

  else
  {
    attributes3 = [(CRLWPStyleRun *)self attributes];
    attributes4 = [withCopy attributes];
    v17 = [attributes3 isEqualToDictionary:attributes4];

    if (characterStyle != characterStyle2)
    {
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  -[CRLWPStyleRun setRunLength:](self, "setRunLength:", [withCopy runLength] + -[CRLWPStyleRun runLength](self, "runLength"));
  v18 = 1;
LABEL_20:

  return v18;
}

- (_NSRange)range
{
  charIndex = [(CRLWPStyleRun *)self charIndex];
  runLength = [(CRLWPStyleRun *)self runLength];
  v5 = charIndex;
  result.length = runLength;
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

- (void)setFontHeightInfo:(CRLWPFontHeightInfo *)info
{
  v3 = *&info->spaceBefore;
  *&self->_fontHeightInfo.ascent = *&info->ascent;
  *&self->_fontHeightInfo.spaceBefore = v3;
  v4 = *&info->descent;
  v5 = *&info->leadingBelow;
  v6 = *&info->verticalHeight;
  *&self->_fontHeightInfo.underlinePosition = *&info->underlinePosition;
  *&self->_fontHeightInfo.verticalHeight = v6;
  *&self->_fontHeightInfo.leadingBelow = v5;
  *&self->_fontHeightInfo.descent = v4;
}

@end