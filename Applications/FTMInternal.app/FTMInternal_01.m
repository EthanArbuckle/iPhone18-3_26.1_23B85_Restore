uint64_t sub_1000338D8(uint64_t a1, void *a2)
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
        v182 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v182 & 0x7F) << v5;
        if ((v182 & 0x80) == 0)
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
          v182 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v182 & 0x7F) << v16;
          if ((v182 & 0x80) == 0)
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
            *(a1 + 120) |= 0x80000u;
            while (1)
            {
              v182 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v182 & 0x7F) << v23;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
LABEL_307:
                v179 = 100;
                goto LABEL_356;
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

            goto LABEL_307;
          case 2:
            v100 = 0;
            v101 = 0;
            v102 = 0;
            *(a1 + 120) |= 0x100000u;
            while (1)
            {
              v182 = 0;
              v103 = [a2 position] + 1;
              if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
              {
                v105 = [a2 data];
                [v105 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v102 |= (v182 & 0x7F) << v100;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v100 += 7;
              v11 = v101++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_311;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v102;
            }

LABEL_311:
            v179 = 104;
            goto LABEL_356;
          case 3:
            v85 = PBReaderReadString();
            v86 = 16;
            goto LABEL_133;
          case 5:
            v130 = 0;
            v131 = 0;
            v132 = 0;
            *(a1 + 120) |= 4u;
            while (1)
            {
              v182 = 0;
              v133 = [a2 position] + 1;
              if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
              {
                v135 = [a2 data];
                [v135 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v132 |= (v182 & 0x7F) << v130;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v130 += 7;
              v11 = v131++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_331;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v132;
            }

LABEL_331:
            v179 = 24;
            goto LABEL_356;
          case 6:
            v136 = 0;
            v137 = 0;
            v138 = 0;
            *(a1 + 120) |= 0x200000u;
            while (1)
            {
              v182 = 0;
              v139 = [a2 position] + 1;
              if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
              {
                v141 = [a2 data];
                [v141 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v138 |= (v182 & 0x7F) << v136;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v136 += 7;
              v11 = v137++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_335;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v138;
            }

LABEL_335:
            v179 = 108;
            goto LABEL_356;
          case 7:
            v87 = 0;
            v88 = 0;
            v89 = 0;
            *(a1 + 120) |= 8u;
            while (1)
            {
              v182 = 0;
              v90 = [a2 position] + 1;
              if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
              {
                v92 = [a2 data];
                [v92 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v89 |= (v182 & 0x7F) << v87;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              v11 = v88++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_299;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v89;
            }

LABEL_299:
            v179 = 28;
            goto LABEL_356;
          case 8:
            v106 = 0;
            v107 = 0;
            v108 = 0;
            *(a1 + 120) |= 0x400000u;
            while (1)
            {
              v182 = 0;
              v109 = [a2 position] + 1;
              if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
              {
                v111 = [a2 data];
                [v111 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v108 |= (v182 & 0x7F) << v106;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v106 += 7;
              v11 = v107++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_315;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v108;
            }

LABEL_315:
            v179 = 112;
            goto LABEL_356;
          case 9:
            v112 = 0;
            v113 = 0;
            v114 = 0;
            *(a1 + 120) |= 1u;
            while (1)
            {
              v182 = 0;
              v115 = [a2 position] + 1;
              if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
              {
                v117 = [a2 data];
                [v117 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v114 |= (v182 & 0x7F) << v112;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v112 += 7;
              v11 = v113++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_319;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v114;
            }

LABEL_319:
            v179 = 8;
            goto LABEL_356;
          case 10:
            v148 = 0;
            v149 = 0;
            v150 = 0;
            *(a1 + 120) |= 2u;
            while (1)
            {
              v182 = 0;
              v151 = [a2 position] + 1;
              if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
              {
                v153 = [a2 data];
                [v153 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v150 |= (v182 & 0x7F) << v148;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v148 += 7;
              v11 = v149++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_343;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v150;
            }

LABEL_343:
            v179 = 12;
            goto LABEL_356;
          case 11:
            v142 = 0;
            v143 = 0;
            v144 = 0;
            *(a1 + 120) |= 0x10u;
            while (1)
            {
              v182 = 0;
              v145 = [a2 position] + 1;
              if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
              {
                v147 = [a2 data];
                [v147 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v144 |= (v182 & 0x7F) << v142;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v142 += 7;
              v11 = v143++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_339;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v144;
            }

LABEL_339:
            v179 = 32;
            goto LABEL_356;
          case 12:
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 120) |= 0x20u;
            while (1)
            {
              v182 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v182 & 0x7F) << v61;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_283;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v63;
            }

LABEL_283:
            v179 = 36;
            goto LABEL_356;
          case 13:
            v85 = PBReaderReadString();
            v86 = 72;
LABEL_133:
            v93 = *(a1 + v86);
            *(a1 + v86) = v85;

            goto LABEL_357;
          case 15:
            v73 = 0;
            v74 = 0;
            v75 = 0;
            *(a1 + 120) |= 0x400u;
            while (1)
            {
              v182 = 0;
              v76 = [a2 position] + 1;
              if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
              {
                v78 = [a2 data];
                [v78 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v75 |= (v182 & 0x7F) << v73;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              v11 = v74++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_291;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v75;
            }

LABEL_291:
            v179 = 56;
            goto LABEL_356;
          case 16:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 120) |= 0x800u;
            while (1)
            {
              v182 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v182 & 0x7F) << v42;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_273;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v44;
            }

LABEL_273:
            v179 = 60;
            goto LABEL_356;
          case 17:
            v118 = 0;
            v119 = 0;
            v120 = 0;
            *(a1 + 120) |= 0x1000u;
            while (1)
            {
              v182 = 0;
              v121 = [a2 position] + 1;
              if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
              {
                v123 = [a2 data];
                [v123 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v120 |= (v182 & 0x7F) << v118;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v118 += 7;
              v11 = v119++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_323;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v120;
            }

LABEL_323:
            v179 = 64;
            goto LABEL_356;
          case 18:
            v124 = 0;
            v125 = 0;
            v126 = 0;
            *(a1 + 120) |= 0x2000u;
            while (1)
            {
              v182 = 0;
              v127 = [a2 position] + 1;
              if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
              {
                v129 = [a2 data];
                [v129 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v126 |= (v182 & 0x7F) << v124;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v124 += 7;
              v11 = v125++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_327;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v126;
            }

LABEL_327:
            v179 = 68;
            goto LABEL_356;
          case 19:
            v160 = 0;
            v161 = 0;
            v162 = 0;
            *(a1 + 120) |= 0x4000u;
            while (1)
            {
              v182 = 0;
              v163 = [a2 position] + 1;
              if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
              {
                v165 = [a2 data];
                [v165 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v162 |= (v182 & 0x7F) << v160;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v160 += 7;
              v11 = v161++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_351;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v162;
            }

LABEL_351:
            v179 = 80;
            goto LABEL_356;
          case 20:
            v154 = 0;
            v155 = 0;
            v156 = 0;
            *(a1 + 120) |= 0x8000u;
            while (1)
            {
              v182 = 0;
              v157 = [a2 position] + 1;
              if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
              {
                v159 = [a2 data];
                [v159 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v156 |= (v182 & 0x7F) << v154;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v154 += 7;
              v11 = v155++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_347;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v156;
            }

LABEL_347:
            v179 = 84;
            goto LABEL_356;
          case 21:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 120) |= 0x40u;
            while (1)
            {
              v182 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v182 & 0x7F) << v30;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_265;
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

LABEL_265:
            v179 = 40;
            goto LABEL_356;
          case 22:
            v79 = 0;
            v80 = 0;
            v81 = 0;
            *(a1 + 120) |= 0x40000u;
            while (1)
            {
              v182 = 0;
              v82 = [a2 position] + 1;
              if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
              {
                v84 = [a2 data];
                [v84 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v81 |= (v182 & 0x7F) << v79;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v11 = v80++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_295;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v81;
            }

LABEL_295:
            v179 = 96;
            goto LABEL_356;
          case 23:
            v166 = 0;
            v167 = 0;
            v168 = 0;
            *(a1 + 120) |= 0x20000u;
            while (1)
            {
              v182 = 0;
              v169 = [a2 position] + 1;
              if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
              {
                v171 = [a2 data];
                [v171 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v168 |= (v182 & 0x7F) << v166;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v166 += 7;
              v11 = v167++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_355;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v168;
            }

LABEL_355:
            v179 = 92;
            goto LABEL_356;
          case 24:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 120) |= 0x80u;
            while (1)
            {
              v182 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v182 & 0x7F) << v36;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_269;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v38;
            }

LABEL_269:
            v179 = 44;
            goto LABEL_356;
          case 25:
            v67 = 0;
            v68 = 0;
            v69 = 0;
            *(a1 + 120) |= 0x200u;
            while (1)
            {
              v182 = 0;
              v70 = [a2 position] + 1;
              if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
              {
                v72 = [a2 data];
                [v72 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v69 |= (v182 & 0x7F) << v67;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              v11 = v68++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_287;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v69;
            }

LABEL_287:
            v179 = 52;
            goto LABEL_356;
          case 26:
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 120) |= 0x100u;
            while (1)
            {
              v182 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v182 & 0x7F) << v55;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_279;
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

LABEL_279:
            v179 = 48;
            goto LABEL_356;
          case 27:
            v94 = 0;
            v95 = 0;
            v96 = 0;
            *(a1 + 120) |= 0x10000u;
            while (1)
            {
              v182 = 0;
              v97 = [a2 position] + 1;
              if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
              {
                v99 = [a2 data];
                [v99 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v96 |= (v182 & 0x7F) << v94;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              v11 = v95++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_303;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v96;
            }

LABEL_303:
            v179 = 88;
LABEL_356:
            *(a1 + v179) = v29;
            goto LABEL_357;
          case 28:
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 120) |= 0x800000u;
            while (1)
            {
              v182 = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v182 & 0x7F) << v48;
              if ((v182 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                LOBYTE(v54) = 0;
                goto LABEL_275;
              }
            }

            v54 = (v50 != 0) & ~[a2 hasError];
LABEL_275:
            v180 = 116;
            goto LABEL_361;
          case 29:
            v172 = 0;
            v173 = 0;
            v174 = 0;
            *(a1 + 120) |= 0x1000000u;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_357;
            }

            return result;
        }

        while (1)
        {
          v182 = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            v177 = [a2 data];
            [v177 getBytes:&v182 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v174 |= (v182 & 0x7F) << v172;
          if ((v182 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v11 = v173++ >= 9;
          if (v11)
          {
            LOBYTE(v54) = 0;
            goto LABEL_360;
          }
        }

        v54 = (v174 != 0) & ~[a2 hasError];
LABEL_360:
        v180 = 117;
LABEL_361:
        *(a1 + v180) = v54;
      }

LABEL_357:
      v181 = [a2 position];
    }

    while (v181 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100037578(_BYTE *a1, void *a2)
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
        a1[28] |= 1u;
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
        v43 = 16;
        goto LABEL_80;
      }

      if (v13 != 4)
      {
        goto LABEL_48;
      }

      v30 = objc_alloc_init(GeraNeighborCell);
      [a1 addGeraNcell:v30];
      v46[0] = 0;
      v46[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000D4BD0(v30, a2))
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
      a1[28] |= 4u;
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
      v43 = 24;
      goto LABEL_80;
    }

    if (v13 == 2)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      a1[28] |= 2u;
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
      v43 = 20;
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

uint64_t sub_10003D470(uint64_t a1, void *a2)
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
      LOBYTE(v261) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v261 & 0x7F) << v5;
      if ((v261 & 0x80) == 0)
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
        LOBYTE(v261) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v261 & 0x7F) << v16;
        if ((v261 & 0x80) == 0)
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
      goto LABEL_527;
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 212) |= 1uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v261 & 0x7F) << v23;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
LABEL_478:
            *(a1 + 8) = v29;
            goto LABEL_527;
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

        goto LABEL_478;
      case 2:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 212) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v128 = [a2 position] + 1;
          if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
          {
            v130 = [a2 data];
            [v130 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v127 |= (v261 & 0x7F) << v125;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v11 = v126++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_446;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v127;
        }

LABEL_446:
        v257 = 144;
        goto LABEL_526;
      case 3:
        v185 = 0;
        v186 = 0;
        v187 = 0;
        *(a1 + 212) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v188 = [a2 position] + 1;
          if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 1, v189 <= objc_msgSend(a2, "length")))
          {
            v190 = [a2 data];
            [v190 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v187 |= (v261 & 0x7F) << v185;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v185 += 7;
          v11 = v186++ >= 9;
          if (v11)
          {
            LOBYTE(v81) = 0;
            goto LABEL_484;
          }
        }

        v81 = (v187 != 0) & ~[a2 hasError];
LABEL_484:
        v258 = 205;
        goto LABEL_501;
      case 4:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 212) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v261 & 0x7F) << v119;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v11 = v120++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_442;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v121;
        }

LABEL_442:
        v257 = 56;
        goto LABEL_526;
      case 6:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 212) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            v166 = [a2 data];
            [v166 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v261 & 0x7F) << v161;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v11 = v162++ >= 9;
          if (v11)
          {
            LOBYTE(v81) = 0;
            goto LABEL_468;
          }
        }

        v81 = (v163 != 0) & ~[a2 hasError];
LABEL_468:
        v258 = 211;
        goto LABEL_501;
      case 7:
        v179 = 0;
        v180 = 0;
        v181 = 0;
        *(a1 + 212) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v182 = [a2 position] + 1;
          if (v182 >= [a2 position] && (v183 = objc_msgSend(a2, "position") + 1, v183 <= objc_msgSend(a2, "length")))
          {
            v184 = [a2 data];
            [v184 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v181 |= (v261 & 0x7F) << v179;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v179 += 7;
          v11 = v180++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_482;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v181;
        }

LABEL_482:
        v257 = 128;
        goto LABEL_526;
      case 8:
        v221 = 0;
        v222 = 0;
        v223 = 0;
        *(a1 + 212) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v224 = [a2 position] + 1;
          if (v224 >= [a2 position] && (v225 = objc_msgSend(a2, "position") + 1, v225 <= objc_msgSend(a2, "length")))
          {
            v226 = [a2 data];
            [v226 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v223 |= (v261 & 0x7F) << v221;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v221 += 7;
          v11 = v222++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_505;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v223;
        }

LABEL_505:
        v257 = 184;
        goto LABEL_526;
      case 9:
        v55 = objc_alloc_init(ConnStats);
        v94 = 136;
        goto LABEL_336;
      case 10:
        v55 = objc_alloc_init(ConnStats);
        v94 = 120;
        goto LABEL_336;
      case 11:
        v55 = objc_alloc_init(ConnStats);
        v94 = 176;
LABEL_336:
        objc_storeStrong((a1 + v94), v55);
        v261 = 0;
        v262 = 0;
        if (!PBReaderPlaceMark() || !sub_1000338D8(v55, a2))
        {
          goto LABEL_529;
        }

        goto LABEL_388;
      case 12:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 212) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v261 & 0x7F) << v107;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v11 = v108++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_434;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v109;
        }

LABEL_434:
        v257 = 92;
        goto LABEL_526;
      case 13:
        v167 = 0;
        v168 = 0;
        v169 = 0;
        *(a1 + 212) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v170 = [a2 position] + 1;
          if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
          {
            v172 = [a2 data];
            [v172 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v169 |= (v261 & 0x7F) << v167;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v167 += 7;
          v11 = v168++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_472;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v169;
        }

LABEL_472:
        v257 = 88;
        goto LABEL_526;
      case 14:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 212) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v152 = [a2 position] + 1;
          if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
          {
            v154 = [a2 data];
            [v154 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v151 |= (v261 & 0x7F) << v149;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v11 = v150++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_462;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v151;
        }

LABEL_462:
        v257 = 112;
        goto LABEL_526;
      case 15:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 212) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v261 & 0x7F) << v82;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v11 = v83++ >= 9;
          if (v11)
          {
            LOBYTE(v81) = 0;
            goto LABEL_420;
          }
        }

        v81 = (v84 != 0) & ~[a2 hasError];
LABEL_420:
        v258 = 207;
        goto LABEL_501;
      case 16:
        v209 = 0;
        v210 = 0;
        v211 = 0;
        *(a1 + 212) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v212 = [a2 position] + 1;
          if (v212 >= [a2 position] && (v213 = objc_msgSend(a2, "position") + 1, v213 <= objc_msgSend(a2, "length")))
          {
            v214 = [a2 data];
            [v214 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v211 |= (v261 & 0x7F) << v209;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v209 += 7;
          v11 = v210++ >= 9;
          if (v11)
          {
            LOBYTE(v81) = 0;
            goto LABEL_498;
          }
        }

        v81 = (v211 != 0) & ~[a2 hasError];
LABEL_498:
        v258 = 209;
        goto LABEL_501;
      case 17:
        v215 = 0;
        v216 = 0;
        v217 = 0;
        *(a1 + 212) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v218 = [a2 position] + 1;
          if (v218 >= [a2 position] && (v219 = objc_msgSend(a2, "position") + 1, v219 <= objc_msgSend(a2, "length")))
          {
            v220 = [a2 data];
            [v220 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v217 |= (v261 & 0x7F) << v215;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v215 += 7;
          v11 = v216++ >= 9;
          if (v11)
          {
            LOBYTE(v81) = 0;
            goto LABEL_500;
          }
        }

        v81 = (v217 != 0) & ~[a2 hasError];
LABEL_500:
        v258 = 210;
        goto LABEL_501;
      case 18:
        v233 = 0;
        v234 = 0;
        v235 = 0;
        *(a1 + 212) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v236 = [a2 position] + 1;
          if (v236 >= [a2 position] && (v237 = objc_msgSend(a2, "position") + 1, v237 <= objc_msgSend(a2, "length")))
          {
            v238 = [a2 data];
            [v238 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v235 |= (v261 & 0x7F) << v233;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v233 += 7;
          v11 = v234++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_513;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v235;
        }

LABEL_513:
        v257 = 188;
        goto LABEL_526;
      case 19:
        v227 = 0;
        v228 = 0;
        v229 = 0;
        *(a1 + 212) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v230 = [a2 position] + 1;
          if (v230 >= [a2 position] && (v231 = objc_msgSend(a2, "position") + 1, v231 <= objc_msgSend(a2, "length")))
          {
            v232 = [a2 data];
            [v232 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v229 |= (v261 & 0x7F) << v227;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v227 += 7;
          v11 = v228++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_509;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v229;
        }

LABEL_509:
        v257 = 72;
        goto LABEL_526;
      case 20:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 212) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v261 & 0x7F) << v69;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v11 = v70++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_416;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v71;
        }

LABEL_416:
        v257 = 168;
        goto LABEL_526;
      case 21:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 212) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v158 = [a2 position] + 1;
          if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
          {
            v160 = [a2 data];
            [v160 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v157 |= (v261 & 0x7F) << v155;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v11 = v156++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_466;
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

LABEL_466:
        v257 = 160;
        goto LABEL_526;
      case 22:
        v245 = 0;
        v246 = 0;
        v247 = 0;
        *(a1 + 212) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v248 = [a2 position] + 1;
          if (v248 >= [a2 position] && (v249 = objc_msgSend(a2, "position") + 1, v249 <= objc_msgSend(a2, "length")))
          {
            v250 = [a2 data];
            [v250 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v247 |= (v261 & 0x7F) << v245;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v245 += 7;
          v11 = v246++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_521;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v247;
        }

LABEL_521:
        v257 = 164;
        goto LABEL_526;
      case 29:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 212) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v78 = [a2 position] + 1;
          if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
          {
            v80 = [a2 data];
            [v80 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v77 |= (v261 & 0x7F) << v75;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v11 = v76++ >= 9;
          if (v11)
          {
            LOBYTE(v81) = 0;
            goto LABEL_418;
          }
        }

        v81 = (v77 != 0) & ~[a2 hasError];
LABEL_418:
        v258 = 204;
        goto LABEL_501;
      case 30:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 212) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (v261 & 0x7F) << v143;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v11 = v144++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_458;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v145;
        }

LABEL_458:
        v257 = 52;
        goto LABEL_526;
      case 31:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 212) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v261 & 0x7F) << v95;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v11 = v96++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_428;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v97;
        }

LABEL_428:
        v257 = 36;
        goto LABEL_526;
      case 32:
        v191 = 0;
        v192 = 0;
        v193 = 0;
        *(a1 + 212) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v194 = [a2 position] + 1;
          if (v194 >= [a2 position] && (v195 = objc_msgSend(a2, "position") + 1, v195 <= objc_msgSend(a2, "length")))
          {
            v196 = [a2 data];
            [v196 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v193 |= (v261 & 0x7F) << v191;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v191 += 7;
          v11 = v192++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_488;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v193;
        }

LABEL_488:
        v257 = 44;
        goto LABEL_526;
      case 33:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 212) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v261 & 0x7F) << v88;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v11 = v89++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_424;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v90;
        }

LABEL_424:
        v257 = 40;
        goto LABEL_526;
      case 34:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 212) |= 4uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v261 & 0x7F) << v57;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v11 = v58++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_408;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v59;
        }

LABEL_408:
        v257 = 28;
        goto LABEL_526;
      case 35:
        v251 = 0;
        v252 = 0;
        v253 = 0;
        *(a1 + 212) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v254 = [a2 position] + 1;
          if (v254 >= [a2 position] && (v255 = objc_msgSend(a2, "position") + 1, v255 <= objc_msgSend(a2, "length")))
          {
            v256 = [a2 data];
            [v256 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v253 |= (v261 & 0x7F) << v251;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v251 += 7;
          v11 = v252++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_525;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v253;
        }

LABEL_525:
        v257 = 60;
        goto LABEL_526;
      case 36:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        *(a1 + 212) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (v261 & 0x7F) << v113;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v11 = v114++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_438;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v115;
        }

LABEL_438:
        v257 = 64;
        goto LABEL_526;
      case 37:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 212) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            v136 = [a2 data];
            [v136 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v261 & 0x7F) << v131;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v11 = v132++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_450;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v133;
        }

LABEL_450:
        v257 = 68;
        goto LABEL_526;
      case 38:
        v203 = 0;
        v204 = 0;
        v205 = 0;
        *(a1 + 212) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v206 = [a2 position] + 1;
          if (v206 >= [a2 position] && (v207 = objc_msgSend(a2, "position") + 1, v207 <= objc_msgSend(a2, "length")))
          {
            v208 = [a2 data];
            [v208 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v205 |= (v261 & 0x7F) << v203;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v203 += 7;
          v11 = v204++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_496;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v205;
        }

LABEL_496:
        v257 = 192;
        goto LABEL_526;
      case 39:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 212) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v261 & 0x7F) << v137;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v11 = v138++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_454;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v139;
        }

