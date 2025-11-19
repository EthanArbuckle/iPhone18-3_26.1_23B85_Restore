@interface LSApplicationRecord(UserActivity)
+ (uint64_t)applicationRecordsForUserActivityType:()UserActivity limit:error:;
@end

@implementation LSApplicationRecord(UserActivity)

+ (uint64_t)applicationRecordsForUserActivityType:()UserActivity limit:error:
{
  v8 = result;
  while (2)
  {
    v93 = (a2 - 16);
    v9 = v8;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = v9;
          v10 = (a2 - v9) >> 4;
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(v8, (v8 + 16), v93, a3);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(v8, v8 + 16, v8 + 32, v93, a3);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(v8, v8 + 16, v8 + 32, v8 + 48, v93, a3);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              result = _LSBundleCompareForActivityContinuationSuitability(***a3, *(a2 - 8), *(v8 + 8));
              if (result == -1)
              {
                v42 = *v8;
                *v8 = *(a2 - 16);
                *(a2 - 16) = v42;
                v43 = *(v8 + 8);
                *(v8 + 8) = *(a2 - 8);
                *(a2 - 8) = v43;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v44 = (v8 + 16);
            v46 = v8 == a2 || v44 == a2;
            if (a5)
            {
              if (!v46)
              {
                v47 = 0;
                v48 = v8;
                do
                {
                  v49 = v44;
                  result = _LSBundleCompareForActivityContinuationSuitability(***a3, *(v48 + 3), *(v48 + 1));
                  if (result == -1)
                  {
                    v50 = a2;
                    v51 = *v49;
                    v52 = *(v48 + 3);
                    v53 = v47;
                    while (1)
                    {
                      v54 = v8 + v53;
                      *(v54 + 16) = *(v8 + v53);
                      *(v54 + 24) = *(v8 + v53 + 8);
                      if (!v53)
                      {
                        break;
                      }

                      result = _LSBundleCompareForActivityContinuationSuitability(***a3, v52, *(v54 - 8));
                      v53 -= 16;
                      if (result != -1)
                      {
                        v55 = v8 + v53 + 16;
                        goto LABEL_85;
                      }
                    }

                    v55 = v8;
LABEL_85:
                    *v55 = v51;
                    *(v55 + 8) = v52;
                    a2 = v50;
                  }

                  v44 = v49 + 4;
                  v47 += 16;
                  v48 = v49;
                }

                while (v49 + 4 != a2);
              }
            }

            else if (!v46)
            {
              v84 = (v8 + 24);
              do
              {
                v85 = v44;
                result = _LSBundleCompareForActivityContinuationSuitability(***a3, *(v8 + 24), *(v8 + 8));
                if (result == -1)
                {
                  v86 = a2;
                  v87 = *v85;
                  v88 = *(v8 + 24);
                  v89 = v84;
                  do
                  {
                    v90 = v89;
                    v91 = *(v89 - 6);
                    v92 = *(v89 - 2);
                    v89 -= 2;
                    *(v90 - 2) = v91;
                    *v90 = v92;
                    result = _LSBundleCompareForActivityContinuationSuitability(***a3, v88, *(v90 - 4));
                  }

                  while (result == -1);
                  *(v89 - 2) = v87;
                  *v89 = v88;
                  a2 = v86;
                }

                v44 = v85 + 4;
                v84 += 2;
                v8 = v85;
              }

              while (v85 + 4 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v8 != a2)
            {
              v94 = a2;
              v56 = v11 >> 1;
              v57 = v11 >> 1;
              do
              {
                v58 = v57;
                if (v56 >= v57)
                {
                  v59 = (2 * v57) | 1;
                  v60 = v8 + 16 * v59;
                  if (2 * v57 + 2 < v10)
                  {
                    v61 = _LSBundleCompareForActivityContinuationSuitability(***a3, *(v60 + 8), *(v60 + 24));
                    v60 += 16 * (v61 == -1);
                    if (v61 == -1)
                    {
                      v59 = 2 * v58 + 2;
                    }
                  }

                  v62 = v8 + 16 * v58;
                  result = _LSBundleCompareForActivityContinuationSuitability(***a3, *(v60 + 8), *(v62 + 8));
                  if (result != -1)
                  {
                    v97 = *v62;
                    v63 = *(v62 + 8);
                    do
                    {
                      v64 = v62;
                      v62 = v60;
                      *v64 = *v60;
                      *(v64 + 8) = *(v60 + 8);
                      if (v56 < v59)
                      {
                        break;
                      }

                      v65 = (2 * v59) | 1;
                      v60 = v8 + 16 * v65;
                      v66 = 2 * v59 + 2;
                      if (v66 < v10)
                      {
                        v67 = _LSBundleCompareForActivityContinuationSuitability(***a3, *(v60 + 8), *(v60 + 24));
                        v60 += 16 * (v67 == -1);
                        if (v67 == -1)
                        {
                          v65 = v66;
                        }
                      }

                      result = _LSBundleCompareForActivityContinuationSuitability(***a3, *(v60 + 8), v63);
                      v59 = v65;
                    }

                    while (result != -1);
                    *v62 = v97;
                    *(v62 + 8) = v63;
                  }
                }

                v57 = v58 - 1;
              }

              while (v58);
              v68 = v94;
              do
              {
                v69 = 0;
                v98 = *v8;
                v95 = *(v8 + 8);
                v70 = v8;
                do
                {
                  v71 = v70 + 16 * v69;
                  v72 = v71 + 16;
                  v73 = (2 * v69) | 1;
                  v74 = 2 * v69 + 2;
                  if (v74 >= v10)
                  {
                    v69 = (2 * v69) | 1;
                  }

                  else
                  {
                    result = _LSBundleCompareForActivityContinuationSuitability(***a3, *(v71 + 24), *(v71 + 40));
                    if (result == -1)
                    {
                      v72 = v71 + 32;
                      v69 = v74;
                    }

                    else
                    {
                      v69 = v73;
                    }
                  }

                  *v70 = *v72;
                  *(v70 + 8) = *(v72 + 8);
                  v70 = v72;
                }

                while (v69 <= ((v10 - 2) >> 1));
                v75 = v68 - 16;
                if (v72 == v68 - 16)
                {
                  *v72 = v98;
                  *(v72 + 8) = v95;
                }

                else
                {
                  *v72 = *(v68 - 16);
                  *(v72 + 8) = *(v68 - 8);
                  *(v68 - 16) = v98;
                  *(v68 - 8) = v95;
                  v76 = (v72 - v8 + 16) >> 4;
                  v77 = v76 < 2;
                  v78 = v76 - 2;
                  if (!v77)
                  {
                    v79 = v78 >> 1;
                    v80 = v8 + 16 * (v78 >> 1);
                    result = _LSBundleCompareForActivityContinuationSuitability(***a3, *(v80 + 8), *(v72 + 8));
                    if (result == -1)
                    {
                      v81 = *v72;
                      v82 = *(v72 + 8);
                      do
                      {
                        v83 = v72;
                        v72 = v80;
                        *v83 = *v80;
                        *(v83 + 8) = *(v80 + 8);
                        if (!v79)
                        {
                          break;
                        }

                        v79 = (v79 - 1) >> 1;
                        v80 = v8 + 16 * v79;
                        result = _LSBundleCompareForActivityContinuationSuitability(***a3, *(v80 + 8), v82);
                      }

                      while (result == -1);
                      *v72 = v81;
                      *(v72 + 8) = v82;
                    }
                  }
                }

                v68 = v75;
                v77 = v10-- <= 2;
              }

              while (!v77);
            }

            return result;
          }

          v12 = v10 >> 1;
          v13 = v8 + 16 * (v10 >> 1);
          if (v10 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>((v8 + 16 * (v10 >> 1)), v8, v93, a3);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(v8, (v8 + 16 * (v10 >> 1)), v93, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>((v8 + 16), (v13 - 16), (a2 - 32), a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>((v8 + 32), (v8 + 16 + 16 * v12), (a2 - 48), a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>((v13 - 16), (v8 + 16 * (v10 >> 1)), (v8 + 16 + 16 * v12), a3);
            v14 = *v8;
            *v8 = *v13;
            *v13 = v14;
            v15 = *(v8 + 8);
            *(v8 + 8) = *(v13 + 8);
            *(v13 + 8) = v15;
          }

          --a4;
          if ((a5 & 1) != 0 || _LSBundleCompareForActivityContinuationSuitability(***a3, *(v8 - 8), *(v8 + 8)) == -1)
          {
            break;
          }

          v32 = *v8;
          v33 = *(v8 + 8);
          result = _LSBundleCompareForActivityContinuationSuitability(***a3, v33, *(a2 - 8));
          if (result == -1)
          {
            v35 = v8;
            do
            {
              v9 = v35 + 16;
              result = _LSBundleCompareForActivityContinuationSuitability(***a3, v33, *(v35 + 24));
              v35 = v9;
            }

            while (result != -1);
          }

          else
          {
            v34 = v8 + 16;
            do
            {
              v9 = v34;
              if (v34 >= a2)
              {
                break;
              }

              result = _LSBundleCompareForActivityContinuationSuitability(***a3, v33, *(v34 + 8));
              v34 = v9 + 16;
            }

            while (result != -1);
          }

          v36 = a2;
          if (v9 < a2)
          {
            v37 = a2;
            do
            {
              v36 = v37 - 16;
              result = _LSBundleCompareForActivityContinuationSuitability(***a3, v33, *(v37 - 8));
              v37 = v36;
            }

            while (result == -1);
          }

          while (v9 < v36)
          {
            v38 = *v9;
            *v9 = *v36;
            *v36 = v38;
            v39 = *(v9 + 8);
            *(v9 + 8) = *(v36 + 8);
            *(v36 + 8) = v39;
            do
            {
              v40 = *(v9 + 24);
              v9 += 16;
            }

            while (_LSBundleCompareForActivityContinuationSuitability(***a3, v33, v40) != -1);
            do
            {
              v41 = *(v36 - 8);
              v36 -= 16;
              result = _LSBundleCompareForActivityContinuationSuitability(***a3, v33, v41);
            }

            while (result == -1);
          }

          if (v9 - 16 != v8)
          {
            *v8 = *(v9 - 16);
            *(v8 + 8) = *(v9 - 8);
          }

          a5 = 0;
          *(v9 - 16) = v32;
          *(v9 - 8) = v33;
        }

        v16 = 0;
        v17 = *v8;
        v18 = *(v8 + 8);
        do
        {
          v19 = _LSBundleCompareForActivityContinuationSuitability(***a3, *(v8 + v16 + 24), v18);
          v16 += 16;
        }

        while (v19 == -1);
        v20 = v8 + v16;
        v21 = a2;
        if (v16 == 16)
        {
          v24 = a2;
          while (v20 < v24)
          {
            v22 = v24 - 16;
            v25 = _LSBundleCompareForActivityContinuationSuitability(***a3, *(v24 - 8), v18);
            v24 = v22;
            if (v25 == -1)
            {
              goto LABEL_27;
            }
          }

          v22 = v24;
        }

        else
        {
          do
          {
            v22 = v21 - 16;
            v23 = _LSBundleCompareForActivityContinuationSuitability(***a3, *(v21 - 8), v18);
            v21 = v22;
          }

          while (v23 != -1);
        }

LABEL_27:
        v9 = v8 + v16;
        if (v20 < v22)
        {
          v26 = v22;
          do
          {
            v27 = *v9;
            *v9 = *v26;
            *v26 = v27;
            v28 = *(v9 + 8);
            *(v9 + 8) = *(v26 + 8);
            *(v26 + 8) = v28;
            do
            {
              v29 = *(v9 + 24);
              v9 += 16;
            }

            while (_LSBundleCompareForActivityContinuationSuitability(***a3, v29, v18) == -1);
            do
            {
              v30 = *(v26 - 8);
              v26 -= 16;
            }

            while (_LSBundleCompareForActivityContinuationSuitability(***a3, v30, v18) != -1);
          }

          while (v9 < v26);
        }

        if (v9 - 16 != v8)
        {
          *v8 = *(v9 - 16);
          *(v8 + 8) = *(v9 - 8);
        }

        *(v9 - 16) = v17;
        *(v9 - 8) = v18;
        if (v20 >= v22)
        {
          break;
        }

LABEL_38:
        result = std::__introsort<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,false>(v8, v9 - 16, a3, a4, a5 & 1);
        a5 = 0;
      }

      v31 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *>(v8, v9 - 16, a3);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *>(v9, a2, a3);
      if (result)
      {
        break;
      }

      if (!v31)
      {
        goto LABEL_38;
      }
    }

    a2 = v9 - 16;
    if (!v31)
    {
      continue;
    }

    return result;
  }
}

@end