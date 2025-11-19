@interface THFlowBodyLayout
- (THFlowBodyLayout)layoutWithLayoutManager:(id)a3 range:(_NSRange)a4;
- (_NSRange)expandedRangeForLayoutRange:(_NSRange)a3 styleProvider:(id)a4;
@end

@implementation THFlowBodyLayout

- (THFlowBodyLayout)layoutWithLayoutManager:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THFlowBodyLayout *)self info])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THFlowBodyLayout *)self isLaidOut])
  {
    [(THBodyLayout *)self createColumns];
  }

  [a3 layoutIntoTarget:self withRange:{location, length}];
  v9 = v8;
  if (location != [(THBodyLayout *)self columnRange]|| length != v10)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THFlowBodyLayout *)self isLaidOut])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v11 = v9;
  [(THFlowBodyLayout *)self setTextHeight:ceilf(v11)];

  return [(THBodyLayout *)self invalidateSize];
}

- (_NSRange)expandedRangeForLayoutRange:(_NSRange)a3 styleProvider:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = [-[THFlowBodyLayout info](self "info")];
  v7 = v6;
  if (location)
  {
    v8 = [v6 paragraphIndexAtCharIndex:location - 1];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    v9 = length;
    v10 = location + length;
    v11 = location;
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v13 = [a4 paragraphStyleAtParIndex:v8 effectiveRange:v41];
      objc_opt_class();
      [v13 objectForProperty:109];
      v14 = TSUDynamicCast();
      v15 = v41[0];
      if (v14)
      {
        break;
      }

      if ([v7 characterAtIndex:v41[0]] != 65532 || (objc_opt_class(), objc_msgSend(v7, "attachmentAtCharIndex:", v15), (v16 = TSUDynamicCast()) == 0) || (v17 = v16, objc_opt_class(), objc_msgSend(v17, "drawable"), !TSUDynamicCast()))
      {
        if (v8)
        {
          --v8;
        }

        else
        {
          v8 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v8 != 0x7FFFFFFFFFFFFFFFLL && v12 <= 3)
        {
          ++v12;
          if (location - v15 < 0x800)
          {
            continue;
          }
        }
      }

      goto LABEL_5;
    }

    v10 = location + length;
    if (v41[0] <= location + length)
    {
      v18 = location + length;
    }

    else
    {
      v18 = v41[0];
    }

    if (v41[0] >= location + length)
    {
      v11 = location + length;
    }

    else
    {
      v11 = v41[0];
    }

    v9 = v18 - v11;
  }

  v19 = [v7 length];
  if (v10)
  {
    v20 = v19;
    v21 = [v7 paragraphIndexAtCharIndex:v10 - 1];
    if (v21 != 0x7FFFFFFFFFFFFFFFLL && v10 >= location)
    {
      v22 = v21;
      v38 = v11;
      v40 = v9;
      v23 = 0;
      v24 = v10;
      while (1)
      {
        if (v24 < v20 && [v7 characterAtIndex:v24] == 65532)
        {
          objc_opt_class();
          [v7 attachmentAtCharIndex:v24];
          v25 = TSUDynamicCast();
          if (v25)
          {
            v26 = v25;
            objc_opt_class();
            [v26 drawable];
            if (TSUDynamicCast())
            {
              break;
            }
          }
        }

        v27 = [a4 paragraphStyleAtParIndex:v22 effectiveRange:{v41, v38}];
        objc_opt_class();
        [v27 objectForProperty:109];
        if (TSUDynamicCast())
        {
          if (v10 >= v20 || (v28 = v41[0], v29 = [v7 paragraphIndexAtCharIndex:v10], v29 == 0x7FFFFFFFFFFFFFFFLL) || v23 > 4)
          {
            v24 = v10;
          }

          else
          {
            v24 = v10;
            if (v10 - v28 <= 0x7FF)
            {
              v30 = v29;
              do
              {
                v41[0] = [v7 textRangeForParagraphAtIndex:v30];
                v41[1] = v31;
                v24 = v41[0] + v31;
                if (v41[0] + v31 >= v20 || v30 == 0x7FFFFFFFFFFFFFFELL || v23 > 3)
                {
                  break;
                }

                ++v30;
                ++v23;
              }

              while (v24 - v28 < 0x800);
            }
          }

          break;
        }

        if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          ++v23;
          v24 = v41[0];
          --v22;
          if (v41[0] >= location)
          {
            continue;
          }
        }

        v11 = v38;
        v9 = v40;
        goto LABEL_60;
      }

      v11 = v38;
      v34 = v40 + v38;
      if (v40 + v38 <= v24)
      {
        v34 = v24;
      }

      if (v38 <= v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = v38;
      }

      if (v38 >= v34)
      {
        v11 = v34;
      }

      v9 = v35 - v11;
    }
  }

LABEL_60:
  v36 = v11;
  v37 = v9;
  result.length = v37;
  result.location = v36;
  return result;
}

@end