LABEL_454:
        v257 = 196;
        goto LABEL_526;
      case 40:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 212) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v261 & 0x7F) << v37;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_396;
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

LABEL_396:
        v257 = 200;
        goto LABEL_526;
      case 41:
        v55 = objc_alloc_init(ComponentPowerStats);
        v56 = 16;
        goto LABEL_386;
      case 42:
        v55 = objc_alloc_init(ComponentPowerStats);
        v56 = 96;
        goto LABEL_386;
      case 43:
        v55 = objc_alloc_init(ComponentPowerStats);
        v56 = 104;
        goto LABEL_386;
      case 44:
        v55 = objc_alloc_init(ComponentPowerStats);
        v56 = 152;
LABEL_386:
        objc_storeStrong((a1 + v56), v55);
        v261 = 0;
        v262 = 0;
        if (PBReaderPlaceMark() && sub_10007108C(v55, a2))
        {
LABEL_388:
          PBReaderRecallMark();

LABEL_527:
          v259 = [a2 position];
          if (v259 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_529:

        return 0;
      case 45:
        v197 = 0;
        v198 = 0;
        v199 = 0;
        *(a1 + 212) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v200 = [a2 position] + 1;
          if (v200 >= [a2 position] && (v201 = objc_msgSend(a2, "position") + 1, v201 <= objc_msgSend(a2, "length")))
          {
            v202 = [a2 data];
            [v202 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v199 |= (v261 & 0x7F) << v197;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v197 += 7;
          v11 = v198++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_492;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v199;
        }

LABEL_492:
        v257 = 80;
        goto LABEL_526;
      case 46:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 212) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v261 & 0x7F) << v49;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_404;
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

LABEL_404:
        v257 = 84;
        goto LABEL_526;
      case 47:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 212) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v261 & 0x7F) << v43;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_400;
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

