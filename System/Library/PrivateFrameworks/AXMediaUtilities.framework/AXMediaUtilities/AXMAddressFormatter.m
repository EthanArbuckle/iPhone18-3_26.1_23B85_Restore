@interface AXMAddressFormatter
+ (void)replaceDirectionalAbbreviations:(id *)a3;
@end

@implementation AXMAddressFormatter

+ (void)replaceDirectionalAbbreviations:(id *)a3
{
  v4 = [*a3 rangeOfString:@" N "];
  v5 = *a3;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = @" N ";
LABEL_21:
    v22 = @" North ";
    goto LABEL_22;
  }

  v6 = [v5 rangeOfString:@" N. "];
  v5 = *a3;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = @" N. ";
    goto LABEL_21;
  }

  v7 = [v5 rangeOfString:@" S "];
  v5 = *a3;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = @" S ";
LABEL_64:
    v22 = @" South ";
    goto LABEL_22;
  }

  v8 = [v5 rangeOfString:@" S. "];
  v5 = *a3;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = @" S. ";
    goto LABEL_64;
  }

  v9 = [v5 rangeOfString:@" E "];
  v5 = *a3;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = @" E ";
LABEL_71:
    v22 = @" East ";
    goto LABEL_22;
  }

  v10 = [v5 rangeOfString:@" E. "];
  v5 = *a3;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = @" E. ";
    goto LABEL_71;
  }

  v11 = [v5 rangeOfString:@" W "];
  v5 = *a3;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = @" W ";
LABEL_78:
    v22 = @" West ";
    goto LABEL_22;
  }

  v12 = [v5 rangeOfString:@" W. "];
  v5 = *a3;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = @" W. ";
    goto LABEL_78;
  }

  v13 = [v5 rangeOfString:@" NE "];
  v5 = *a3;
  v14 = @" NE ";
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_85:
    v22 = @" North East ";
    goto LABEL_22;
  }

  v15 = [v5 rangeOfString:@" NE "];
  v5 = *a3;
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = @" NE. ";
    goto LABEL_85;
  }

  v16 = [v5 rangeOfString:@" NW "];
  v5 = *a3;
  v14 = @" NW ";
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_91:
    v22 = @" North West ";
    goto LABEL_22;
  }

  v17 = [v5 rangeOfString:@" NW "];
  v5 = *a3;
  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = @" NW. ";
    goto LABEL_91;
  }

  v18 = [v5 rangeOfString:@" SE "];
  v5 = *a3;
  v14 = @" SE ";
  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_97:
    v22 = @" South East ";
    goto LABEL_22;
  }

  v19 = [v5 rangeOfString:@" SE "];
  v5 = *a3;
  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = @" SE. ";
    goto LABEL_97;
  }

  v20 = [v5 rangeOfString:@" SW "];
  v5 = *a3;
  v14 = @" SW ";
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = [v5 rangeOfString:@" SW "];
    v5 = *a3;
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

    v14 = @" SW. ";
  }

  v22 = @" South West ";
LABEL_22:
  v5 = [v5 stringByReplacingOccurrencesOfString:v14 withString:v22];
  *a3 = v5;
