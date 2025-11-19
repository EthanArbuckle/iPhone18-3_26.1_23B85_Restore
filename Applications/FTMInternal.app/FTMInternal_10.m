uint64_t sub_100187E84(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v104 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v104 & 0x7F) << v5;
        if ((v104 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v112 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v112 & 0x7F) << v16;
          if ((v112 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_40;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_40:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        switch(v13)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              v113 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v113 & 0x7F) << v23;
              if ((v113 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_164;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_164:
            *(a1 + 8) = v29;
            goto LABEL_185;
          case 3:
            v71 = 0;
            v72 = 0;
            v73 = 0;
            *(a1 + 56) |= 0x100u;
            while (1)
            {
              v117 = 0;
              v74 = [a2 position] + 1;
              if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
              {
                v76 = [a2 data];
                [v76 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v73 |= (v117 & 0x7F) << v71;
              if ((v117 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              v11 = v72++ >= 9;
              if (v11)
              {
                LOBYTE(v63) = 0;
                goto LABEL_168;
              }
            }

            v63 = (v73 != 0) & ~[a2 hasError];
LABEL_168:
            v102 = 52;
            goto LABEL_184;
          case 4:
            v65 = 0;
            v66 = 0;
            v67 = 0;
            *(a1 + 56) |= 0x200u;
            while (1)
            {
              v116 = 0;
              v68 = [a2 position] + 1;
              if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
              {
                v70 = [a2 data];
                [v70 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v67 |= (v116 & 0x7F) << v65;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              v11 = v66++ >= 9;
              if (v11)
              {
                LOBYTE(v63) = 0;
                goto LABEL_166;
              }
            }

            v63 = (v67 != 0) & ~[a2 hasError];
LABEL_166:
            v102 = 53;
            goto LABEL_184;
          case 5:
            v57 = 0;
            v58 = 0;
            v59 = 0;
            *(a1 + 56) |= 0x800u;
            while (1)
            {
              v115 = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v59 |= (v115 & 0x7F) << v57;
              if ((v115 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v11 = v58++ >= 9;
              if (v11)
              {
                LOBYTE(v63) = 0;
                goto LABEL_160;
              }
            }

            v63 = (v59 != 0) & ~[a2 hasError];
LABEL_160:
            v102 = 55;
            goto LABEL_184;
          case 6:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 56) |= 0x80u;
            while (1)
            {
              v111 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v111 & 0x7F) << v32;
              if ((v111 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_146;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v34;
            }

LABEL_146:
            v101 = 48;
            goto LABEL_181;
          case 7:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              v110 = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v110 & 0x7F) << v45;
              if ((v110 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v11 = v46++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_154;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v47;
            }

LABEL_154:
            v101 = 16;
            goto LABEL_181;
          case 8:
            v77 = 0;
            v78 = 0;
            v79 = 0;
            *(a1 + 56) |= 0x20u;
            while (1)
            {
              v109 = 0;
              v80 = [a2 position] + 1;
              if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
              {
                v82 = [a2 data];
                [v82 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v79 |= (v109 & 0x7F) << v77;
              if ((v109 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              v11 = v78++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_172;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v79;
            }

LABEL_172:
            v101 = 40;
            goto LABEL_181;
          case 9:
            v83 = 0;
            v84 = 0;
            v85 = 0;
            *(a1 + 56) |= 0x10u;
            while (1)
            {
              v108 = 0;
              v86 = [a2 position] + 1;
              if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
              {
                v88 = [a2 data];
                [v88 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v85 |= (v108 & 0x7F) << v83;
              if ((v108 & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              v11 = v84++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_176;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v85;
            }

LABEL_176:
            v101 = 36;
            goto LABEL_181;
          case 10:
            v95 = 0;
            v96 = 0;
            v97 = 0;
            *(a1 + 56) |= 0x400u;
            while (1)
            {
              v114 = 0;
              v98 = [a2 position] + 1;
              if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
              {
                v100 = [a2 data];
                [v100 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v97 |= (v114 & 0x7F) << v95;
              if ((v114 & 0x80) == 0)
              {
                break;
              }

              v95 += 7;
              v11 = v96++ >= 9;
              if (v11)
              {
                LOBYTE(v63) = 0;
                goto LABEL_183;
              }
            }

            v63 = (v97 != 0) & ~[a2 hasError];
LABEL_183:
            v102 = 54;
LABEL_184:
            *(a1 + v102) = v63;
            goto LABEL_185;
          case 11:
            v89 = 0;
            v90 = 0;
            v91 = 0;
            *(a1 + 56) |= 4u;
            while (1)
            {
              v107 = 0;
              v92 = [a2 position] + 1;
              if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
              {
                v94 = [a2 data];
                [v94 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v91 |= (v107 & 0x7F) << v89;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v89 += 7;
              v11 = v90++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_180;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v91;
            }

LABEL_180:
            v101 = 20;
            goto LABEL_181;
          case 12:
            v30 = PBReaderReadData();
            v31 = *(a1 + 24);
            *(a1 + 24) = v30;

            goto LABEL_185;
          case 13:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 56) |= 8u;
            while (1)
            {
              v106 = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v106 & 0x7F) << v51;
              if ((v106 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_158;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v53;
            }

LABEL_158:
            v101 = 32;
            goto LABEL_181;
          case 14:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 56) |= 0x40u;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_185;
            }

            return result;
        }

        while (1)
        {
          v105 = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v105 & 0x7F) << v39;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v11 = v40++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_150;
          }
        }

        v38 = [a2 hasError] ? 0 : v41;
LABEL_150:
        v101 = 44;
LABEL_181:
        *(a1 + v101) = v38;
      }

LABEL_185:
      v103 = [a2 position];
    }

    while (v103 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10018BB60(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 position];
  if (v5 >= [v4 length])
  {
LABEL_514:
    v255 = [v4 hasError] ^ 1;
    goto LABEL_515;
  }

  while (2)
  {
    if ([v4 hasError])
    {
      goto LABEL_514;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v257[0]) = 0;
      v9 = [v4 position] + 1;
      if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
      {
        v11 = [v4 data];
        [v11 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v8 |= (v257[0] & 0x7F) << v6;
      if ((v257[0] & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_15;
      }
    }

    v13 = [v4 hasError] ? 0 : v8;
LABEL_15:
    if (([v4 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      goto LABEL_514;
    }

    v14 = v13 >> 3;
    v15 = [NSNumber numberWithUnsignedInt:v14];
    v16 = [KBBMetricUtility isValidMetricIdTag:v15 forClass:objc_opt_class()];

    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        LOBYTE(v257[0]) = 0;
        v20 = [v4 position] + 1;
        if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
        {
          v22 = [v4 data];
          [v22 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v19 |= (v257[0] & 0x7F) << v17;
        if ((v257[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v12 = v18++ >= 9;
        if (v12)
        {
          v23 = 0;
          goto LABEL_40;
        }
      }

      if ([v4 hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v19;
      }

LABEL_40:
      NSLog(@"Unknown tag: %x:%u", v14, v23);
      goto LABEL_513;
    }

    switch(v14)
    {
      case 1:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(v3 + 180) |= 1uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v27 = [v4 position] + 1;
          if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
          {
            v29 = [v4 data];
            [v29 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v26 |= (v257[0] & 0x7F) << v24;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            v30 = 0;
            goto LABEL_440;
          }
        }

        if ([v4 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_440:
        *(v3 + 1) = v30;
        goto LABEL_513;
      case 2:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        *(v3 + 180) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v147 = [v4 position] + 1;
          if (v147 >= [v4 position] && (v148 = objc_msgSend(v4, "position") + 1, v148 <= objc_msgSend(v4, "length")))
          {
            v149 = [v4 data];
            [v149 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v146 |= (v257[0] & 0x7F) << v144;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v12 = v145++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_444;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v146;
        }

LABEL_444:
        v252 = 156;
        goto LABEL_512;
      case 3:
        v112 = PBReaderReadString();
        v113 = *(v3 + 5);
        *(v3 + 5) = v112;

        goto LABEL_513;
      case 6:
        v180 = 0;
        v181 = 0;
        v182 = 0;
        *(v3 + 180) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v183 = [v4 position] + 1;
          if (v183 >= [v4 position] && (v184 = objc_msgSend(v4, "position") + 1, v184 <= objc_msgSend(v4, "length")))
          {
            v185 = [v4 data];
            [v185 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v182 |= (v257[0] & 0x7F) << v180;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v180 += 7;
          v12 = v181++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_468;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v182;
        }

LABEL_468:
        v252 = 72;
        goto LABEL_512;
      case 7:
        v186 = 0;
        v187 = 0;
        v188 = 0;
        *(v3 + 180) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v189 = [v4 position] + 1;
          if (v189 >= [v4 position] && (v190 = objc_msgSend(v4, "position") + 1, v190 <= objc_msgSend(v4, "length")))
          {
            v191 = [v4 data];
            [v191 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v188 |= (v257[0] & 0x7F) << v186;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v186 += 7;
          v12 = v187++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_472;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v188;
        }

LABEL_472:
        v252 = 76;
        goto LABEL_512;
      case 8:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        *(v3 + 180) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v129 = [v4 position] + 1;
          if (v129 >= [v4 position] && (v130 = objc_msgSend(v4, "position") + 1, v130 <= objc_msgSend(v4, "length")))
          {
            v131 = [v4 data];
            [v131 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v128 |= (v257[0] & 0x7F) << v126;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v12 = v127++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_430;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v128;
        }

LABEL_430:
        v252 = 136;
        goto LABEL_512;
      case 10:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(v3 + 180) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v153 = [v4 position] + 1;
          if (v153 >= [v4 position] && (v154 = objc_msgSend(v4, "position") + 1, v154 <= objc_msgSend(v4, "length")))
          {
            v155 = [v4 data];
            [v155 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v152 |= (v257[0] & 0x7F) << v150;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_448;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v152;
        }

LABEL_448:
        v252 = 56;
        goto LABEL_512;
      case 11:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        *(v3 + 180) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v159 = [v4 position] + 1;
          if (v159 >= [v4 position] && (v160 = objc_msgSend(v4, "position") + 1, v160 <= objc_msgSend(v4, "length")))
          {
            v161 = [v4 data];
            [v161 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v158 |= (v257[0] & 0x7F) << v156;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v12 = v157++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_452;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v158;
        }

LABEL_452:
        v252 = 84;
        goto LABEL_512;
      case 13:
        v198 = 0;
        v199 = 0;
        v200 = 0;
        *(v3 + 180) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v201 = [v4 position] + 1;
          if (v201 >= [v4 position] && (v202 = objc_msgSend(v4, "position") + 1, v202 <= objc_msgSend(v4, "length")))
          {
            v203 = [v4 data];
            [v203 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v200 |= (v257[0] & 0x7F) << v198;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v198 += 7;
          v12 = v199++ >= 9;
          if (v12)
          {
            LOBYTE(v68) = 0;
            goto LABEL_478;
          }
        }

        v68 = (v200 != 0) & ~[v4 hasError];
LABEL_478:
        v253 = 173;
        goto LABEL_479;
      case 14:
        v81 = objc_alloc_init(RsrpRsrqSinr);
        objc_storeStrong(v3 + 3, v81);
        goto LABEL_287;
      case 15:
        v81 = objc_alloc_init(RsrpRsrqSinr);
        [v3 addInstValues:v81];
LABEL_287:
        v257[0] = 0;
        v257[1] = 0;
        if (PBReaderPlaceMark() && sub_10000B578(v81, v4))
        {
          PBReaderRecallMark();

LABEL_513:
          v254 = [v4 position];
          if (v254 >= [v4 length])
          {
            goto LABEL_514;
          }

          continue;
        }

LABEL_517:
        v255 = 0;
LABEL_515:

        return v255;
      case 16:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        *(v3 + 180) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v135 = [v4 position] + 1;
          if (v135 >= [v4 position] && (v136 = objc_msgSend(v4, "position") + 1, v136 <= objc_msgSend(v4, "length")))
          {
            v137 = [v4 data];
            [v137 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v134 |= (v257[0] & 0x7F) << v132;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v12 = v133++ >= 9;
          if (v12)
          {
            LOBYTE(v68) = 0;
            goto LABEL_432;
          }
        }

        v68 = (v134 != 0) & ~[v4 hasError];
LABEL_432:
        v253 = 175;
        goto LABEL_479;
      case 17:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(v3 + 180) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v103 = [v4 position] + 1;
          if (v103 >= [v4 position] && (v104 = objc_msgSend(v4, "position") + 1, v104 <= objc_msgSend(v4, "length")))
          {
            v105 = [v4 data];
            [v105 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v102 |= (v257[0] & 0x7F) << v100;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v12 = v101++ >= 9;
          if (v12)
          {
            LOBYTE(v68) = 0;
            goto LABEL_416;
          }
        }

        v68 = (v102 != 0) & ~[v4 hasError];
LABEL_416:
        v253 = 176;
        goto LABEL_479;
      case 18:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(v3 + 180) |= &_mh_execute_header;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v65 = [v4 position] + 1;
          if (v65 >= [v4 position] && (v66 = objc_msgSend(v4, "position") + 1, v66 <= objc_msgSend(v4, "length")))
          {
            v67 = [v4 data];
            [v67 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v64 |= (v257[0] & 0x7F) << v62;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v12 = v63++ >= 9;
          if (v12)
          {
            LOBYTE(v68) = 0;
            goto LABEL_394;
          }
        }

        v68 = (v64 != 0) & ~[v4 hasError];
LABEL_394:
        v253 = 172;
        goto LABEL_479;
      case 20:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        *(v3 + 180) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v165 = [v4 position] + 1;
          if (v165 >= [v4 position] && (v166 = objc_msgSend(v4, "position") + 1, v166 <= objc_msgSend(v4, "length")))
          {
            v167 = [v4 data];
            [v167 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v164 |= (v257[0] & 0x7F) << v162;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v12 = v163++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_456;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v164;
        }

LABEL_456:
        v252 = 100;
        goto LABEL_512;
      case 21:
        v168 = 0;
        v169 = 0;
        v170 = 0;
        *(v3 + 180) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v171 = [v4 position] + 1;
          if (v171 >= [v4 position] && (v172 = objc_msgSend(v4, "position") + 1, v172 <= objc_msgSend(v4, "length")))
          {
            v173 = [v4 data];
            [v173 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v170 |= (v257[0] & 0x7F) << v168;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v168 += 7;
          v12 = v169++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_460;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v170;
        }

LABEL_460:
        v252 = 104;
        goto LABEL_512;
      case 22:
        v216 = 0;
        v217 = 0;
        v218 = 0;
        *(v3 + 180) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v219 = [v4 position] + 1;
          if (v219 >= [v4 position] && (v220 = objc_msgSend(v4, "position") + 1, v220 <= objc_msgSend(v4, "length")))
          {
            v221 = [v4 data];
            [v221 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v218 |= (v257[0] & 0x7F) << v216;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v216 += 7;
          v12 = v217++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_491;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v218;
        }

LABEL_491:
        v252 = 108;
        goto LABEL_512;
      case 23:
        v204 = 0;
        v205 = 0;
        v206 = 0;
        *(v3 + 180) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v207 = [v4 position] + 1;
          if (v207 >= [v4 position] && (v208 = objc_msgSend(v4, "position") + 1, v208 <= objc_msgSend(v4, "length")))
          {
            v209 = [v4 data];
            [v209 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v206 |= (v257[0] & 0x7F) << v204;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v204 += 7;
          v12 = v205++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_483;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v206;
        }

LABEL_483:
        v252 = 112;
        goto LABEL_512;
      case 24:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(v3 + 180) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v53 = [v4 position] + 1;
          if (v53 >= [v4 position] && (v54 = objc_msgSend(v4, "position") + 1, v54 <= objc_msgSend(v4, "length")))
          {
            v55 = [v4 data];
            [v55 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v52 |= (v257[0] & 0x7F) << v50;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_388;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v52;
        }

LABEL_388:
        v252 = 116;
        goto LABEL_512;
      case 25:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        *(v3 + 180) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v109 = [v4 position] + 1;
          if (v109 >= [v4 position] && (v110 = objc_msgSend(v4, "position") + 1, v110 <= objc_msgSend(v4, "length")))
          {
            v111 = [v4 data];
            [v111 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v108 |= (v257[0] & 0x7F) << v106;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v12 = v107++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_420;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v108;
        }

LABEL_420:
        v252 = 120;
        goto LABEL_512;
      case 26:
        v222 = 0;
        v223 = 0;
        v224 = 0;
        *(v3 + 180) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v225 = [v4 position] + 1;
          if (v225 >= [v4 position] && (v226 = objc_msgSend(v4, "position") + 1, v226 <= objc_msgSend(v4, "length")))
          {
            v227 = [v4 data];
            [v227 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v224 |= (v257[0] & 0x7F) << v222;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v222 += 7;
          v12 = v223++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_495;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v224;
        }

LABEL_495:
        v252 = 124;
        goto LABEL_512;
      case 27:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(v3 + 180) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v59 = [v4 position] + 1;
          if (v59 >= [v4 position] && (v60 = objc_msgSend(v4, "position") + 1, v60 <= objc_msgSend(v4, "length")))
          {
            v61 = [v4 data];
            [v61 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v58 |= (v257[0] & 0x7F) << v56;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_392;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v58;
        }

LABEL_392:
        v252 = 128;
        goto LABEL_512;
      case 28:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(v3 + 180) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v97 = [v4 position] + 1;
          if (v97 >= [v4 position] && (v98 = objc_msgSend(v4, "position") + 1, v98 <= objc_msgSend(v4, "length")))
          {
            v99 = [v4 data];
            [v99 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v96 |= (v257[0] & 0x7F) << v94;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v12 = v95++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_414;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v96;
        }

LABEL_414:
        v252 = 140;
        goto LABEL_512;
      case 29:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(v3 + 180) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v78 = [v4 position] + 1;
          if (v78 >= [v4 position] && (v79 = objc_msgSend(v4, "position") + 1, v79 <= objc_msgSend(v4, "length")))
          {
            v80 = [v4 data];
            [v80 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v77 |= (v257[0] & 0x7F) << v75;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v12 = v76++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_402;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v77;
        }

LABEL_402:
        v252 = 144;
        goto LABEL_512;
      case 30:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        *(v3 + 180) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v141 = [v4 position] + 1;
          if (v141 >= [v4 position] && (v142 = objc_msgSend(v4, "position") + 1, v142 <= objc_msgSend(v4, "length")))
          {
            v143 = [v4 data];
            [v143 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v140 |= (v257[0] & 0x7F) << v138;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v12 = v139++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_436;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v140;
        }

LABEL_436:
        v252 = 148;
        goto LABEL_512;
      case 31:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(v3 + 180) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v72 = [v4 position] + 1;
          if (v72 >= [v4 position] && (v73 = objc_msgSend(v4, "position") + 1, v73 <= objc_msgSend(v4, "length")))
          {
            v74 = [v4 data];
            [v74 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v71 |= (v257[0] & 0x7F) << v69;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v12 = v70++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_398;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v71;
        }

LABEL_398:
        v252 = 152;
        goto LABEL_512;
      case 32:
        v234 = 0;
        v235 = 0;
        v236 = 0;
        *(v3 + 180) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v237 = [v4 position] + 1;
          if (v237 >= [v4 position] && (v238 = objc_msgSend(v4, "position") + 1, v238 <= objc_msgSend(v4, "length")))
          {
            v239 = [v4 data];
            [v239 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v236 |= (v257[0] & 0x7F) << v234;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v234 += 7;
          v12 = v235++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_503;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v236;
        }

LABEL_503:
        v252 = 132;
        goto LABEL_512;
      case 33:
        v228 = 0;
        v229 = 0;
        v230 = 0;
        *(v3 + 180) |= 2uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v231 = [v4 position] + 1;
          if (v231 >= [v4 position] && (v232 = objc_msgSend(v4, "position") + 1, v232 <= objc_msgSend(v4, "length")))
          {
            v233 = [v4 data];
            [v233 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v230 |= (v257[0] & 0x7F) << v228;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v228 += 7;
          v12 = v229++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_499;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v230;
        }

LABEL_499:
        v252 = 16;
        goto LABEL_512;
      case 34:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(v3 + 180) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v91 = [v4 position] + 1;
          if (v91 >= [v4 position] && (v92 = objc_msgSend(v4, "position") + 1, v92 <= objc_msgSend(v4, "length")))
          {
            v93 = [v4 data];
            [v93 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v90 |= (v257[0] & 0x7F) << v88;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_410;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v90;
        }

LABEL_410:
        v252 = 60;
        goto LABEL_512;
      case 35:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        *(v3 + 180) |= 4uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v117 = [v4 position] + 1;
          if (v117 >= [v4 position] && (v118 = objc_msgSend(v4, "position") + 1, v118 <= objc_msgSend(v4, "length")))
          {
            v119 = [v4 data];
            [v119 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v116 |= (v257[0] & 0x7F) << v114;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v12 = v115++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_424;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v116;
        }

LABEL_424:
        v252 = 32;
        goto LABEL_512;
      case 36:
        v174 = 0;
        v175 = 0;
        v176 = 0;
        *(v3 + 180) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v177 = [v4 position] + 1;
          if (v177 >= [v4 position] && (v178 = objc_msgSend(v4, "position") + 1, v178 <= objc_msgSend(v4, "length")))
          {
            v179 = [v4 data];
            [v179 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v176 |= (v257[0] & 0x7F) << v174;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v174 += 7;
          v12 = v175++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_464;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v176;
        }

LABEL_464:
        v252 = 168;
        goto LABEL_512;
      case 38:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        *(v3 + 180) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v123 = [v4 position] + 1;
          if (v123 >= [v4 position] && (v124 = objc_msgSend(v4, "position") + 1, v124 <= objc_msgSend(v4, "length")))
          {
            v125 = [v4 data];
            [v125 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v122 |= (v257[0] & 0x7F) << v120;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v12 = v121++ >= 9;
          if (v12)
          {
            LOBYTE(v68) = 0;
            goto LABEL_426;
          }
        }

        v68 = (v122 != 0) & ~[v4 hasError];
LABEL_426:
        v253 = 174;
LABEL_479:
        v3[v253] = v68;
        goto LABEL_513;
      case 47:
        v246 = 0;
        v247 = 0;
        v248 = 0;
        *(v3 + 180) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v249 = [v4 position] + 1;
          if (v249 >= [v4 position] && (v250 = objc_msgSend(v4, "position") + 1, v250 <= objc_msgSend(v4, "length")))
          {
            v251 = [v4 data];
            [v251 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v248 |= (v257[0] & 0x7F) << v246;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v246 += 7;
          v12 = v247++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_511;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v248;
        }

LABEL_511:
        v252 = 92;
        goto LABEL_512;
      case 48:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(v3 + 180) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v85 = [v4 position] + 1;
          if (v85 >= [v4 position] && (v86 = objc_msgSend(v4, "position") + 1, v86 <= objc_msgSend(v4, "length")))
          {
            v87 = [v4 data];
            [v87 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v84 |= (v257[0] & 0x7F) << v82;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_406;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v84;
        }

LABEL_406:
        v252 = 52;
        goto LABEL_512;
      case 49:
        v210 = 0;
        v211 = 0;
        v212 = 0;
        *(v3 + 180) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v213 = [v4 position] + 1;
          if (v213 >= [v4 position] && (v214 = objc_msgSend(v4, "position") + 1, v214 <= objc_msgSend(v4, "length")))
          {
            v215 = [v4 data];
            [v215 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v212 |= (v257[0] & 0x7F) << v210;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v210 += 7;
          v12 = v211++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_487;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v212;
        }

LABEL_487:
        v252 = 96;
        goto LABEL_512;
      case 52:
        v240 = 0;
        v241 = 0;
        v242 = 0;
        *(v3 + 180) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v243 = [v4 position] + 1;
          if (v243 >= [v4 position] && (v244 = objc_msgSend(v4, "position") + 1, v244 <= objc_msgSend(v4, "length")))
          {
            v245 = [v4 data];
            [v245 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v242 |= (v257[0] & 0x7F) << v240;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v240 += 7;
          v12 = v241++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_507;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v242;
        }

LABEL_507:
        v252 = 160;
        goto LABEL_512;
      case 53:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(v3 + 180) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v47 = [v4 position] + 1;
          if (v47 >= [v4 position] && (v48 = objc_msgSend(v4, "position") + 1, v48 <= objc_msgSend(v4, "length")))
          {
            v49 = [v4 data];
            [v49 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v46 |= (v257[0] & 0x7F) << v44;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_384;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v46;
        }

LABEL_384:
        v252 = 164;
        goto LABEL_512;
      case 54:
        v192 = 0;
        v193 = 0;
        v194 = 0;
        *(v3 + 180) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v195 = [v4 position] + 1;
          if (v195 >= [v4 position] && (v196 = objc_msgSend(v4, "position") + 1, v196 <= objc_msgSend(v4, "length")))
          {
            v197 = [v4 data];
            [v197 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v194 |= (v257[0] & 0x7F) << v192;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v192 += 7;
          v12 = v193++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_476;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v194;
        }

LABEL_476:
        v252 = 80;
        goto LABEL_512;
      case 55:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(v3 + 180) |= 8uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v41 = [v4 position] + 1;
          if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
          {
            v43 = [v4 data];
            [v43 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v40 |= (v257[0] & 0x7F) << v38;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v12 = v39++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_380;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v40;
        }

LABEL_380:
        v252 = 48;
        goto LABEL_512;
      case 56:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(v3 + 180) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v257[0]) = 0;
          v34 = [v4 position] + 1;
          if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
          {
            v36 = [v4 data];
            [v36 getBytes:v257 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v33 |= (v257[0] & 0x7F) << v31;
          if ((v257[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_376;
          }
        }

        if ([v4 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

LABEL_376:
        v252 = 88;
LABEL_512:
        *&v3[v252] = v37;
        goto LABEL_513;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_513;
        }

        goto LABEL_517;
    }
  }
}

uint64_t sub_1001914A8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v73 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v73 & 0x7F) << v5;
        if ((v73 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v79 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v79 & 0x7F) << v16;
          if ((v79 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_43;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_43:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_134;
      }

      if (v13 > 11)
      {
        if (v13 <= 13)
        {
          if (v13 == 12)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v76 = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v58 |= (v76 & 0x7F) << v56;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v11 = v57++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_114;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v58;
            }

LABEL_114:
            v71 = 16;
          }

          else
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              v75 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v75 & 0x7F) << v30;
              if ((v75 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_126;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v32;
            }

LABEL_126:
            v71 = 32;
          }

          goto LABEL_133;
        }

        if (v13 != 14)
        {
          if (v13 != 15)
          {
LABEL_105:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_134;
          }

          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 52) |= 0x20u;
          while (1)
          {
            v74 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v74 & 0x7F) << v43;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_132;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v45;
          }

LABEL_132:
          v71 = 44;
          goto LABEL_133;
        }

        v68 = PBReaderReadData();
        v69 = *(a1 + 24);
        *(a1 + 24) = v68;
      }

      else
      {
        if (v13 <= 3)
        {
          if (v13 == 1)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              v80 = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v80 & 0x7F) << v49;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                v55 = 0;
                goto LABEL_110;
              }
            }

            if ([a2 hasError])
            {
              v55 = 0;
            }

            else
            {
              v55 = v51;
            }

LABEL_110:
            *(a1 + 8) = v55;
            goto LABEL_134;
          }

          if (v13 != 3)
          {
            goto LABEL_105;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 52) |= 0x10u;
          while (1)
          {
            v78 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v78 & 0x7F) << v23;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_122;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_122:
          v71 = 40;
          goto LABEL_133;
        }

        if (v13 == 4)
        {
          v62 = 0;
          v63 = 0;
          v64 = 0;
          *(a1 + 52) |= 8u;
          while (1)
          {
            v77 = 0;
            v65 = [a2 position] + 1;
            if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
            {
              v67 = [a2 data];
              [v67 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v64 |= (v77 & 0x7F) << v62;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v11 = v63++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_118;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v64;
          }

LABEL_118:
          v71 = 36;
LABEL_133:
          *(a1 + v71) = v29;
          goto LABEL_134;
        }

        if (v13 != 5)
        {
          goto LABEL_105;
        }

        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 52) |= 0x40u;
        while (1)
        {
          v81 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v81 & 0x7F) << v36;
          if ((v81 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            LOBYTE(v42) = 0;
            goto LABEL_128;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_128:
        *(a1 + 48) = v42;
      }

LABEL_134:
      v72 = [a2 position];
    }

    while (v72 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100193350(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v67 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v67 & 0x7F) << v5;
        if ((v67 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v70 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v70 & 0x7F) << v16;
          if ((v70 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_35;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_35:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_126;
      }

      if (v13 <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              v69 = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v69 & 0x7F) << v39;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_110;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v41;
            }

LABEL_110:
            v65 = 16;
          }

          else
          {
            if (v13 != 2)
            {
LABEL_101:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_126;
            }

            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              v68 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v68 & 0x7F) << v32;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_106;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v34;
            }

LABEL_106:
            v65 = 20;
          }

          goto LABEL_125;
        }

        if (v13 == 3)
        {
          v23 = PBReaderReadString();
          v24 = 8;
        }

        else
        {
          if (v13 == 4)
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            *(a1 + 72) |= 4u;
            while (1)
            {
              v73 = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v59 |= (v73 & 0x7F) << v57;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v11 = v58++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_124;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v59;
            }

LABEL_124:
            v65 = 32;
LABEL_125:
            *(a1 + v65) = v38;
            goto LABEL_126;
          }

          v23 = PBReaderReadData();
          v24 = 24;
        }

        goto LABEL_100;
      }

      if (v13 <= 7)
      {
        break;
      }

      if (v13 == 8)
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 72) |= 0x10u;
        while (1)
        {
          v71 = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v71 & 0x7F) << v51;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v38 = 0;
            goto LABEL_118;
          }
        }

        if ([a2 hasError])
        {
          v38 = 0;
        }

        else
        {
          v38 = v53;
        }

LABEL_118:
        v65 = 64;
        goto LABEL_125;
      }

      if (v13 == 9)
      {
        v23 = PBReaderReadData();
        v24 = 56;
LABEL_100:
        v63 = *(a1 + v24);
        *(a1 + v24) = v23;

        goto LABEL_126;
      }

      if (v13 != 10)
      {
        goto LABEL_101;
      }

      v25 = 0;
      v26 = 0;
      v27 = 0;
      *(a1 + 72) |= 0x20u;
      while (1)
      {
        v74 = 0;
        v28 = [a2 position] + 1;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
        {
          v30 = [a2 data];
          [v30 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v27 |= (v74 & 0x7F) << v25;
        if ((v74 & 0x80) == 0)
        {
          break;
        }

        v25 += 7;
        v11 = v26++ >= 9;
        if (v11)
        {
          LOBYTE(v31) = 0;
          goto LABEL_120;
        }
      }

      v31 = (v27 != 0) & ~[a2 hasError];
LABEL_120:
      *(a1 + 68) = v31;
LABEL_126:
      v66 = [a2 position];
      if (v66 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 6)
    {
      v45 = 0;
      v46 = 0;
      v47 = 0;
      *(a1 + 72) |= 8u;
      while (1)
      {
        v72 = 0;
        v48 = [a2 position] + 1;
        if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
        {
          v50 = [a2 data];
          [v50 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v47 |= (v72 & 0x7F) << v45;
        if ((v72 & 0x80) == 0)
        {
          break;
        }

        v45 += 7;
        v11 = v46++ >= 9;
        if (v11)
        {
          v38 = 0;
          goto LABEL_114;
        }
      }

      if ([a2 hasError])
      {
        v38 = 0;
      }

      else
      {
        v38 = v47;
      }

LABEL_114:
      v65 = 48;
      goto LABEL_125;
    }

    v23 = PBReaderReadData();
    v24 = 40;
    goto LABEL_100;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100194F1C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v72) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v72 & 0x7F) << v5;
        if ((v72 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      v15 = [NSNumber numberWithUnsignedInt:v14];
      v16 = [KBBMetricUtility isValidMetricIdTag:v15 forClass:objc_opt_class()];

      if (v16)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v72 & 0x7F) << v17;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_49;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_49:
        NSLog(@"Unknown tag: %x:%u", v14, v23);
        goto LABEL_130;
      }

      if (v14 <= 4)
      {
        if (v14 == 1)
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            LOBYTE(v72) = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v72 & 0x7F) << v52;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              v38 = 0;
              goto LABEL_104;
            }
          }

          if ([a2 hasError])
          {
            v38 = 0;
          }

          else
          {
            v38 = v54;
          }

LABEL_104:
          v58 = 56;
          goto LABEL_109;
        }

        if (v14 == 3)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            LOBYTE(v72) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v72 & 0x7F) << v32;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v38 = 0;
              goto LABEL_108;
            }
          }

          if ([a2 hasError])
          {
            v38 = 0;
          }

          else
          {
            v38 = v34;
          }

LABEL_108:
          v58 = 60;
          goto LABEL_109;
        }
      }

      else
      {
        switch(v14)
        {
          case 5:
            if (v13 != 2)
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
              while (1)
              {
                LOBYTE(v72) = 0;
                v62 = [a2 position] + 1;
                if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
                {
                  v64 = [a2 data];
                  [v64 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v61 |= (v72 & 0x7F) << v59;
                if ((v72 & 0x80) == 0)
                {
                  goto LABEL_128;
                }

                v59 += 7;
                v11 = v60++ >= 9;
                if (v11)
                {
                  goto LABEL_129;
                }
              }
            }

            v72 = 0;
            v73 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v39 = [a2 position];
              if (v39 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_96;
              }

              v40 = 0;
              v41 = 0;
              v42 = 0;
              while (1)
              {
                v74 = 0;
                v43 = [a2 position] + 1;
                if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
                {
                  v45 = [a2 data];
                  [v45 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v42 |= (v74 & 0x7F) << v40;
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v40 += 7;
                v11 = v41++ >= 9;
                if (v11)
                {
                  goto LABEL_75;
                }
              }

              [a2 hasError];
LABEL_75:
              PBRepeatedUInt32Add();
            }

          case 6:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 68) |= 4u;
            while (1)
            {
              LOBYTE(v72) = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (v72 & 0x7F) << v46;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_100;
              }
            }

            if ([a2 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v48;
            }

LABEL_100:
            v58 = 64;
LABEL_109:
            *(a1 + v58) = v38;
            goto LABEL_130;
          case 7:
            if (v13 != 2)
            {
              v65 = 0;
              v66 = 0;
              v67 = 0;
              while (1)
              {
                LOBYTE(v72) = 0;
                v68 = [a2 position] + 1;
                if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
                {
                  v70 = [a2 data];
                  [v70 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v67 |= (v72 & 0x7F) << v65;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                v11 = v66++ >= 9;
                if (v11)
                {
                  goto LABEL_129;
                }
              }

LABEL_128:
              [a2 hasError];
LABEL_129:
              PBRepeatedUInt32Add();
              goto LABEL_130;
            }

            v72 = 0;
            v73 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v25 = [a2 position];
              if (v25 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v26 = 0;
              v27 = 0;
              v28 = 0;
              while (1)
              {
                v74 = 0;
                v29 = [a2 position] + 1;
                if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
                {
                  v31 = [a2 data];
                  [v31 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v28 |= (v74 & 0x7F) << v26;
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                v11 = v27++ >= 9;
                if (v11)
                {
                  goto LABEL_45;
                }
              }

              [a2 hasError];
LABEL_45:
              PBRepeatedUInt32Add();
            }

LABEL_96:
            PBReaderRecallMark();
            goto LABEL_130;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_130:
      v71 = [a2 position];
    }

    while (v71 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100196B90(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v107) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v107 & 0x7F) << v5;
      if ((v107 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    v13 = v12 >> 3;
    v14 = [NSNumber numberWithUnsignedInt:v13];
    v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        LOBYTE(v107) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v107 & 0x7F) << v16;
        if ((v107 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_40;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_40:
      NSLog(@"Unknown tag: %x:%u", v13, v22);
      goto LABEL_210;
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 84) |= 1u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v107 & 0x7F) << v23;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
LABEL_180:
            *(a1 + 8) = v29;
            goto LABEL_210;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

        goto LABEL_180;
      case 2:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 84) |= 2u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v107 & 0x7F) << v62;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_184;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v64;
        }

LABEL_184:
        v104 = 16;
        goto LABEL_209;
      case 3:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 84) |= 4u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v107 & 0x7F) << v49;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_172;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v51;
        }

LABEL_172:
        v104 = 20;
        goto LABEL_209;
      case 4:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 84) |= 0x40u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v107 & 0x7F) << v80;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_196;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v82;
        }

LABEL_196:
        v104 = 48;
        goto LABEL_209;
      case 5:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 84) |= 0x1000u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v107 & 0x7F) << v86;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v11 = v87++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_200;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v88;
        }

LABEL_200:
        v104 = 80;
        goto LABEL_209;
      case 7:
        v55 = objc_alloc_init(Mib);
        objc_storeStrong((a1 + 32), v55);
        v107 = 0;
        v108 = 0;
        if (!PBReaderPlaceMark() || !sub_1000D184C(v55, a2))
        {
          goto LABEL_212;
        }

        goto LABEL_102;
      case 9:
        v55 = objc_alloc_init(Sib);
        [a1 addSib:v55];
        v107 = 0;
        v108 = 0;
        if (PBReaderPlaceMark() && sub_10000FC48(v55, a2))
        {
LABEL_102:
          PBReaderRecallMark();

LABEL_210:
          v105 = [a2 position];
          if (v105 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_212:

        return 0;
      case 18:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 84) |= 8u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v107 & 0x7F) << v68;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v11 = v69++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_188;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v70;
        }

LABEL_188:
        v104 = 24;
        goto LABEL_209;
      case 19:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        *(a1 + 84) |= 0x800u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v107 & 0x7F) << v98;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v11 = v99++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_208;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v100;
        }

LABEL_208:
        v104 = 76;
        goto LABEL_209;
      case 20:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 84) |= 0x100u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v107 & 0x7F) << v92;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v11 = v93++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_204;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v94;
        }

LABEL_204:
        v104 = 56;
        goto LABEL_209;
      case 21:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 84) |= 0x200u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v107 & 0x7F) << v37;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_164;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v39;
        }

LABEL_164:
        v104 = 60;
        goto LABEL_209;
      case 22:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 84) |= 0x10u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v107 & 0x7F) << v56;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_176;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v58;
        }

LABEL_176:
        v104 = 40;
        goto LABEL_209;
      case 23:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 84) |= 0x400u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v107 & 0x7F) << v43;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_168;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v45;
        }

LABEL_168:
        v104 = 72;
        goto LABEL_209;
      case 24:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 84) |= 0x20u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v107 & 0x7F) << v30;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_160;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

LABEL_160:
        v104 = 44;
        goto LABEL_209;
      case 25:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 84) |= 0x80u;
        while (1)
        {
          LOBYTE(v107) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v107 & 0x7F) << v74;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_192;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v76;
        }

LABEL_192:
        v104 = 52;
LABEL_209:
        *(a1 + v104) = v36;
        goto LABEL_210;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_210;
        }

        return 0;
    }
  }
}

uint64_t sub_1001992B8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v53 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v53 & 0x7F) << v5;
        if ((v53 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v56 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v56 & 0x7F) << v16;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_42;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_42:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 28) |= 8u;
            while (1)
            {
              v58 = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                v49 = [a2 data];
                [v49 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v58 & 0x7F) << v44;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v11 = v45++ >= 9;
              if (v11)
              {
                LOBYTE(v50) = 0;
                goto LABEL_88;
              }
            }

            v50 = (v46 != 0) & ~[a2 hasError];
LABEL_88:
            *(a1 + 24) = v50;
            goto LABEL_89;
          }

          if (v13 != 15)
          {
LABEL_54:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_89;
          }

          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v54 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v54 & 0x7F) << v30;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_81;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v32;
          }

LABEL_81:
          v51 = 20;
        }

        else
        {
          if (v13 == 1)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v57 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v57 & 0x7F) << v37;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_86;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v39;
            }

LABEL_86:
            *(a1 + 8) = v43;
            goto LABEL_89;
          }

          if (v13 != 2)
          {
            goto LABEL_54;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v55 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v55 & 0x7F) << v23;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_77;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_77:
          v51 = 16;
        }

        *(a1 + v51) = v29;
      }

LABEL_89:
      v52 = [a2 position];
    }

    while (v52 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10019A3E0(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v46[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46[0] & 0x7F) << v5;
        if ((v46[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v46[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v46[0] & 0x7F) << v16;
          if ((v46[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_42;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_42:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_81;
      }

      if (v13 <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        a1[32] |= 1u;
        while (1)
        {
          LOBYTE(v46[0]) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v46[0] & 0x7F) << v37;
          if ((v46[0] & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_79;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v39;
        }

LABEL_79:
        v43 = 8;
        goto LABEL_80;
      }

      if (v13 != 4)
      {
        goto LABEL_48;
      }

      v30 = objc_alloc_init(UtraNeighborCell);
      [a1 addUtraNcell:v30];
      v46[0] = 0;
      v46[1] = 0;
      if (!PBReaderPlaceMark() || !sub_10019BAA8(v30, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_81:
      v44 = [a2 position];
      if (v44 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      a1[32] |= 4u;
      while (1)
      {
        LOBYTE(v46[0]) = 0;
        v34 = [a2 position] + 1;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v33 |= (v46[0] & 0x7F) << v31;
        if ((v46[0] & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v11 = v32++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_75;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v33;
      }

LABEL_75:
      v43 = 16;
      goto LABEL_80;
    }

    if (v13 == 2)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      a1[32] |= 2u;
      while (1)
      {
        LOBYTE(v46[0]) = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v46[0] & 0x7F) << v23;
        if ((v46[0] & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_71;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v25;
      }

LABEL_71:
      v43 = 12;
LABEL_80:
      *&a1[v43] = v29;
      goto LABEL_81;
    }

LABEL_48:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_81;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10019BAA8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v90 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v90 & 0x7F) << v5;
        if ((v90 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v97 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v97 & 0x7F) << v16;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_43;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_43:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        if (v13 > 5)
        {
          if (v13 <= 7)
          {
            if (v13 == 6)
            {
              v55 = 0;
              v56 = 0;
              v57 = 0;
              *(a1 + 48) |= 0x80u;
              while (1)
              {
                v94 = 0;
                v58 = [a2 position] + 1;
                if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
                {
                  v60 = [a2 data];
                  [v60 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v57 |= (v94 & 0x7F) << v55;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v55 += 7;
                v11 = v56++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_149;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v57;
              }

LABEL_149:
              v88 = 36;
            }

            else
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *(a1 + 48) |= 0x40u;
              while (1)
              {
                v93 = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  v48 = [a2 data];
                  [v48 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v45 |= (v93 & 0x7F) << v43;
                if ((v93 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v11 = v44++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_141;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v45;
              }

LABEL_141:
              v88 = 32;
            }
          }

          else
          {
            switch(v13)
            {
              case 8:
                v68 = 0;
                v69 = 0;
                v70 = 0;
                *(a1 + 48) |= 0x100u;
                while (1)
                {
                  v92 = 0;
                  v71 = [a2 position] + 1;
                  if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
                  {
                    v73 = [a2 data];
                    [v73 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v70 |= (v92 & 0x7F) << v68;
                  if ((v92 & 0x80) == 0)
                  {
                    break;
                  }

                  v68 += 7;
                  v11 = v69++ >= 9;
                  if (v11)
                  {
                    v29 = 0;
                    goto LABEL_157;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v70;
                }

LABEL_157:
                v88 = 40;
                break;
              case 9:
                v81 = 0;
                v82 = 0;
                v83 = 0;
                *(a1 + 48) |= 4u;
                while (1)
                {
                  v91 = 0;
                  v84 = [a2 position] + 1;
                  if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
                  {
                    v86 = [a2 data];
                    [v86 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v83 |= (v91 & 0x7F) << v81;
                  if ((v91 & 0x80) == 0)
                  {
                    break;
                  }

                  v81 += 7;
                  v11 = v82++ >= 9;
                  if (v11)
                  {
                    v29 = 0;
                    goto LABEL_173;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v83;
                }

LABEL_173:
                v88 = 16;
                break;
              case 0xA:
                v30 = 0;
                v31 = 0;
                v32 = 0;
                *(a1 + 48) |= 1u;
                while (1)
                {
                  v101 = 0;
                  v33 = [a2 position] + 1;
                  if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                  {
                    v35 = [a2 data];
                    [v35 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v32 |= (v101 & 0x7F) << v30;
                  if ((v101 & 0x80) == 0)
                  {
                    break;
                  }

                  v30 += 7;
                  v11 = v31++ >= 9;
                  if (v11)
                  {
                    v29 = 0;
                    goto LABEL_165;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v32;
                }

LABEL_165:
                v88 = 8;
                break;
              default:
                goto LABEL_132;
            }
          }
        }

        else if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 48) |= 0x200u;
            while (1)
            {
              v96 = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v96 & 0x7F) << v49;
              if ((v96 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_145;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v51;
            }

LABEL_145:
            v88 = 44;
          }

          else
          {
            if (v13 != 2)
            {
LABEL_132:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_175;
            }

            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 48) |= 0x10u;
            while (1)
            {
              v100 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v100 & 0x7F) << v36;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_137;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v38;
            }

LABEL_137:
            v29 = -(v42 & 1) ^ (v42 >> 1);
            v88 = 24;
          }
        }

        else if (v13 == 3)
        {
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v99 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v63 |= (v99 & 0x7F) << v61;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v11 = v62++ >= 9;
            if (v11)
            {
              v67 = 0;
              goto LABEL_153;
            }
          }

          if ([a2 hasError])
          {
            v67 = 0;
          }

          else
          {
            v67 = v63;
          }

LABEL_153:
          v29 = -(v67 & 1) ^ (v67 >> 1);
          v88 = 20;
        }

        else if (v13 == 4)
        {
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v98 = 0;
            v77 = [a2 position] + 1;
            if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
            {
              v79 = [a2 data];
              [v79 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v76 |= (v98 & 0x7F) << v74;
            if ((v98 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v11 = v75++ >= 9;
            if (v11)
            {
              v80 = 0;
              goto LABEL_169;
            }
          }

          if ([a2 hasError])
          {
            v80 = 0;
          }

          else
          {
            v80 = v76;
          }

LABEL_169:
          v29 = -(v80 & 1) ^ (v80 >> 1);
          v88 = 12;
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 48) |= 0x20u;
          while (1)
          {
            v95 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v95 & 0x7F) << v23;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_161;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_161:
          v88 = 28;
        }

        *(a1 + v88) = v29;
      }

LABEL_175:
      v89 = [a2 position];
    }

    while (v89 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10019DA58(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v40) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v40 & 0x7F) << v16;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_43;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_43:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_74;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v40) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v40 & 0x7F) << v31;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v37 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v33;
          }

LABEL_69:
          *(a1 + 8) = v37;
          goto LABEL_74;
        }

        if (v13 == 2)
        {
          v30 = objc_alloc_init(GsmNcellMeas);
          [a1 addGsmNcellMeas:v30];
          v40 = 0;
          v41 = 0;
          if (!PBReaderPlaceMark() || !sub_10016DF98(v30, a2))
          {
LABEL_76:

            return 0;
          }

          goto LABEL_54;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v30 = objc_alloc_init(UmtsNcellMeas);
            [a1 addUmtsNcellMeas:v30];
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !sub_10014D3F0(v30, a2))
            {
              goto LABEL_76;
            }

            goto LABEL_54;
          case 4:
            v30 = objc_alloc_init(LteNcellMeas);
            [a1 addLteNcellMeas:v30];
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !sub_100184534(v30, a2))
            {
              goto LABEL_76;
            }

LABEL_54:
            PBReaderRecallMark();

            goto LABEL_74;
          case 0xF:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v40 & 0x7F) << v23;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_73:
            *(a1 + 32) = v29;
            goto LABEL_74;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_74:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1001A06E4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v164 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v164 & 0x7F) << v5;
        if ((v164 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      v14 = [NSNumber numberWithUnsignedInt:v13];
      v15 = [KBBMetricUtility isValidMetricIdTag:v14 forClass:objc_opt_class()];

      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v164 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v164 & 0x7F) << v16;
          if ((v164 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_40;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_40:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        switch(v13)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 104) |= 1u;
            while (1)
            {
              v164 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v164 & 0x7F) << v23;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_280;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_280:
            *(a1 + 8) = v29;
            goto LABEL_319;
          case 2:
            v103 = 0;
            v104 = 0;
            v105 = 0;
            *(a1 + 104) |= 0x10000u;
            while (1)
            {
              v164 = 0;
              v106 = [a2 position] + 1;
              if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
              {
                v108 = [a2 data];
                [v108 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v105 |= (v164 & 0x7F) << v103;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v103 += 7;
              v11 = v104++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_288;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v105;
            }

LABEL_288:
            v161 = 84;
            goto LABEL_318;
          case 4:
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 104) |= 0x1000u;
            while (1)
            {
              v164 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v164 & 0x7F) << v55;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_252;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v57;
            }

LABEL_252:
            v161 = 68;
            goto LABEL_318;
          case 5:
            v97 = 0;
            v98 = 0;
            v99 = 0;
            *(a1 + 104) |= 0x40u;
            while (1)
            {
              v164 = 0;
              v100 = [a2 position] + 1;
              if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
              {
                v102 = [a2 data];
                [v102 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v99 |= (v164 & 0x7F) << v97;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v97 += 7;
              v11 = v98++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_284;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v99;
            }

LABEL_284:
            v161 = 44;
            goto LABEL_318;
          case 7:
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 104) |= 0x2000u;
            while (1)
            {
              v164 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v164 & 0x7F) << v61;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_256;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v63;
            }

LABEL_256:
            v161 = 72;
            goto LABEL_318;
          case 8:
            v85 = 0;
            v86 = 0;
            v87 = 0;
            *(a1 + 104) |= 4u;
            while (1)
            {
              v164 = 0;
              v88 = [a2 position] + 1;
              if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
              {
                v90 = [a2 data];
                [v90 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v87 |= (v164 & 0x7F) << v85;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              v11 = v86++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_272;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v87;
            }

LABEL_272:
            v161 = 20;
            goto LABEL_318;
          case 9:
            v109 = 0;
            v110 = 0;
            v111 = 0;
            *(a1 + 104) |= 0x400u;
            while (1)
            {
              v164 = 0;
              v112 = [a2 position] + 1;
              if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
              {
                v114 = [a2 data];
                [v114 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v111 |= (v164 & 0x7F) << v109;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v109 += 7;
              v11 = v110++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_292;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v111;
            }

LABEL_292:
            v161 = 60;
            goto LABEL_318;
          case 14:
            v115 = 0;
            v116 = 0;
            v117 = 0;
            *(a1 + 104) |= 0x100u;
            while (1)
            {
              v164 = 0;
              v118 = [a2 position] + 1;
              if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
              {
                v120 = [a2 data];
                [v120 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v117 |= (v164 & 0x7F) << v115;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v115 += 7;
              v11 = v116++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_296;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v117;
            }

LABEL_296:
            v161 = 52;
            goto LABEL_318;
          case 15:
            v139 = PBReaderReadData();
            v140 = *(a1 + 24);
            *(a1 + 24) = v139;

            goto LABEL_319;
          case 16:
            v133 = 0;
            v134 = 0;
            v135 = 0;
            *(a1 + 104) |= 8u;
            while (1)
            {
              v164 = 0;
              v136 = [a2 position] + 1;
              if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
              {
                v138 = [a2 data];
                [v138 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v135 |= (v164 & 0x7F) << v133;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v133 += 7;
              v11 = v134++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_308;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v135;
            }

LABEL_308:
            v161 = 32;
            goto LABEL_318;
          case 17:
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 104) |= 2u;
            while (1)
            {
              v164 = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v164 & 0x7F) << v49;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_248;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v51;
            }

LABEL_248:
            v161 = 16;
            goto LABEL_318;
          case 18:
            v91 = 0;
            v92 = 0;
            v93 = 0;
            *(a1 + 104) |= 0x80u;
            while (1)
            {
              v164 = 0;
              v94 = [a2 position] + 1;
              if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
              {
                v96 = [a2 data];
                [v96 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v93 |= (v164 & 0x7F) << v91;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v91 += 7;
              v11 = v92++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_276;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v93;
            }

LABEL_276:
            v161 = 48;
            goto LABEL_318;
          case 19:
            v73 = 0;
            v74 = 0;
            v75 = 0;
            *(a1 + 104) |= 0x20000u;
            while (1)
            {
              v164 = 0;
              v76 = [a2 position] + 1;
              if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
              {
                v78 = [a2 data];
                [v78 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v75 |= (v164 & 0x7F) << v73;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              v11 = v74++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_264;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v75;
            }

LABEL_264:
            v161 = 88;
            goto LABEL_318;
          case 20:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 104) |= 0x4000u;
            while (1)
            {
              v164 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v164 & 0x7F) << v43;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_244;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v45;
            }

LABEL_244:
            v161 = 76;
            goto LABEL_318;
          case 21:
            v121 = 0;
            v122 = 0;
            v123 = 0;
            *(a1 + 104) |= 0x8000u;
            while (1)
            {
              v164 = 0;
              v124 = [a2 position] + 1;
              if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
              {
                v126 = [a2 data];
                [v126 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v123 |= (v164 & 0x7F) << v121;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v121 += 7;
              v11 = v122++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_300;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v123;
            }

LABEL_300:
            v161 = 80;
            goto LABEL_318;
          case 22:
            v127 = 0;
            v128 = 0;
            v129 = 0;
            *(a1 + 104) |= 0x800u;
            while (1)
            {
              v164 = 0;
              v130 = [a2 position] + 1;
              if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
              {
                v132 = [a2 data];
                [v132 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v129 |= (v164 & 0x7F) << v127;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v127 += 7;
              v11 = v128++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_304;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v129;
            }

LABEL_304:
            v161 = 64;
            goto LABEL_318;
          case 23:
            v149 = 0;
            v150 = 0;
            v151 = 0;
            *(a1 + 104) |= 0x200000u;
            while (1)
            {
              v164 = 0;
              v152 = [a2 position] + 1;
              if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
              {
                v154 = [a2 data];
                [v154 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v151 |= (v164 & 0x7F) << v149;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v149 += 7;
              v11 = v150++ >= 9;
              if (v11)
              {
                LOBYTE(v148) = 0;
                goto LABEL_312;
              }
            }

            v148 = (v151 != 0) & ~[a2 hasError];
LABEL_312:
            v162 = 101;
            goto LABEL_313;
          case 24:
            v142 = 0;
            v143 = 0;
            v144 = 0;
            *(a1 + 104) |= 0x100000u;
            while (1)
            {
              v164 = 0;
              v145 = [a2 position] + 1;
              if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
              {
                v147 = [a2 data];
                [v147 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v144 |= (v164 & 0x7F) << v142;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v142 += 7;
              v11 = v143++ >= 9;
              if (v11)
              {
                LOBYTE(v148) = 0;
                goto LABEL_310;
              }
            }

            v148 = (v144 != 0) & ~[a2 hasError];
LABEL_310:
            v162 = 100;
LABEL_313:
            *(a1 + v162) = v148;
            goto LABEL_319;
          case 30:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 104) |= 0x200u;
            while (1)
            {
              v164 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v164 & 0x7F) << v30;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_236;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v32;
            }

LABEL_236:
            v161 = 56;
            goto LABEL_318;
          case 31:
            v79 = 0;
            v80 = 0;
            v81 = 0;
            *(a1 + 104) |= 0x40000u;
            while (1)
            {
              v164 = 0;
              v82 = [a2 position] + 1;
              if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
              {
                v84 = [a2 data];
                [v84 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v81 |= (v164 & 0x7F) << v79;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v11 = v80++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_268;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v81;
            }

LABEL_268:
            v161 = 92;
            goto LABEL_318;
          case 32:
            v155 = 0;
            v156 = 0;
            v157 = 0;
            *(a1 + 104) |= 0x80000u;
            while (1)
            {
              v164 = 0;
              v158 = [a2 position] + 1;
              if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
              {
                v160 = [a2 data];
                [v160 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v157 |= (v164 & 0x7F) << v155;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v155 += 7;
              v11 = v156++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_317;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v157;
            }

LABEL_317:
            v161 = 96;
            goto LABEL_318;
          case 33:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 104) |= 0x10u;
            while (1)
            {
              v164 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v164 & 0x7F) << v37;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_240;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v39;
            }

LABEL_240:
            v161 = 36;
            goto LABEL_318;
          case 34:
            v67 = 0;
            v68 = 0;
            v69 = 0;
            *(a1 + 104) |= 0x20u;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_319;
            }

            return result;
        }

        while (1)
        {
          v164 = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v164 & 0x7F) << v67;
          if ((v164 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_260;
          }
        }

        v36 = [a2 hasError] ? 0 : v69;
LABEL_260:
        v161 = 40;
LABEL_318:
        *(a1 + v161) = v36;
      }

LABEL_319:
      v163 = [a2 position];
    }

    while (v163 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1001A37AC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  qword_100382460 = v2;
  *algn_100382468 = v4;
}

uint64_t sub_1001A3830@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a4;
  v52 = a5;
  v53 = a3;
  v50 = a1;
  v51 = a2;
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  __chkstk_darwin(v11);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v46 - v19;
  v21 = *(v5 + 16);
  v22 = [v21 temporaryDirectory];
  v58 = v20;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = [objc_opt_self() mainBundle];
  v24 = [v23 bundleIdentifier];

  v55 = v21;
  v59 = v16;
  if (v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    if (qword_100374F70 != -1)
    {
      swift_once();
    }

    v25 = qword_100382460;
    v27 = *algn_100382468;
  }

  v60 = v25;
  v61 = v27;
  v28 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v47 = v7[13];
  v47(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  v48 = sub_1001A56A0();
  URL.appending<A>(component:directoryHint:)();
  v29 = v7[1];
  v29(v10, v6);

  URL.path(percentEncoded:)(1);
  v30 = String._bridgeToObjectiveC()();

  v31 = v55;
  v32 = [v55 fileExistsAtPath:v30];

  if (v32)
  {
    goto LABEL_9;
  }

  URL._bridgeToObjectiveC()(v33);
  v35 = v34;
  v60 = 0;
  v36 = [v31 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:&v60];

  if (v36)
  {
    v37 = v60;
LABEL_9:
    v60 = v50;
    v61 = v51;
    v47(v10, v28, v6);
    v38 = v49;
    v39 = v59;
    URL.appending<A>(path:directoryHint:)();
    v29(v10, v6);
    URL.appendingPathExtension(_:)();
    v40 = v57;
    v41 = *(v56 + 8);
    v41(v38, v57);
    v41(v39, v40);
    return (v41)(v58, v40);
  }

  v43 = v60;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v44 = v57;
  v45 = *(v56 + 8);
  v45(v59, v57);
  return (v45)(v58, v44);
}

id sub_1001A3CC4(uint64_t a1, uint64_t a2, int a3)
{
  v37 = a3;
  v36 = a2;
  v38 = type metadata accessor for URL();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v38);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLError.Code();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for URLError();
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 16);
  URL.path(percentEncoded:)(1);
  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 fileExistsAtPath:v16];

  if (v17 & 1) != 0 || (URL.path(percentEncoded:)(1), v18 = String._bridgeToObjectiveC()(), , isa = Data._bridgeToObjectiveC()().super.isa, v20 = [v15 createFileAtPath:v18 contents:isa attributes:0], v18, isa, (v20))
  {
    sub_1001A5428();
    (*(v5 + 16))(v8, a1, v38);
    v21 = v39;
    result = sub_1001A4138(v8);
    if (!v21)
    {
      v23 = result;
      v24 = sub_1001A4290(1024);
      v11 = sub_1001A50C4(v24);
      v26 = v25;

      v27 = sub_1001C3A44(v36, v37);
      v28 = 0;
      v29 = v26 >> 62;
      v30 = __OFSUB__(HIDWORD(v11), v11);
      LODWORD(v39) = v30;
      v38 = HIDWORD(v11) - v11;
      v14 = BYTE6(v26);
      while (v28 < v27)
      {
        v40 = v11;
        v41 = v26;
        sub_1001A54C8();
        NSFileHandle.write<A>(contentsOf:)();
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v34 = *(v11 + 16);
            v33 = *(v11 + 24);
            v32 = __OFSUB__(v33, v34);
            v31 = v33 - v34;
            if (v32)
            {
              __break(1u);
              goto LABEL_19;
            }
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = BYTE6(v26);
          if (v29)
          {
            v31 = v38;
            if (v39)
            {
              goto LABEL_23;
            }
          }
        }

        v32 = __OFADD__(v28, v31);
        v28 += v31;
        if (v32)
        {
          __break(1u);
LABEL_23:
          __break(1u);
        }
      }

      return sub_1001A5474(v11, v26);
    }
  }

  else
  {
LABEL_19:
    static URLError.Code.cannotCreateFile.getter();
    sub_10026AE74(_swiftEmptyArrayStorage);
    sub_1001A52C0(&qword_100378820, &type metadata accessor for URLError);
    _BridgedStoredNSError.init(_:userInfo:)();
    URLError._nsError.getter();
    (*(v35 + 8))(v14, v11);
    return swift_willThrow();
  }

  return result;
}

id sub_1001A4138(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

int64_t sub_1001A4290(int64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      sub_1001F53B8(0, result, 0);
      while (1)
      {
        swift_stdlib_random();
      }
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

id sub_1001A43AC()
{
  v1 = *(v0 + 16);
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v6 = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v2 error:&v6];

  if (v1)
  {
    return v6;
  }

  v5 = v6;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1001A4470()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001A44A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_10028536C(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_1001A460C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_10028536C(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_1001A4818@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1001A4848(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1001A48B4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1001A48F0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1001A4944()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1001A49C0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1001A4A38(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1001A4AB8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

Swift::Int sub_1001A4AFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001A4B70()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1001A4BB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1001A4C3C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_1001A4C88()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_1001A4CE0()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001A4D48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1001A4D90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1001A4DBC(uint64_t a1)
{
  v2 = sub_1001A52C0(&qword_100377E20, type metadata accessor for LaunchOptionsKey);
  v3 = sub_1001A52C0(&qword_100375168, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

_BYTE *sub_1001A4E78@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1001A4F0C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1001A4FC4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1001A5040(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1001A4F0C(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1001A4FC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1001A5040(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1001A50C4(uint64_t a1)
{
  v9 = sub_1001A551C(&qword_100375180, &qword_1002EED00);
  v10 = sub_1001A5564();
  v8[0] = a1;
  v2 = sub_1001A5610(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1001A4E78(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1001A5654(v8);
  return v5;
}

uint64_t sub_1001A5174(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_1001A51A8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1001A52C0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001A5428()
{
  result = qword_100375170;
  if (!qword_100375170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100375170);
  }

  return result;
}

uint64_t sub_1001A5474(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1001A54C8()
{
  result = qword_100375178;
  if (!qword_100375178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375178);
  }

  return result;
}

uint64_t sub_1001A551C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1001A5564()
{
  result = qword_100375188;
  if (!qword_100375188)
  {
    sub_1001A55C8(&qword_100375180, &qword_1002EED00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375188);
  }

  return result;
}

uint64_t sub_1001A55C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_1001A5610(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1001A5654(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1001A56A0()
{
  result = qword_100375190;
  if (!qword_100375190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375190);
  }

  return result;
}

__n128 sub_1001A56F4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001A5700(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A5720(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1001A5760(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A5780(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1001A57BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

Swift::Int sub_1001A5830()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_1001A58A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t sub_1001A58EC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001A6478(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1001A5928()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001A599C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_1001A59E0@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *sub_1001A5A04(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1001A551C(&qword_100377290, &qword_1002F2470);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1001A5A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1001A6004();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1001A6004()
{
  v0 = String.subscript.getter();
  v4 = sub_1001A6084(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1001A6084(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1001A5A04(v9, 0);
  v12 = sub_1001A61DC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1001A61DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1001A63FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1001A63FC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1001A63FC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1001A6478(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

char *sub_1001A649C(uint64_t a1, uint64_t a2, char a3)
{
  v125 = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v112 - v11;
  v13 = [objc_opt_self() mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (!v16)
  {
    goto LABEL_3;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 32))(v12, v10, v5);
  v17 = 0;
  v20 = Data.init(contentsOf:options:)();
  v22 = v21;
  v23 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v129 = 0;
  v25 = [v23 propertyListWithData:isa options:0 format:0 error:&v129];

  if (!v25)
  {
    v73 = v129;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1001A5474(v20, v22);

    (*(v6 + 8))(v12, v5);
LABEL_3:
    if (qword_100374F98 != -1)
    {
LABEL_122:
      swift_once();
    }

    static os_log_type_t.error.getter();
    v18 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:type:_:)();
    return v18;
  }

  v26 = v129;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v6 + 8))(v12, v5);
LABEL_104:
    sub_1001A5474(v20, v22);
    goto LABEL_3;
  }

  if ((a3 & 1) == 0)
  {
    (*(v6 + 8))(v12, v5);

    goto LABEL_104;
  }

  v120 = v127;
  v113 = v20;
  v114 = v22;
  v115 = v12;
  v116 = v6;
  v117 = v5;
  v27 = *(v125 + 16);
  v119 = a2;
  if (!v27)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_106:

    if (qword_100374FD8 != -1)
    {
      goto LABEL_127;
    }

    goto LABEL_107;
  }

  v28 = 0;
  v29 = v125 + 32;
  v123 = &v129 + 1;
  v18 = _swiftEmptyArrayStorage;
  v30 = v120;
  v118 = v125 + 32;
  while (1)
  {
    v126 = *(v29 + 8 * v28);
    v127 = 8278606;
    v128 = 0xE300000000000000;
    v124 = v126;
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    if (*(v30 + 16))
    {
      break;
    }

LABEL_11:

LABEL_12:
    if (++v28 == v27)
    {
      goto LABEL_106;
    }
  }

  v32 = sub_1001F66B8(v127, v128);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1001A773C(*(v30 + 56) + 32 * v32, &v129);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v121 = v17;
  v122 = v18;
  v129 = v127;
  v130 = v128;
  v127 = 44;
  v128 = 0xE100000000000000;
  sub_1001A56A0();
  v35 = StringProtocol.components<A>(separatedBy:)();

  v18 = *(v35 + 16);
  if (!v18)
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_92:

    v68 = *(v37 + 2);
    v69 = 32;
    v30 = v120;
    v17 = v121;
    v18 = v122;
    v29 = v118;
    while (v68)
    {
      v70 = *&v37[v69];
      v69 += 8;
      --v68;
      if (v70 == v119)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1002248CC(0, *(v18 + 2) + 1, 1, v18);
        }

        v72 = *(v18 + 2);
        v71 = *(v18 + 3);
        if (v72 >= v71 >> 1)
        {
          v18 = sub_1002248CC((v71 > 1), v72 + 1, 1, v18);
        }

        *(v18 + 2) = v72 + 1;
        *&v18[8 * v72 + 32] = v124;
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  v36 = 0;
  v37 = _swiftEmptyArrayStorage;
  while (1)
  {
    while (1)
    {
      if (v36 >= *(v35 + 16))
      {
        __break(1u);
        goto LABEL_122;
      }

      v38 = (v35 + 32 + 16 * v36);
      v40 = *v38;
      v39 = v38[1];
      ++v36;
      v41 = HIBYTE(v39) & 0xF;
      v42 = v40 & 0xFFFFFFFFFFFFLL;
      if ((v39 & 0x2000000000000000) != 0 ? HIBYTE(v39) & 0xF : v40 & 0xFFFFFFFFFFFFLL)
      {
        break;
      }

LABEL_81:
      if (v36 == v18)
      {
        goto LABEL_92;
      }
    }

    if ((v39 & 0x1000000000000000) != 0)
    {

      v46 = sub_1001A5A78(v40, v39, 10);
      v65 = v64;

      if (v65)
      {
        goto LABEL_81;
      }

      goto LABEL_84;
    }

    if ((v39 & 0x2000000000000000) != 0)
    {
      break;
    }

    if ((v40 & 0x1000000000000000) != 0)
    {
      v44 = ((v39 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v44 = _StringObject.sharedUTF8.getter();
    }

    v45 = *v44;
    if (v45 == 43)
    {
      if (v42 < 1)
      {
        goto LABEL_126;
      }

      v41 = v42 - 1;
      if (v42 != 1)
      {
        v46 = 0;
        if (!v44)
        {
          goto LABEL_71;
        }

        v53 = v44 + 1;
        while (1)
        {
          v54 = *v53 - 48;
          if (v54 > 9)
          {
            break;
          }

          v55 = 10 * v46;
          if ((v46 * 10) >> 64 != (10 * v46) >> 63)
          {
            break;
          }

          v46 = v55 + v54;
          if (__OFADD__(v55, v54))
          {
            break;
          }

          ++v53;
          if (!--v41)
          {
            goto LABEL_80;
          }
        }
      }
    }

    else if (v45 == 45)
    {
      if (v42 < 1)
      {
        goto LABEL_125;
      }

      v41 = v42 - 1;
      if (v42 != 1)
      {
        v46 = 0;
        if (!v44)
        {
          goto LABEL_71;
        }

        v47 = v44 + 1;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = 10 * v46;
          if ((v46 * 10) >> 64 != (10 * v46) >> 63)
          {
            break;
          }

          v46 = v49 - v48;
          if (__OFSUB__(v49, v48))
          {
            break;
          }

          ++v47;
          if (!--v41)
          {
            goto LABEL_80;
          }
        }
      }
    }

    else if (v42)
    {
      v46 = 0;
      if (!v44)
      {
LABEL_71:
        LOBYTE(v41) = 0;
        goto LABEL_80;
      }

      while (1)
      {
        v59 = *v44 - 48;
        if (v59 > 9)
        {
          break;
        }

        v60 = 10 * v46;
        if ((v46 * 10) >> 64 != (10 * v46) >> 63)
        {
          break;
        }

        v46 = v60 + v59;
        if (__OFADD__(v60, v59))
        {
          break;
        }

        ++v44;
        if (!--v42)
        {
          goto LABEL_71;
        }
      }
    }

LABEL_79:
    v46 = 0;
    LOBYTE(v41) = 1;
LABEL_80:
    LOBYTE(v127) = v41;
    if (v41)
    {
      goto LABEL_81;
    }

LABEL_84:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1002248CC(0, *(v37 + 2) + 1, 1, v37);
    }

    v67 = *(v37 + 2);
    v66 = *(v37 + 3);
    if (v67 >= v66 >> 1)
    {
      v37 = sub_1002248CC((v66 > 1), v67 + 1, 1, v37);
    }

    *(v37 + 2) = v67 + 1;
    *&v37[8 * v67 + 32] = v46;
    if (v36 == v18)
    {
      goto LABEL_92;
    }
  }

  v129 = v40;
  v130 = v39 & 0xFFFFFFFFFFFFFFLL;
  if (v40 != 43)
  {
    if (v40 == 45)
    {
      if (!v41)
      {
        goto LABEL_124;
      }

      if (--v41)
      {
        v46 = 0;
        v50 = v123;
        while (1)
        {
          v51 = *v50 - 48;
          if (v51 > 9)
          {
            break;
          }

          v52 = 10 * v46;
          if ((v46 * 10) >> 64 != (10 * v46) >> 63)
          {
            break;
          }

          v46 = v52 - v51;
          if (__OFSUB__(v52, v51))
          {
            break;
          }

          ++v50;
          if (!--v41)
          {
            goto LABEL_80;
          }
        }
      }
    }

    else if (v41)
    {
      v46 = 0;
      v61 = &v129;
      while (1)
      {
        v62 = *v61 - 48;
        if (v62 > 9)
        {
          break;
        }

        v63 = 10 * v46;
        if ((v46 * 10) >> 64 != (10 * v46) >> 63)
        {
          break;
        }

        v46 = v63 + v62;
        if (__OFADD__(v63, v62))
        {
          break;
        }

        v61 = (v61 + 1);
        if (!--v41)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_79;
  }

  if (v41)
  {
    if (--v41)
    {
      v46 = 0;
      v56 = v123;
      while (1)
      {
        v57 = *v56 - 48;
        if (v57 > 9)
        {
          break;
        }

        v58 = 10 * v46;
        if ((v46 * 10) >> 64 != (10 * v46) >> 63)
        {
          break;
        }

        v46 = v58 + v57;
        if (__OFADD__(v58, v57))
        {
          break;
        }

        ++v56;
        if (!--v41)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_79;
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  swift_once();
LABEL_107:
  v123 = qword_1003824C0;
  LODWORD(v121) = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1002EED30;
  v129 = 0;
  v130 = 0xE000000000000000;
  v75 = _swiftEmptyArrayStorage;
  v124 = v74;
  if (v27)
  {
    v122 = v18;
    v127 = _swiftEmptyArrayStorage;
    sub_1001F53D8(0, v27, 0);
    v75 = v127;
    v76 = (v125 + 32);
    do
    {
      v77 = *v76++;
      v126 = v77;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      v127 = v75;
      v82 = v75[2];
      v81 = v75[3];
      if (v82 >= v81 >> 1)
      {
        sub_1001F53D8((v81 > 1), v82 + 1, 1);
        v75 = v127;
      }

      v75[2] = v82 + 1;
      v83 = &v75[2 * v82];
      v83[4] = v78;
      v83[5] = v80;
      --v27;
    }

    while (v27);
    v18 = v122;
    v84 = v124;
  }

  else
  {
    v84 = v74;
  }

  v127 = v75;
  v85 = sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
  v86 = sub_1001A7684();
  v87 = BidirectionalCollection<>.joined(separator:)();
  v89 = v88;

  v90._countAndFlagsBits = v87;
  v90._object = v89;
  String.append(_:)(v90);

  v91 = v129;
  v92 = v130;
  v84[7] = &type metadata for String;
  v93 = sub_1001A76E8();
  v84[4] = v91;
  v84[5] = v92;
  v84[12] = &type metadata for Int;
  v84[13] = &protocol witness table for Int;
  v94 = v119;
  v84[8] = v93;
  v84[9] = v94;
  v129 = 0;
  v130 = 0xE000000000000000;
  v95 = *(v18 + 2);
  v96 = _swiftEmptyArrayStorage;
  if (v95)
  {
    v122 = v86;
    v125 = v85;
    v127 = _swiftEmptyArrayStorage;
    sub_1001F53D8(0, v95, 0);
    v96 = v127;
    v97 = v18 + 32;
    do
    {
      v98 = *v97++;
      v126 = v98;
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v127 = v96;
      v102 = v96[2];
      v101 = v96[3];
      if (v102 >= v101 >> 1)
      {
        v120 = v99;
        v104 = v18;
        v105 = v100;
        sub_1001F53D8((v101 > 1), v102 + 1, 1);
        v100 = v105;
        v18 = v104;
        v99 = v120;
        v96 = v127;
      }

      v96[2] = v102 + 1;
      v103 = &v96[2 * v102];
      v103[4] = v99;
      v103[5] = v100;
      --v95;
    }

    while (v95);
    v84 = v124;
  }

  v127 = v96;
  v106 = BidirectionalCollection<>.joined(separator:)();
  v108 = v107;

  v109._countAndFlagsBits = v106;
  v109._object = v108;
  String.append(_:)(v109);

  v110 = v129;
  v111 = v130;
  v84[17] = &type metadata for String;
  v84[18] = v93;
  v84[14] = v110;
  v84[15] = v111;
  os_log(_:dso:log:type:_:)();
  sub_1001A5474(v113, v114);

  (*(v116 + 8))(v115, v117);
  return v18;
}