LABEL_400:
        v257 = 76;
        goto LABEL_526;
      case 48:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 212) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v261 & 0x7F) << v101;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v11 = v102++ >= 9;
          if (v11)
          {
            LOBYTE(v81) = 0;
            goto LABEL_430;
          }
        }

        v81 = (v103 != 0) & ~[a2 hasError];
LABEL_430:
        v258 = 208;
        goto LABEL_501;
      case 49:
        v173 = 0;
        v174 = 0;
        v175 = 0;
        *(a1 + 212) |= &_mh_execute_header;
        while (1)
        {
          LOBYTE(v261) = 0;
          v176 = [a2 position] + 1;
          if (v176 >= [a2 position] && (v177 = objc_msgSend(a2, "position") + 1, v177 <= objc_msgSend(a2, "length")))
          {
            v178 = [a2 data];
            [v178 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v175 |= (v261 & 0x7F) << v173;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v173 += 7;
          v11 = v174++ >= 9;
          if (v11)
          {
            LOBYTE(v81) = 0;
            goto LABEL_474;
          }
        }

        v81 = (v175 != 0) & ~[a2 hasError];
LABEL_474:
        v258 = 206;
LABEL_501:
        *(a1 + v258) = v81;
        goto LABEL_527;
      case 50:
        v239 = 0;
        v240 = 0;
        v241 = 0;
        *(a1 + 212) |= 2uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v242 = [a2 position] + 1;
          if (v242 >= [a2 position] && (v243 = objc_msgSend(a2, "position") + 1, v243 <= objc_msgSend(a2, "length")))
          {
            v244 = [a2 data];
            [v244 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v241 |= (v261 & 0x7F) << v239;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v239 += 7;
          v11 = v240++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_517;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v241;
        }

LABEL_517:
        v257 = 24;
        goto LABEL_526;
      case 51:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 212) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v261 & 0x7F) << v30;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_392;
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

LABEL_392:
        v257 = 48;
        goto LABEL_526;
      case 52:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 212) |= 8uLL;
        while (1)
        {
          LOBYTE(v261) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v261 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v261 & 0x7F) << v63;
          if ((v261 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v11 = v64++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_412;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v65;
        }

LABEL_412:
        v257 = 32;
LABEL_526:
        *(a1 + v257) = v36;
        goto LABEL_527;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_527;
        }

        return 0;
    }
  }
}