LABEL_23:
  v23 = [v5 hasSuffix:@" N"];
  v24 = *a3;
  if (v23)
  {
    v25 = [*a3 length] - 1;
    v26 = @"North";
LABEL_25:
    v27 = v24;
    v28 = 1;
LABEL_29:
    v31 = [v27 stringByReplacingCharactersInRange:v25 withString:{v28, v26}];
    *a3 = v31;
    goto LABEL_30;
  }

  v29 = [*a3 hasSuffix:@" N."];
  v30 = *a3;
  if (v29)
  {
    v25 = [*a3 length] - 2;
    v26 = @"North";
LABEL_28:
    v27 = v30;
    v28 = 2;
    goto LABEL_29;
  }

  v47 = [*a3 hasSuffix:@" S"];
  v24 = *a3;
  if (v47)
  {
    v25 = [*a3 length] - 1;
    v26 = @"South";
    goto LABEL_25;
  }

  v54 = [*a3 hasSuffix:@" S."];
  v30 = *a3;
  if (v54)
  {
    v25 = [*a3 length] - 2;
    v26 = @"South";
    goto LABEL_28;
  }

  v56 = [*a3 hasSuffix:@" E"];
  v24 = *a3;
  if (v56)
  {
    v25 = [*a3 length] - 1;
    v26 = @"East";
    goto LABEL_25;
  }

  v57 = [*a3 hasSuffix:@" E."];
  v30 = *a3;
  if (v57)
  {
    v25 = [*a3 length] - 2;
    v26 = @"East";
    goto LABEL_28;
  }

  v58 = [*a3 hasSuffix:@" W"];
  v24 = *a3;
  if (v58)
  {
    v25 = [*a3 length] - 1;
    v26 = @"West";
    goto LABEL_25;
  }

  v59 = [*a3 hasSuffix:@" W."];
  v30 = *a3;
  if (v59)
  {
    v25 = [*a3 length] - 2;
    v26 = @"West";
    goto LABEL_28;
  }

  v60 = [*a3 hasSuffix:@" NE"];
  v30 = *a3;
  if (v60)
  {
    v25 = [*a3 length] - 2;
    v26 = @"North East";
    goto LABEL_28;
  }

  v61 = [*a3 hasSuffix:@" NE."];
  v31 = *a3;
  if (v61)
  {
    v25 = [*a3 length] - 3;
    v26 = @"North East";
LABEL_83:
    v27 = v31;
    v28 = 3;
    goto LABEL_29;
  }

  v62 = [*a3 hasSuffix:@" NW"];
  v30 = *a3;
  if (v62)
  {
    v25 = [*a3 length] - 2;
    v26 = @"North West";
    goto LABEL_28;
  }

  v63 = [*a3 hasSuffix:@" NW."];
  v31 = *a3;
  if (v63)
  {
    v25 = [*a3 length] - 3;
    v26 = @"North West";
    goto LABEL_83;
  }

  v64 = [*a3 hasSuffix:@" SE"];
  v30 = *a3;
  if (v64)
  {
    v25 = [*a3 length] - 2;
    v26 = @"South East";
    goto LABEL_28;
  }

  v65 = [*a3 hasSuffix:@" SE."];
  v31 = *a3;
  if (v65)
  {
    v25 = [*a3 length] - 3;
    v26 = @"South East";
    goto LABEL_83;
  }

  v66 = [*a3 hasSuffix:@" SW"];
  v30 = *a3;
  if (v66)
  {
    v25 = [*a3 length] - 2;
    v26 = @"South West";
    goto LABEL_28;
  }

  v67 = [*a3 hasSuffix:@" SW."];
  v31 = *a3;
  if (v67)
  {
    v25 = [*a3 length] - 3;
    v26 = @"South West";
    goto LABEL_83;
  }

LABEL_30:
  v32 = [v31 hasSuffix:@" ST"];
  v33 = *a3;
  if (v32)
  {
    v34 = [*a3 length] - 1;
    v35 = @"Street";
LABEL_32:
    v36 = v33;
    v37 = 1;
LABEL_36:
    v39 = [v36 stringByReplacingCharactersInRange:v34 withString:{v37, v35}];
    *a3 = v39;
    goto LABEL_37;
  }

  v38 = [*a3 hasSuffix:@" AVE"];
  v39 = *a3;
  if (v38)
  {
    v34 = [*a3 length] - 2;
    v35 = @"Avenue";
LABEL_35:
    v36 = v39;
    v37 = 2;
    goto LABEL_36;
  }

  v48 = [*a3 hasSuffix:@" RD"];
  v33 = *a3;
  if (v48)
  {
    v34 = [*a3 length] - 1;
    v35 = @"Road";
    goto LABEL_32;
  }

  v55 = [*a3 hasSuffix:@" LN"];
  v39 = *a3;
  if (v55)
  {
    v34 = [*a3 length] - 2;
    v35 = @"Lane";
    goto LABEL_35;
  }

LABEL_37:
  v40 = [v39 rangeOfString:@" ST "];
  v41 = *a3;
  if (v40 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = [v41 rangeOfString:@" AVE "];
    v41 = *a3;
    if (v42 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v43 = [v41 rangeOfString:@" RD "];
      v41 = *a3;
      if (v43 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = [v41 rangeOfString:@" LN "];
        v41 = *a3;
        if (v44 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_51;
        }

        v45 = @" LN ";
        v46 = @" Lane ";
      }

      else
      {
        v45 = @" RD ";
        v46 = @" Road ";
      }
    }

    else
    {
      v45 = @" AVE ";
      v46 = @" Avenue ";
    }
  }

  else
  {
    v45 = @" ST ";
    v46 = @" Street ";
  }

  v41 = [v41 stringByReplacingOccurrencesOfString:v45 withString:v46];
  *a3 = v41;
LABEL_51:
  v49 = [v41 rangeOfString:@" STE "];
  v50 = *a3;
  if (v49 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v51 = [v50 rangeOfString:@" APT "];
    v50 = *a3;
    if (v51 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v50 rangeOfString:@" UNT "] == 0x7FFFFFFFFFFFFFFFLL)
      {
        return;
      }

      v50 = *a3;
      v52 = @" UNT ";
      v53 = @" Unit ";
    }

    else
    {
      v52 = @" APT ";
      v53 = @" Apartment ";
    }
  }

  else
  {
    v52 = @" STE ";
    v53 = @" Suite ";
  }

  *a3 = [v50 stringByReplacingOccurrencesOfString:v52 withString:v53];
}

@end