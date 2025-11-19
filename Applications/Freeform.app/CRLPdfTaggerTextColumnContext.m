@interface CRLPdfTaggerTextColumnContext
- (CRLPdfTaggerTextColumnContext)initWithStateOfTagger:(id)a3 column:(id)a4 limitSelection:(id)a5;
- (CRLPdfTaggerTextColumnOwnerContext)textColumnOwner;
- (CRLWPColumn)column;
- (CRLWPSelection)limitSelection;
- (_NSRange)range;
@end

@implementation CRLPdfTaggerTextColumnContext

- (CRLPdfTaggerTextColumnContext)initWithStateOfTagger:(id)a3 column:(id)a4 limitSelection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v63.receiver = self;
  v63.super_class = CRLPdfTaggerTextColumnContext;
  v11 = [(CRLPdfTaggerContext *)&v63 initWithStateOfTagger:v8];
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = [v8 topOfContextStack];
  v55 = v8;
  objc_storeWeak(&v11->_textColumnOwner, v12);

  WeakRetained = objc_loadWeakRetained(&v11->_textColumnOwner);
  objc_opt_class();
  LOBYTE(v12) = objc_opt_isKindOfClass();

  if ((v12 & 1) == 0)
  {
    sub_10052E5D0(0, "The parent of a column must be a column owner", v14, v15, v16, v17, v18, v19, v8);
  }

  objc_storeWeak(&v11->_column, v9);
  objc_storeWeak(&v11->_limitSelection, v10);
  v20 = [v9 range];
  p_location = &v11->_range.location;
  v11->_range.location = v20;
  v11->_range.length = v22;
  if (v10)
  {
    v23 = [v9 range];
    v25 = v24;
    v64.location = [v10 superRange];
    location = v64.location;
    length = v64.length;
    v65.location = v23;
    v65.length = v25;
    v28 = NSIntersectionRange(v64, v65);
    if (length)
    {
      v29 = v28.length;
      if (!v28.length)
      {
        v30 = 0;
        v20 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_25;
      }

      location = v28.location;
    }

    else
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      if (location < v23)
      {
LABEL_12:
        v30 = 0;
        goto LABEL_25;
      }

      v30 = 0;
      if (location - v23 >= v25)
      {
LABEL_25:
        *p_location = v20;
        v11->_range.length = v30;
        goto LABEL_26;
      }

      v29 = 0;
    }

    v20 = 0x7FFFFFFFFFFFFFFFLL;
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = [v9 lineCount];
      v38 = 0;
      if (v37)
      {
        while (1)
        {
          v20 = [v9 rangeOfLineFragmentAtIndex:{v38, v55}];
          if (location >= v20 && location - v20 < v39)
          {
            break;
          }

          if (v37 == ++v38)
          {
            v20 = 0x7FFFFFFFFFFFFFFFLL;
            v38 = v37;
            break;
          }
        }
      }

      sub_10052E5D0(v20 != 0x7FFFFFFFFFFFFFFFLL, "Range start couldn't be found", v31, v32, v33, v34, v35, v36, v55);
      v46 = 0x7FFFFFFFFFFFFFFFLL;
      if (v38 < v37)
      {
        v47 = location + v29;
        while (1)
        {
          v48 = [v9 rangeOfLineFragmentAtIndex:v38];
          v46 = v48 + v49;
          if (v47 <= v48 + v49)
          {
            break;
          }

          if (v37 == ++v38)
          {
            v46 = 0x7FFFFFFFFFFFFFFFLL;
            break;
          }
        }
      }

      sub_10052E5D0(v46 != 0x7FFFFFFFFFFFFFFFLL, "Range end couldn't be found", v40, v41, v42, v43, v44, v45, v56);
      v30 = v46 - v20;
      v8 = v57;
      goto LABEL_25;
    }

    goto LABEL_12;
  }

LABEL_26:
  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v50 = [v9 storage];
    sub_1002407EC(obj, v50, 0, [v50 paragraphIndexAtCharIndex:*p_location], objc_msgSend(v50, "paragraphIndexAtCharIndex:", v11->_range.length + *p_location), 1);
    objc_storeStrong(&v11->_paragraphEnumerator._storage, obj[0]);
    objc_storeStrong(&v11->_paragraphEnumerator._styleProvider, obj[1]);
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v11->_paragraphEnumerator._currentTextRange.length = v62;
    *&v11->_paragraphEnumerator._firstParIndex = v52;
    *&v11->_paragraphEnumerator._requireHidden = v53;
    *&v11->_paragraphEnumerator._parIndex = v51;
    sub_10024068C(obj);
  }

LABEL_28:

  return v11;
}

- (CRLPdfTaggerTextColumnOwnerContext)textColumnOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_textColumnOwner);

  return WeakRetained;
}

- (CRLWPColumn)column
{
  WeakRetained = objc_loadWeakRetained(&self->_column);

  return WeakRetained;
}

- (CRLWPSelection)limitSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_limitSelection);

  return WeakRetained;
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end