uint64_t sub_100044A7C(uint64_t a1, void *a2)
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
      LOBYTE(v143) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v143 & 0x7F) << v5;
      if ((v143 & 0x80) == 0)
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
        LOBYTE(v143) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v143 & 0x7F) << v16;
        if ((v143 & 0x80) == 0)
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
      goto LABEL_298;
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 172) |= 1u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v143 & 0x7F) << v23;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
LABEL_264:
            *(a1 + 8) = v29;
            goto LABEL_298;
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

        goto LABEL_264;
      case 2:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 172) |= 0x8000u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v143 & 0x7F) << v92;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v11 = v93++ >= 9;
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
          v36 = v94;
        }

LABEL_268:
        v140 = 104;
        goto LABEL_297;
      case 5:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 172) |= 0x800u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v143 & 0x7F) << v80;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
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
          v36 = v82;
        }

LABEL_256:
        v140 = 88;
        goto LABEL_297;
      case 6:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 172) |= 2u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v113 = [a2 position] + 1;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
          {
            v115 = [a2 data];
            [v115 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v112 |= (v143 & 0x7F) << v110;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v11 = v111++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_280;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v112;
        }

LABEL_280:
        v140 = 48;
        goto LABEL_297;
      case 7:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 172) |= 0x80u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            v121 = [a2 data];
            [v121 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v143 & 0x7F) << v116;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v11 = v117++ >= 9;
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
          v36 = v118;
        }

LABEL_284:
        v140 = 72;
        goto LABEL_297;
      case 8:
        v37 = objc_alloc_init(PerEndStatus);
        [a1 addEndStatusCountConnectedCdma:v37];
        goto LABEL_212;
      case 9:
        v37 = objc_alloc_init(PerEndStatus);
        [a1 addEndStatusCountNotConnectedCdma:v37];
        goto LABEL_212;
      case 10:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        *(a1 + 172) |= 0x10000u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v143 & 0x7F) << v98;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v11 = v99++ >= 9;
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
          v36 = v100;
        }

LABEL_272:
        v140 = 160;
        goto LABEL_297;
      case 11:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 172) |= 0x40u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v131 = [a2 position] + 1;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
          {
            v133 = [a2 data];
            [v133 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v130 |= (v143 & 0x7F) << v128;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v11 = v129++ >= 9;
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
          v36 = v130;
        }

LABEL_292:
        v140 = 68;
        goto LABEL_297;
      case 12:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 172) |= 0x20u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            v127 = [a2 data];
            [v127 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v124 |= (v143 & 0x7F) << v122;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v11 = v123++ >= 9;
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
          v36 = v124;
        }

LABEL_288:
        v140 = 64;
        goto LABEL_297;
      case 13:
        v37 = objc_alloc_init(PerReleaseCause);
        [a1 addReleaseCauseCountConnected:v37];
        goto LABEL_218;
      case 14:
        v37 = objc_alloc_init(PerReleaseCause);
        [a1 addReleaseCauseCountNotConnected:v37];
        goto LABEL_218;
      case 15:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 172) |= 0x2000u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v143 & 0x7F) << v68;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v11 = v69++ >= 9;
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
          v36 = v70;
        }

LABEL_248:
        v140 = 96;
        goto LABEL_297;
      case 16:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 172) |= 8u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v143 & 0x7F) << v38;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_228;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v40;
        }

LABEL_228:
        v140 = 56;
        goto LABEL_297;
      case 17:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 172) |= 0x200u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v143 & 0x7F) << v104;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v11 = v105++ >= 9;
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
          v36 = v106;
        }

LABEL_276:
        v140 = 80;
        goto LABEL_297;
      case 18:
        v37 = objc_alloc_init(PerEndStatus);
        [a1 addEndStatusCountConnectedGw:v37];
        goto LABEL_212;
      case 19:
        v37 = objc_alloc_init(PerEndStatus);
        [a1 addEndStatusCountNotConnectedGw:v37];
LABEL_212:
        v143 = 0;
        v144 = 0;
        if (!PBReaderPlaceMark() || !sub_100050E40(v37, a2))
        {
          goto LABEL_300;
        }

        goto LABEL_220;
      case 25:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 172) |= 0x1000u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v143 & 0x7F) << v134;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v11 = v135++ >= 9;
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
          v36 = v136;
        }

LABEL_296:
        v140 = 92;
        goto LABEL_297;
      case 26:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 172) |= 4u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v143 & 0x7F) << v30;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_224;
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

LABEL_224:
        v140 = 52;
        goto LABEL_297;
      case 27:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 172) |= 0x100u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v143 & 0x7F) << v74;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
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
          v36 = v76;
        }

LABEL_252:
        v140 = 76;
        goto LABEL_297;
      case 28:
        v37 = objc_alloc_init(PerReleaseCause);
        [a1 addReleaseCauseCountConnectedGsm:v37];
        goto LABEL_218;
      case 29:
        v37 = objc_alloc_init(PerReleaseCause);
        [a1 addReleaseCauseCountNotConnectedGsm:v37];
        goto LABEL_218;
      case 30:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 172) |= 0x20000u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v143 & 0x7F) << v62;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
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
          v36 = v64;
        }

LABEL_244:
        v140 = 164;
        goto LABEL_297;
      case 35:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 172) |= 0x4000u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v143 & 0x7F) << v50;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
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
          v36 = v52;
        }

LABEL_236:
        v140 = 100;
        goto LABEL_297;
      case 36:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 172) |= 0x10u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v143 & 0x7F) << v86;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v11 = v87++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_260;
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

LABEL_260:
        v140 = 60;
        goto LABEL_297;
      case 37:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 172) |= 0x400u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v143 & 0x7F) << v44;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_232;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v46;
        }

LABEL_232:
        v140 = 84;
        goto LABEL_297;
      case 38:
        v37 = objc_alloc_init(PerReleaseCause);
        [a1 addReleaseCauseCountConnectedWcdma:v37];
        goto LABEL_218;
      case 39:
        v37 = objc_alloc_init(PerReleaseCause);
        [a1 addReleaseCauseCountNotConnectedWcdma:v37];
LABEL_218:
        v143 = 0;
        v144 = 0;
        if (PBReaderPlaceMark() && sub_1000A3C38(v37, a2))
        {
LABEL_220:
          PBReaderRecallMark();

LABEL_298:
          v141 = [a2 position];
          if (v141 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_300:

        return 0;
      case 40:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 172) |= 0x40000u;
        while (1)
        {
          LOBYTE(v143) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v143 & 0x7F) << v56;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
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
          v36 = v58;
        }

LABEL_240:
        v140 = 168;
LABEL_297:
        *(a1 + v140) = v36;
        goto LABEL_298;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_298;
        }

        return 0;
    }
  }
}

uint64_t sub_10004B524(uint64_t a1, void *a2)
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
        v208 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v208 & 0x7F) << v5;
        if ((v208 & 0x80) == 0)
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
          v208 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v208 & 0x7F) << v16;
          if ((v208 & 0x80) == 0)
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
            *(a1 + 140) |= 2u;
            while (1)
            {
              v208 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v208 & 0x7F) << v23;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
LABEL_345:
                v206 = 16;
                goto LABEL_346;
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

            goto LABEL_345;
          case 2:
            v106 = 0;
            v107 = 0;
            v108 = 0;
            *(a1 + 140) |= 0x200u;
            while (1)
            {
              v208 = 0;
              v109 = [a2 position] + 1;
              if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
              {
                v111 = [a2 data];
                [v111 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v108 |= (v208 & 0x7F) << v106;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v106 += 7;
              v11 = v107++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_350;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v108;
            }

LABEL_350:
            v205 = 72;
            goto LABEL_403;
          case 3:
            v86 = PBReaderReadData();
            v87 = 40;
            goto LABEL_297;
          case 4:
            v94 = 0;
            v95 = 0;
            v96 = 0;
            *(a1 + 140) |= 0x40000u;
            while (1)
            {
              v208 = 0;
              v97 = [a2 position] + 1;
              if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
              {
                v99 = [a2 data];
                [v99 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v96 |= (v208 & 0x7F) << v94;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              v11 = v95++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_337;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v96;
            }

LABEL_337:
            v205 = 108;
            goto LABEL_403;
          case 5:
            v56 = 0;
            v57 = 0;
            v58 = 0;
            *(a1 + 140) |= 0x8000000u;
            while (1)
            {
              v208 = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v58 |= (v208 & 0x7F) << v56;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v11 = v57++ >= 9;
              if (v11)
              {
                LOBYTE(v36) = 0;
                goto LABEL_313;
              }
            }

            v36 = (v58 != 0) & ~[a2 hasError];
LABEL_313:
            v204 = 135;
            goto LABEL_408;
          case 6:
            v125 = 0;
            v126 = 0;
            v127 = 0;
            *(a1 + 140) |= 0x10u;
            while (1)
            {
              v208 = 0;
              v128 = [a2 position] + 1;
              if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
              {
                v130 = [a2 data];
                [v130 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v127 |= (v208 & 0x7F) << v125;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v125 += 7;
              v11 = v126++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_362;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v127;
            }

LABEL_362:
            v205 = 32;
            goto LABEL_403;
          case 7:
            v143 = 0;
            v144 = 0;
            v145 = 0;
            *(a1 + 140) |= 0x100000u;
            while (1)
            {
              v208 = 0;
              v146 = [a2 position] + 1;
              if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
              {
                v148 = [a2 data];
                [v148 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v145 |= (v208 & 0x7F) << v143;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v143 += 7;
              v11 = v144++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_374;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v145;
            }

LABEL_374:
            v205 = 116;
            goto LABEL_403;
          case 8:
            v100 = 0;
            v101 = 0;
            v102 = 0;
            *(a1 + 140) |= 0x200000u;
            while (1)
            {
              v208 = 0;
              v103 = [a2 position] + 1;
              if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
              {
                v105 = [a2 data];
                [v105 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v102 |= (v208 & 0x7F) << v100;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v100 += 7;
              v11 = v101++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_341;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v102;
            }

LABEL_341:
            v205 = 120;
            goto LABEL_403;
          case 9:
            v161 = 0;
            v162 = 0;
            v163 = 0;
            *(a1 + 140) |= 0x40u;
            while (1)
            {
              v208 = 0;
              v164 = [a2 position] + 1;
              if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
              {
                v166 = [a2 data];
                [v166 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v163 |= (v208 & 0x7F) << v161;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v161 += 7;
              v11 = v162++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_386;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v163;
            }

LABEL_386:
            v205 = 52;
            goto LABEL_403;
          case 10:
            v68 = 0;
            v69 = 0;
            v70 = 0;
            *(a1 + 140) |= 0x4000u;
            while (1)
            {
              v208 = 0;
              v71 = [a2 position] + 1;
              if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
              {
                v73 = [a2 data];
                [v73 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v70 |= (v208 & 0x7F) << v68;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              v11 = v69++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_321;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v70;
            }

LABEL_321:
            v205 = 92;
            goto LABEL_403;
          case 11:
            v155 = 0;
            v156 = 0;
            v157 = 0;
            *(a1 + 140) |= 0x80u;
            while (1)
            {
              v208 = 0;
              v158 = [a2 position] + 1;
              if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
              {
                v160 = [a2 data];
                [v160 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v157 |= (v208 & 0x7F) << v155;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v155 += 7;
              v11 = v156++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_382;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v157;
            }

LABEL_382:
            v205 = 56;
            goto LABEL_403;
          case 12:
            v50 = 0;
            v51 = 0;
            v52 = 0;
            *(a1 + 140) |= 0x400u;
            while (1)
            {
              v208 = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v208 & 0x7F) << v50;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_311;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v52;
            }

LABEL_311:
            v205 = 76;
            goto LABEL_403;
          case 13:
            v62 = 0;
            v63 = 0;
            v64 = 0;
            *(a1 + 140) |= 0x800u;
            while (1)
            {
              v208 = 0;
              v65 = [a2 position] + 1;
              if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
              {
                v67 = [a2 data];
                [v67 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v64 |= (v208 & 0x7F) << v62;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v11 = v63++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_317;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v64;
            }

LABEL_317:
            v205 = 80;
            goto LABEL_403;
          case 14:
            v137 = 0;
            v138 = 0;
            v139 = 0;
            *(a1 + 140) |= 0x20u;
            while (1)
            {
              v208 = 0;
              v140 = [a2 position] + 1;
              if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
              {
                v142 = [a2 data];
                [v142 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v139 |= (v208 & 0x7F) << v137;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v137 += 7;
              v11 = v138++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_370;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v139;
            }

LABEL_370:
            v205 = 48;
            goto LABEL_403;
          case 15:
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 140) |= 1u;
            while (1)
            {
              v208 = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                v49 = [a2 data];
                [v49 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v208 & 0x7F) << v44;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v11 = v45++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_307;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v46;
            }

LABEL_307:
            v206 = 8;
LABEL_346:
            *(a1 + v206) = v29;
            goto LABEL_404;
          case 16:
            v88 = 0;
            v89 = 0;
            v90 = 0;
            *(a1 + 140) |= 0x100u;
            while (1)
            {
              v208 = 0;
              v91 = [a2 position] + 1;
              if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
              {
                v93 = [a2 data];
                [v93 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v90 |= (v208 & 0x7F) << v88;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v88 += 7;
              v11 = v89++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_333;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v90;
            }

LABEL_333:
            v205 = 60;
            goto LABEL_403;
          case 17:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 140) |= 0x400000u;
            while (1)
            {
              v208 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v208 & 0x7F) << v37;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_303;
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

LABEL_303:
            v205 = 124;
            goto LABEL_403;
          case 18:
            v113 = 0;
            v114 = 0;
            v115 = 0;
            *(a1 + 140) |= 0x10000u;
            while (1)
            {
              v208 = 0;
              v116 = [a2 position] + 1;
              if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
              {
                v118 = [a2 data];
                [v118 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v115 |= (v208 & 0x7F) << v113;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v113 += 7;
              v11 = v114++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_354;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v115;
            }

LABEL_354:
            v205 = 100;
            goto LABEL_403;
          case 19:
            v149 = 0;
            v150 = 0;
            v151 = 0;
            *(a1 + 140) |= 0x20000u;
            while (1)
            {
              v208 = 0;
              v152 = [a2 position] + 1;
              if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
              {
                v154 = [a2 data];
                [v154 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v151 |= (v208 & 0x7F) << v149;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v149 += 7;
              v11 = v150++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_378;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v151;
            }

LABEL_378:
            v205 = 104;
            goto LABEL_403;
          case 20:
            v179 = 0;
            v180 = 0;
            v181 = 0;
            *(a1 + 140) |= 0x1000u;
            while (1)
            {
              v208 = 0;
              v182 = [a2 position] + 1;
              if (v182 >= [a2 position] && (v183 = objc_msgSend(a2, "position") + 1, v183 <= objc_msgSend(a2, "length")))
              {
                v184 = [a2 data];
                [v184 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v181 |= (v208 & 0x7F) << v179;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v179 += 7;
              v11 = v180++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_396;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v181;
            }

LABEL_396:
            v205 = 84;
            goto LABEL_403;
          case 21:
            v119 = 0;
            v120 = 0;
            v121 = 0;
            *(a1 + 140) |= 0x80000u;
            while (1)
            {
              v208 = 0;
              v122 = [a2 position] + 1;
              if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
              {
                v124 = [a2 data];
                [v124 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v121 |= (v208 & 0x7F) << v119;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v119 += 7;
              v11 = v120++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_358;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v121;
            }

LABEL_358:
            v205 = 112;
            goto LABEL_403;
          case 22:
            v131 = 0;
            v132 = 0;
            v133 = 0;
            *(a1 + 140) |= 0x2000u;
            while (1)
            {
              v208 = 0;
              v134 = [a2 position] + 1;
              if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
              {
                v136 = [a2 data];
                [v136 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v133 |= (v208 & 0x7F) << v131;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v131 += 7;
              v11 = v132++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_366;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v133;
            }

LABEL_366:
            v205 = 88;
            goto LABEL_403;
          case 23:
            v173 = 0;
            v174 = 0;
            v175 = 0;
            *(a1 + 140) |= 0x4000000u;
            while (1)
            {
              v208 = 0;
              v176 = [a2 position] + 1;
              if (v176 >= [a2 position] && (v177 = objc_msgSend(a2, "position") + 1, v177 <= objc_msgSend(a2, "length")))
              {
                v178 = [a2 data];
                [v178 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v175 |= (v208 & 0x7F) << v173;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v173 += 7;
              v11 = v174++ >= 9;
              if (v11)
              {
                LOBYTE(v36) = 0;
                goto LABEL_392;
              }
            }

            v36 = (v175 != 0) & ~[a2 hasError];
LABEL_392:
            v204 = 134;
            goto LABEL_408;
          case 24:
            v185 = 0;
            v186 = 0;
            v187 = 0;
            *(a1 + 140) |= 0x1000000u;
            while (1)
            {
              v208 = 0;
              v188 = [a2 position] + 1;
              if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 1, v189 <= objc_msgSend(a2, "length")))
              {
                v190 = [a2 data];
                [v190 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v187 |= (v208 & 0x7F) << v185;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v185 += 7;
              v11 = v186++ >= 9;
              if (v11)
              {
                LOBYTE(v36) = 0;
                goto LABEL_398;
              }
            }

            v36 = (v187 != 0) & ~[a2 hasError];
LABEL_398:
            v204 = 132;
            goto LABEL_408;
          case 25:
            v80 = 0;
            v81 = 0;
            v82 = 0;
            *(a1 + 140) |= 8u;
            while (1)
            {
              v208 = 0;
              v83 = [a2 position] + 1;
              if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
              {
                v85 = [a2 data];
                [v85 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v82 |= (v208 & 0x7F) << v80;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v80 += 7;
              v11 = v81++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_329;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v82;
            }

LABEL_329:
            v205 = 28;
            goto LABEL_403;
          case 26:
            v74 = 0;
            v75 = 0;
            v76 = 0;
            *(a1 + 140) |= 4u;
            while (1)
            {
              v208 = 0;
              v77 = [a2 position] + 1;
              if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
              {
                v79 = [a2 data];
                [v79 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v76 |= (v208 & 0x7F) << v74;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v74 += 7;
              v11 = v75++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_325;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v76;
            }

LABEL_325:
            v205 = 24;
            goto LABEL_403;
          case 27:
            v86 = PBReaderReadString();
            v87 = 64;
LABEL_297:
            v203 = *(a1 + v87);
            *(a1 + v87) = v86;

            goto LABEL_404;
          case 28:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 140) |= 0x2000000u;
            while (1)
            {
              v208 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v208 & 0x7F) << v30;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                LOBYTE(v36) = 0;
                goto LABEL_299;
              }
            }

            v36 = (v32 != 0) & ~[a2 hasError];
LABEL_299:
            v204 = 133;
            goto LABEL_408;
          case 29:
            v191 = 0;
            v192 = 0;
            v193 = 0;
            *(a1 + 140) |= 0x800000u;
            while (1)
            {
              v208 = 0;
              v194 = [a2 position] + 1;
              if (v194 >= [a2 position] && (v195 = objc_msgSend(a2, "position") + 1, v195 <= objc_msgSend(a2, "length")))
              {
                v196 = [a2 data];
                [v196 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v193 |= (v208 & 0x7F) << v191;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v191 += 7;
              v11 = v192++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_402;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v193;
            }

LABEL_402:
            v205 = 128;
            goto LABEL_403;
          case 30:
            v197 = 0;
            v198 = 0;
            v199 = 0;
            *(a1 + 140) |= 0x10000000u;
            while (1)
            {
              v208 = 0;
              v200 = [a2 position] + 1;
              if (v200 >= [a2 position] && (v201 = objc_msgSend(a2, "position") + 1, v201 <= objc_msgSend(a2, "length")))
              {
                v202 = [a2 data];
                [v202 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v199 |= (v208 & 0x7F) << v197;
              if ((v208 & 0x80) == 0)
              {
                break;
              }

              v197 += 7;
              v11 = v198++ >= 9;
              if (v11)
              {
                LOBYTE(v36) = 0;
                goto LABEL_407;
              }
            }

            v36 = (v199 != 0) & ~[a2 hasError];
LABEL_407:
            v204 = 136;
LABEL_408:
            *(a1 + v204) = v36;
            goto LABEL_404;
          case 31:
            v167 = 0;
            v168 = 0;
            v169 = 0;
            *(a1 + 140) |= 0x8000u;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_404;
            }

            return result;
        }

        while (1)
        {
          v208 = 0;
          v170 = [a2 position] + 1;
          if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
          {
            v172 = [a2 data];
            [v172 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v169 |= (v208 & 0x7F) << v167;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v167 += 7;
          v11 = v168++ >= 9;
          if (v11)
          {
            v43 = 0;
            goto LABEL_390;
          }
        }

        v43 = [a2 hasError] ? 0 : v169;
LABEL_390:
        v205 = 96;
LABEL_403:
        *(a1 + v205) = v43;
      }

LABEL_404:
      v207 = [a2 position];
    }

    while (v207 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10004FABC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 position];
  if (v5 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v76) = 0;
        v9 = [v4 position] + 1;
        if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
        {
          v11 = [v4 data];
          [v11 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v8 |= (v76 & 0x7F) << v6;
        if ((v76 & 0x80) == 0)
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
      if ([v4 hasError])
      {
        break;
      }

      v14 = v13 & 7;
      if (v14 == 4)
      {
        break;
      }

      v15 = v13 >> 3;
      v16 = [NSNumber numberWithUnsignedInt:v15];
      v17 = [KBBMetricUtility isValidMetricIdTag:v16 forClass:objc_opt_class()];

      if (v17)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v76) = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v76 & 0x7F) << v18;
          if ((v76 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v12 = v19++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_49;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_49:
        NSLog(@"Unknown tag: %x:%u", v15, v24);
        goto LABEL_130;
      }

      if (v15 <= 2)
      {
        if (v15 == 1)
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v3[68] |= 1u;
          while (1)
          {
            LOBYTE(v76) = 0;
            v56 = [v4 position] + 1;
            if (v56 >= [v4 position] && (v57 = objc_msgSend(v4, "position") + 1, v57 <= objc_msgSend(v4, "length")))
            {
              v58 = [v4 data];
              [v58 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v55 |= (v76 & 0x7F) << v53;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v12 = v54++ >= 9;
            if (v12)
            {
              v59 = 0;
              goto LABEL_104;
            }
          }

          if ([v4 hasError])
          {
            v59 = 0;
          }

          else
          {
            v59 = v55;
          }

LABEL_104:
          v60 = 56;
          goto LABEL_109;
        }

        if (v15 == 2)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v3[68] |= 2u;
          while (1)
          {
            LOBYTE(v76) = 0;
            v35 = [v4 position] + 1;
            if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
            {
              v37 = [v4 data];
              [v37 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v34 |= (v76 & 0x7F) << v32;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v12 = v33++ >= 9;
            if (v12)
            {
              v38 = 0;
              goto LABEL_108;
            }
          }

          if ([v4 hasError])
          {
            v38 = 0;
          }

          else
          {
            v38 = v34;
          }

LABEL_108:
          v59 = -(v38 & 1) ^ (v38 >> 1);
          v60 = 60;
          goto LABEL_109;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            if (v14 != 2)
            {
              v61 = 0;
              v62 = 0;
              v63 = 0;
              while (1)
              {
                LOBYTE(v76) = 0;
                v64 = [v4 position] + 1;
                if (v64 >= [v4 position] && (v65 = objc_msgSend(v4, "position") + 1, v65 <= objc_msgSend(v4, "length")))
                {
                  v66 = [v4 data];
                  [v66 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v63 |= (v76 & 0x7F) << v61;
                if ((v76 & 0x80) == 0)
                {
                  goto LABEL_128;
                }

                v61 += 7;
                v12 = v62++ >= 9;
                if (v12)
                {
                  goto LABEL_129;
                }
              }
            }

            v76 = 0;
            v77 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_133;
            }

            while (1)
            {
              v39 = [v4 position];
              if (v39 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
              {
                goto LABEL_96;
              }

              v40 = 0;
              v41 = 0;
              v42 = 0;
              while (1)
              {
                v78 = 0;
                v43 = [v4 position] + 1;
                if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
                {
                  v45 = [v4 data];
                  [v45 getBytes:&v78 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v42 |= (v78 & 0x7F) << v40;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v40 += 7;
                v12 = v41++ >= 9;
                if (v12)
                {
                  goto LABEL_75;
                }
              }

              [v4 hasError];
LABEL_75:
              PBRepeatedUInt32Add();
            }

          case 4:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v3[68] |= 4u;
            while (1)
            {
              LOBYTE(v76) = 0;
              v49 = [v4 position] + 1;
              if (v49 >= [v4 position] && (v50 = objc_msgSend(v4, "position") + 1, v50 <= objc_msgSend(v4, "length")))
              {
                v51 = [v4 data];
                [v51 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v48 |= (v76 & 0x7F) << v46;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v12 = v47++ >= 9;
              if (v12)
              {
                v52 = 0;
                goto LABEL_100;
              }
            }

            if ([v4 hasError])
            {
              v52 = 0;
            }

            else
            {
              v52 = v48;
            }

LABEL_100:
            v59 = -(v52 & 1) ^ (v52 >> 1);
            v60 = 64;
LABEL_109:
            *&v3[v60] = v59;
            goto LABEL_130;
          case 5:
            if (v14 != 2)
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              while (1)
              {
                LOBYTE(v76) = 0;
                v70 = [v4 position] + 1;
                if (v70 >= [v4 position] && (v71 = objc_msgSend(v4, "position") + 1, v71 <= objc_msgSend(v4, "length")))
                {
                  v72 = [v4 data];
                  [v72 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v69 |= (v76 & 0x7F) << v67;
                if ((v76 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                v12 = v68++ >= 9;
                if (v12)
                {
                  goto LABEL_129;
                }
              }

LABEL_128:
              [v4 hasError];
LABEL_129:
              PBRepeatedUInt32Add();
              goto LABEL_130;
            }

            v76 = 0;
            v77 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_133;
            }

            while (1)
            {
              v25 = [v4 position];
              if (v25 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
              {
                break;
              }

              v26 = 0;
              v27 = 0;
              v28 = 0;
              while (1)
              {
                v78 = 0;
                v29 = [v4 position] + 1;
                if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
                {
                  v31 = [v4 data];
                  [v31 getBytes:&v78 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v28 |= (v78 & 0x7F) << v26;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                v12 = v27++ >= 9;
                if (v12)
                {
                  goto LABEL_45;
                }
              }

              [v4 hasError];
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
LABEL_133:
        v74 = 0;
        goto LABEL_132;
      }

LABEL_130:
      v73 = [v4 position];
    }

    while (v73 < [v4 length]);
  }

  v74 = [v4 hasError] ^ 1;
LABEL_132:

  return v74;
}

uint64_t sub_100050E40(uint64_t a1, void *a2)
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
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
          v41 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v41 & 0x7F) << v16;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_41;
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

LABEL_41:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
      }

      else
      {
        if (v13 == 2)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 16) |= 2u;
          while (1)
          {
            v40 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v40 & 0x7F) << v30;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_60;
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

LABEL_60:
          v37 = 12;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 16) |= 1u;
          while (1)
          {
            v42 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v42 & 0x7F) << v23;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_56;
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

LABEL_56:
          v37 = 8;
        }

        *(a1 + v37) = v29;
      }

LABEL_62:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000519F4(uint64_t a1, void *a2)
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
        v54 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v54 & 0x7F) << v5;
        if ((v54 & 0x80) == 0)
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
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v57 = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v57 & 0x7F) << v45;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v11 = v46++ >= 9;
              if (v11)
              {
                v51 = 0;
                goto LABEL_89;
              }
            }

            if ([a2 hasError])
            {
              v51 = 0;
            }

            else
            {
              v51 = v47;
            }

LABEL_89:
            v36 = -(v51 & 1) ^ (v51 >> 1);
            v52 = 8;
          }

          else
          {
            if (v13 != 4)
            {
LABEL_54:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_91;
            }

            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 24) |= 2u;
            while (1)
            {
              v55 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v55 & 0x7F) << v30;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_81;
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

LABEL_81:
            v52 = 12;
          }
        }

        else if (v13 == 1)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 24) |= 8u;
          while (1)
          {
            v59 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v59 & 0x7F) << v38;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v44 = 0;
              goto LABEL_85;
            }
          }

          if ([a2 hasError])
          {
            v44 = 0;
          }

          else
          {
            v44 = v40;
          }

LABEL_85:
          v36 = -(v44 & 1) ^ (v44 >> 1);
          v52 = 20;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_54;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v58 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v58 & 0x7F) << v23;
            if ((v58 & 0x80) == 0)
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
          v36 = -(v29 & 1) ^ (v29 >> 1);
          v52 = 16;
        }

        *(a1 + v52) = v36;
      }

LABEL_91:
      v53 = [a2 position];
    }

    while (v53 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100052B7C(uint64_t a1, void *a2)
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
        LOBYTE(v66) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v66 & 0x7F) << v5;
        if ((v66 & 0x80) == 0)
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
          LOBYTE(v66) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v66 & 0x7F) << v17;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_48;
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

LABEL_48:
        NSLog(@"Unknown tag: %x:%u", v14, v23);
        goto LABEL_116;
      }

      if (v14 > 5)
      {
        if (v14 == 6)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            LOBYTE(v66) = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v66 & 0x7F) << v46;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              v45 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v48;
          }

LABEL_94:
          v52 = 60;
          goto LABEL_95;
        }

        if (v14 == 7)
        {
          if (v13 != 2)
          {
            v59 = 0;
            v60 = 0;
            v61 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v62 = [a2 position] + 1;
              if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
              {
                v64 = [a2 data];
                [v64 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v61 |= (v66 & 0x7F) << v59;
              if ((v66 & 0x80) == 0)
              {
                goto LABEL_114;
              }

              v59 += 7;
              v11 = v60++ >= 9;
              if (v11)
              {
                goto LABEL_115;
              }
            }
          }

          v66 = 0;
          v67 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v32 = [a2 position];
            if (v32 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_86;
            }

            v33 = 0;
            v34 = 0;
            v35 = 0;
            while (1)
            {
              v68 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v68 & 0x7F) << v33;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                goto LABEL_65;
              }
            }

            [a2 hasError];
LABEL_65:
            PBRepeatedUInt32Add();
          }
        }
      }

      else
      {
        if (v14 == 3)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            LOBYTE(v66) = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v66 & 0x7F) << v39;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v45 = 0;
              goto LABEL_90;
            }
          }

          if ([a2 hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v41;
          }

LABEL_90:
          v52 = 56;
LABEL_95:
          *(a1 + v52) = v45;
          goto LABEL_116;
        }

        if (v14 == 5)
        {
          if (v13 != 2)
          {
            v53 = 0;
            v54 = 0;
            v55 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v56 = [a2 position] + 1;
              if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
              {
                v58 = [a2 data];
                [v58 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v55 |= (v66 & 0x7F) << v53;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v11 = v54++ >= 9;
              if (v11)
              {
                goto LABEL_115;
              }
            }

LABEL_114:
            [a2 hasError];
LABEL_115:
            PBRepeatedUInt32Add();
            goto LABEL_116;
          }

          v66 = 0;
          v67 = 0;
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
              v68 = 0;
              v29 = [a2 position] + 1;
              if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
              {
                v31 = [a2 data];
                [v31 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v28 |= (v68 & 0x7F) << v26;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v11 = v27++ >= 9;
              if (v11)
              {
                goto LABEL_44;
              }
            }

            [a2 hasError];
LABEL_44:
            PBRepeatedUInt32Add();
          }

LABEL_86:
          PBReaderRecallMark();
          goto LABEL_116;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_116:
      v65 = [a2 position];
    }

    while (v65 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100054380(uint64_t a1, void *a2)
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
        LOBYTE(v86[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v86[0] & 0x7F) << v5;
        if ((v86[0] & 0x80) == 0)
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
          LOBYTE(v86[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v86[0] & 0x7F) << v16;
          if ((v86[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_44;
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

LABEL_44:
        NSLog(@"Unknown tag: %x:%u", v13, v22);
        goto LABEL_166;
      }

      if (v13 > 6)
      {
        break;
      }

      if (v13 <= 3)
      {
        if (v13 == 1)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            LOBYTE(v86[0]) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v86[0] & 0x7F) << v43;
            if ((v86[0] & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              v49 = 0;
              goto LABEL_134;
            }
          }

          if ([a2 hasError])
          {
            v49 = 0;
          }

          else
          {
            v49 = v45;
          }

LABEL_134:
          *(a1 + 8) = v49;
          goto LABEL_166;
        }

        if (v13 == 3)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 68) |= 0x20u;
          while (1)
          {
            LOBYTE(v86[0]) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v86[0] & 0x7F) << v37;
            if ((v86[0] & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_138;
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

LABEL_138:
          v83 = 52;
          goto LABEL_165;
        }

LABEL_129:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_166;
      }

      if (v13 == 4)
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 68) |= 0x40u;
        while (1)
        {
          LOBYTE(v86[0]) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v86[0] & 0x7F) << v65;
          if ((v86[0] & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v11 = v66++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_148;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v67;
        }

LABEL_148:
        v83 = 56;
        goto LABEL_165;
      }

      if (v13 == 5)
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 68) |= 0x100u;
        while (1)
        {
          LOBYTE(v86[0]) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v86[0] & 0x7F) << v50;
          if ((v86[0] & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            LOBYTE(v56) = 0;
            goto LABEL_140;
          }
        }

        v56 = (v52 != 0) & ~[a2 hasError];
LABEL_140:
        *(a1 + 64) = v56;
      }

      else
      {
        v30 = objc_alloc_init(DrbConfig);
        [a1 addDrbConfig:v30];
        v86[0] = 0;
        v86[1] = 0;
        if (!PBReaderPlaceMark() || !sub_10005BF68(v30, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

LABEL_166:
      v84 = [a2 position];
      if (v84 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 12)
    {
      switch(v13)
      {
        case 0xD:
          v77 = 0;
          v78 = 0;
          v79 = 0;
          *(a1 + 68) |= 0x10u;
          while (1)
          {
            LOBYTE(v86[0]) = 0;
            v80 = [a2 position] + 1;
            if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
            {
              v82 = [a2 data];
              [v82 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v79 |= (v86[0] & 0x7F) << v77;
            if ((v86[0] & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            v11 = v78++ >= 9;
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
            v29 = v79;
          }

LABEL_164:
          v83 = 48;
          goto LABEL_165;
        case 0xE:
          v63 = PBReaderReadData();
          v64 = *(a1 + 40);
          *(a1 + 40) = v63;

          goto LABEL_166;
        case 0xF:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 68) |= 0x80u;
          while (1)
          {
            LOBYTE(v86[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v86[0] & 0x7F) << v31;
            if ((v86[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_156;
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

LABEL_156:
          v83 = 60;
          goto LABEL_165;
      }
    }

    else
    {
      switch(v13)
      {
        case 7:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            LOBYTE(v86[0]) = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v86[0] & 0x7F) << v71;
            if ((v86[0] & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v11 = v72++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_160;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v73;
          }

LABEL_160:
          v83 = 28;
          goto LABEL_165;
        case 8:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            LOBYTE(v86[0]) = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v86[0] & 0x7F) << v57;
            if ((v86[0] & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_144;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v59;
          }

LABEL_144:
          v83 = 24;
          goto LABEL_165;
        case 0xC:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            LOBYTE(v86[0]) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v86[0] & 0x7F) << v23;
            if ((v86[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_152;
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

LABEL_152:
          v83 = 32;
LABEL_165:
          *(a1 + v83) = v29;
          goto LABEL_166;
      }
    }

    goto LABEL_129;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100056EE4(uint64_t a1, void *a2)
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
        v154 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v154 & 0x7F) << v5;
        if ((v154 & 0x80) == 0)
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
          v154 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v154 & 0x7F) << v16;
          if ((v154 & 0x80) == 0)
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
            *(a1 + 92) |= 0x80u;
            while (1)
            {
              v154 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v154 & 0x7F) << v23;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
LABEL_258:
                v152 = 36;
                goto LABEL_305;
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

            goto LABEL_258;
          case 2:
            v79 = 0;
            v80 = 0;
            v81 = 0;
            *(a1 + 92) |= 0x100u;
            while (1)
            {
              v154 = 0;
              v82 = [a2 position] + 1;
              if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
              {
                v84 = [a2 data];
                [v84 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v81 |= (v154 & 0x7F) << v79;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v11 = v80++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_262;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v81;
            }

LABEL_262:
            v152 = 40;
            goto LABEL_305;
          case 3:
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 92) |= 0x400u;
            while (1)
            {
              v154 = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v154 & 0x7F) << v61;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_246;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v63;
            }

LABEL_246:
            v152 = 48;
            goto LABEL_305;
          case 4:
            v110 = 0;
            v111 = 0;
            v112 = 0;
            *(a1 + 92) |= 2u;
            while (1)
            {
              v154 = 0;
              v113 = [a2 position] + 1;
              if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
              {
                v115 = [a2 data];
                [v115 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v112 |= (v154 & 0x7F) << v110;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v110 += 7;
              v11 = v111++ >= 9;
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
              v29 = v112;
            }

LABEL_280:
            v152 = 12;
            goto LABEL_305;
          case 5:
            v116 = 0;
            v117 = 0;
            v118 = 0;
            *(a1 + 92) |= 0x2000u;
            while (1)
            {
              v154 = 0;
              v119 = [a2 position] + 1;
              if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
              {
                v121 = [a2 data];
                [v121 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v118 |= (v154 & 0x7F) << v116;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v116 += 7;
              v11 = v117++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_284;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v118;
            }

LABEL_284:
            v152 = 60;
            goto LABEL_305;
          case 6:
            v67 = 0;
            v68 = 0;
            v69 = 0;
            *(a1 + 92) |= 0x800u;
            while (1)
            {
              v154 = 0;
              v70 = [a2 position] + 1;
              if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
              {
                v72 = [a2 data];
                [v72 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v69 |= (v154 & 0x7F) << v67;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              v11 = v68++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_250;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v69;
            }

LABEL_250:
            v152 = 52;
            goto LABEL_305;
          case 7:
            v85 = 0;
            v86 = 0;
            v87 = 0;
            *(a1 + 92) |= 1u;
            while (1)
            {
              v154 = 0;
              v88 = [a2 position] + 1;
              if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
              {
                v90 = [a2 data];
                [v90 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v87 |= (v154 & 0x7F) << v85;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              v11 = v86++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_266;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v87;
            }

LABEL_266:
            v152 = 8;
            goto LABEL_305;
          case 8:
            v91 = 0;
            v92 = 0;
            v93 = 0;
            *(a1 + 92) |= 0x20u;
            while (1)
            {
              v154 = 0;
              v94 = [a2 position] + 1;
              if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
              {
                v96 = [a2 data];
                [v96 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v93 |= (v154 & 0x7F) << v91;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v91 += 7;
              v11 = v92++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_270;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v93;
            }

LABEL_270:
            v152 = 28;
            goto LABEL_305;
          case 9:
            v128 = 0;
            v129 = 0;
            v130 = 0;
            *(a1 + 92) |= 4u;
            while (1)
            {
              v154 = 0;
              v131 = [a2 position] + 1;
              if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
              {
                v133 = [a2 data];
                [v133 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v130 |= (v154 & 0x7F) << v128;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v128 += 7;
              v11 = v129++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_292;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v130;
            }

LABEL_292:
            v152 = 16;
            goto LABEL_305;
          case 10:
            v122 = 0;
            v123 = 0;
            v124 = 0;
            *(a1 + 92) |= 0x40u;
            while (1)
            {
              v154 = 0;
              v125 = [a2 position] + 1;
              if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
              {
                v127 = [a2 data];
                [v127 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v124 |= (v154 & 0x7F) << v122;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v122 += 7;
              v11 = v123++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_288;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v124;
            }

LABEL_288:
            v152 = 32;
            goto LABEL_305;
          case 11:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 92) |= 0x40000u;
            while (1)
            {
              v154 = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v154 & 0x7F) << v43;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_234;
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

LABEL_234:
            v152 = 80;
            goto LABEL_305;
          case 12:
            v73 = 0;
            v74 = 0;
            v75 = 0;
            *(a1 + 92) |= 0x20000u;
            while (1)
            {
              v154 = 0;
              v76 = [a2 position] + 1;
              if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
              {
                v78 = [a2 data];
                [v78 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v75 |= (v154 & 0x7F) << v73;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              v11 = v74++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_254;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v75;
            }

LABEL_254:
            v152 = 76;
            goto LABEL_305;
          case 13:
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 92) |= 0x8000u;
            while (1)
            {
              v154 = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v154 & 0x7F) << v49;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_238;
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

LABEL_238:
            v152 = 68;
            goto LABEL_305;
          case 14:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 92) |= 0x10000u;
            while (1)
            {
              v154 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v154 & 0x7F) << v37;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_230;
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

LABEL_230:
            v152 = 72;
            goto LABEL_305;
          case 15:
            v97 = 0;
            v98 = 0;
            v99 = 0;
            *(a1 + 92) |= 0x100000u;
            while (1)
            {
              v154 = 0;
              v100 = [a2 position] + 1;
              if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
              {
                v102 = [a2 data];
                [v102 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v99 |= (v154 & 0x7F) << v97;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v97 += 7;
              v11 = v98++ >= 9;
              if (v11)
              {
                LOBYTE(v103) = 0;
                goto LABEL_272;
              }
            }

            v103 = (v99 != 0) & ~[a2 hasError];
LABEL_272:
            *(a1 + 88) = v103;
            goto LABEL_306;
          case 16:
            v104 = 0;
            v105 = 0;
            v106 = 0;
            *(a1 + 92) |= 0x200u;
            while (1)
            {
              v154 = 0;
              v107 = [a2 position] + 1;
              if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
              {
                v109 = [a2 data];
                [v109 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v106 |= (v154 & 0x7F) << v104;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v104 += 7;
              v11 = v105++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_276;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v106;
            }

LABEL_276:
            v152 = 44;
            goto LABEL_305;
          case 18:
            v140 = 0;
            v141 = 0;
            v142 = 0;
            *(a1 + 92) |= 0x4000u;
            while (1)
            {
              v154 = 0;
              v143 = [a2 position] + 1;
              if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
              {
                v145 = [a2 data];
                [v145 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v142 |= (v154 & 0x7F) << v140;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v140 += 7;
              v11 = v141++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_300;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v142;
            }

LABEL_300:
            v152 = 64;
            goto LABEL_305;
          case 19:
            v134 = 0;
            v135 = 0;
            v136 = 0;
            *(a1 + 92) |= 0x1000u;
            while (1)
            {
              v154 = 0;
              v137 = [a2 position] + 1;
              if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
              {
                v139 = [a2 data];
                [v139 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v136 |= (v154 & 0x7F) << v134;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v134 += 7;
              v11 = v135++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_296;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v136;
            }

LABEL_296:
            v152 = 56;
            goto LABEL_305;
          case 20:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 92) |= 0x80000u;
            while (1)
            {
              v154 = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v154 & 0x7F) << v31;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_226;
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

LABEL_226:
            v152 = 84;
            goto LABEL_305;
          case 28:
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 92) |= 0x10u;
            while (1)
            {
              v154 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v154 & 0x7F) << v55;
              if ((v154 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_242;
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

LABEL_242:
            v152 = 24;
            goto LABEL_305;
          case 29:
            v146 = 0;
            v147 = 0;
            v148 = 0;
            *(a1 + 92) |= 8u;
            break;
          default:
            result = PBReaderSkipValueWithTag();
            if (result)
            {
              goto LABEL_306;
            }

            return result;
        }

        while (1)
        {
          v154 = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            v151 = [a2 data];
            [v151 getBytes:&v154 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v154 & 0x7F) << v146;
          if ((v154 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v11 = v147++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_304;
          }
        }

        v29 = [a2 hasError] ? 0 : v148;
LABEL_304:
        v152 = 20;
LABEL_305:
        *(a1 + v152) = v29;
      }

LABEL_306:
      v153 = [a2 position];
    }

    while (v153 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}