@interface NSMetaphone
- (NSMetaphone)init;
- (id)_translateWord:(id)a3;
- (id)translate:(id)a3;
- (void)_append:(id)a3;
- (void)_append:(id)a3 alt:(id)a4;
- (void)reset;
@end

@implementation NSMetaphone

- (NSMetaphone)init
{
  v9.receiver = self;
  v9.super_class = NSMetaphone;
  v2 = [(NSMetaphone *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableString);
    primary = v2->_primary;
    v2->_primary = v3;

    v5 = objc_alloc_init(NSMutableString);
    secondary = v2->_secondary;
    v2->_secondary = v5;

    v2->_isAlternate = 0;
    v7 = v2;
  }

  return v2;
}

- (void)reset
{
  v3 = objc_alloc_init(NSMutableString);
  primary = self->_primary;
  self->_primary = v3;

  v5 = objc_alloc_init(NSMutableString);
  secondary = self->_secondary;
  self->_secondary = v5;

  self->_isAlternate = 0;
}

- (void)_append:(id)a3
{
  primary = self->_primary;
  v5 = a3;
  [(NSMutableString *)primary appendString:v5];
  [(NSMutableString *)self->_secondary appendString:v5];
}

- (void)_append:(id)a3 alt:(id)a4
{
  primary = self->_primary;
  v7 = a4;
  [(NSMutableString *)primary appendString:a3];
  [(NSMutableString *)self->_secondary appendString:v7];
}

- (id)_translateWord:(id)a3
{
  v4 = a3;
  v5 = +[NSCharacterSet punctuationCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];
  v7 = &stru_9A9C8;
  v8 = [v6 componentsJoinedByString:&stru_9A9C8];

  v9 = [v8 uppercaseString];
  v10 = [&stru_9A9C8 stringByAppendingFormat:@" %@ ", v9];

  v11 = [v10 length];
  v12 = v11;
  if (v11)
  {
    v13 = sub_3DBC(v10, 0, 2, &off_9C440);
    v14 = sub_3EF4(v10, 0, 1);
    v15 = [v14 isEqualToString:@"X"];

    if (v15)
    {
      [(NSMetaphone *)self _append:@"S"];
      if (v13)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }
    }

    if (v11 > v13)
    {
      v16 = v13;
      v81 = v11;
      v82 = (v11 - 1);
      while (2)
      {
        v17 = sub_3F74(v10, v13);
        switch(v17)
        {
          case ' ':
            v18 = self;
            v19 = @" ";
            goto LABEL_94;
          case '!':
          case '""':
          case '#':
          case '$':
          case '%':
          case '&':
          case '\'':
          case '(':
          case ')':
          case '*':
          case '+':
          case ',':
          case '-':
          case '.':
          case '/':
          case '0':
          case '1':
          case '2':
          case '3':
          case '4':
          case '5':
          case '6':
          case '7':
          case '8':
          case '9':
          case ':':
          case ';':
          case '<':
          case '=':
          case '>':
          case '?':
          case '@':
            goto LABEL_95;
          case 'A':
          case 'E':
          case 'I':
          case 'O':
          case 'U':
          case 'Y':
            if (v13 != 1)
            {
              goto LABEL_95;
            }

            v18 = self;
            v19 = @"A";
            goto LABEL_94;
          case 'B':
            [(NSMetaphone *)self _append:@"P"];
            v30 = sub_3F74(v10, (v13 + 1));
            v31 = v13 + 2;
            v32 = v30 == 66;
            goto LABEL_69;
          case 'C':
            if (v13 < 2u)
            {
              if (v13 == 1)
              {
                v56 = 1;
                v57 = sub_3EF4(v10, 1, 6);
                v58 = [v57 isEqualToString:@"CAESAR"];

                if (v58)
                {
                  v41 = self;
                  v42 = @"S";
                  goto LABEL_236;
                }

                goto LABEL_155;
              }
            }

            else if ((sub_3DBC(v10, (v13 - 2), 1, &off_9CC50) & 1) == 0)
            {
              v35 = sub_3EF4(v10, (v13 - 1), 3);
              if ([v35 isEqualToString:@"ACH"])
              {
                v20 = v13 + 2;
                if (sub_3F74(v10, (v13 + 2)) != 73 && sub_3F74(v10, (v13 + 2)) != 69)
                {

LABEL_67:
                  v43 = self;
                  v44 = @"K";
LABEL_225:
                  [(NSMetaphone *)v43 _append:v44];
                  goto LABEL_226;
                }

                v36 = sub_3DBC(v10, (v13 - 2), 6, &off_9C458);

                if (v36)
                {
                  goto LABEL_67;
                }
              }

              else
              {
              }
            }

            v56 = 0;
LABEL_155:
            v64 = sub_3EF4(v10, v13, 4);
            v65 = [v64 isEqualToString:@"CHIA"];

            if (v65)
            {
              goto LABEL_156;
            }

            v66 = sub_3EF4(v10, v13, 2);
            v67 = [v66 isEqualToString:@"CH"];

            if (v67)
            {
              if (v13)
              {
                v68 = sub_3EF4(v10, v13, 4);
                v69 = [v68 isEqualToString:@"CHAE"];

                if (v69)
                {
                  v37 = self;
                  v38 = @"K";
LABEL_217:
                  v39 = @"X";
                  goto LABEL_219;
                }
              }

              if (!v56 || (sub_3DBC(v10, 2, 5, &off_9C470) & 1) == 0 && !sub_3DBC(v10, 2, 3, &off_9C488) || (sub_3EF4(v10, v13, 5), v70 = objc_claimAutoreleasedReturnValue(), v71 = [v70 isEqualToString:@"CHORE"], v70, (v71 & 1) != 0))
              {
                if ((sub_3DBC(v10, 0, 4, &off_9C4A0) & 1) == 0 && (sub_3DBC(v10, 0, 3, &off_9C4B8) & 1) == 0 && (sub_3DBC(v10, (v13 - 2), 6, &off_9C4D0) & 1) == 0)
                {
                  v20 = (v13 + 2);
                  if ((sub_3DBC(v10, v20, 1, &off_9C4E8) & 1) == 0 && ((v56 | sub_3DBC(v10, (v13 - 1), 1, &off_9C500)) != 1 || !sub_3DBC(v10, (v13 + 2), 1, &off_9C518)))
                  {
                    if (!v13)
                    {
                      [(NSMetaphone *)self _append:@"X"];
                      v20 = 2;
                      goto LABEL_226;
                    }

                    if (sub_3DBC(v10, 0, 2, &off_9C530))
                    {
                      goto LABEL_67;
                    }

                    v53 = self;
                    v54 = @"X";
                    v55 = @"K";
                    goto LABEL_254;
                  }
                }
              }

              goto LABEL_156;
            }

            if (sub_3DBC(v10, v13, 2, &off_9C548) && (sub_3DBC(v10, (v13 - 2), 4, &off_9C560) & 1) == 0)
            {
LABEL_216:
              v37 = self;
              v38 = @"S";
              goto LABEL_217;
            }

            v20 = (v13 + 1);
            if (sub_3DBC(v10, v20, 3, &off_9C578))
            {
LABEL_166:
              v48 = self;
              v49 = @"X";
              goto LABEL_167;
            }

            if (sub_3DBC(v10, v13, 2, &off_9C590) && (v13 != 2 || sub_3F74(v10, 0) != 77))
            {
              v20 = (v13 + 2);
              if (!sub_3DBC(v10, v20, 1, &off_9C5A8) || (sub_3DBC(v10, (v13 + 2), 2, &off_9C5C0) & 1) != 0)
              {
                goto LABEL_67;
              }

              if (v13 != 2 || (v78 = sub_3F74(v10, 1u), v49 = @"KS", v78 != 65))
              {
                if (sub_3DBC(v10, (v13 - 1), 5, &off_9C5D8))
                {
                  v49 = @"KS";
                }

                else
                {
                  v49 = @"X";
                }
              }

              v48 = self;
LABEL_167:
              [(NSMetaphone *)v48 _append:v49];
              goto LABEL_168;
            }

            if (sub_3DBC(v10, v13, 2, &off_9C5F0))
            {
              goto LABEL_156;
            }

            if (!sub_3DBC(v10, v13, 2, &off_9C608))
            {
              [(NSMetaphone *)self _append:@"K"];
              if (!sub_3DBC(v10, (v13 + 1), 2, &off_9C638))
              {
                if (sub_3DBC(v10, (v13 + 1), 1, &off_9C650) && !sub_3DBC(v10, (v13 + 1), 2, &off_9C668))
                {
                  v20 = v13 + 2;
                }

                goto LABEL_226;
              }

LABEL_168:
              v20 = v13 + 3;
              goto LABEL_226;
            }

            if (sub_3DBC(v10, v13, 3, &off_9C620))
            {
              goto LABEL_216;
            }

            v33 = self;
            v34 = @"S";
LABEL_157:
            [(NSMetaphone *)v33 _append:v34];
            goto LABEL_158;
          case 'D':
            if (!sub_3DBC(v10, v13, 2, &off_9C680))
            {
              v59 = sub_3DBC(v10, v13, 2, &off_9C6B0);
              [(NSMetaphone *)self _append:@"T"];
              v25 = v13 + 2;
              v26 = v59 == 0;
LABEL_108:
              if (v26)
              {
                v20 = v13 + 1;
              }

              else
              {
                v20 = v25;
              }

              goto LABEL_226;
            }

            v20 = (v13 + 2);
            if (sub_3DBC(v10, v20, 1, &off_9C698))
            {
              v48 = self;
              v49 = @"J";
              goto LABEL_167;
            }

            v43 = self;
            v44 = @"TK";
            goto LABEL_225;
          case 'F':
            v45 = sub_3F74(v10, (v13 + 1));
            v46 = v13 + 2;
            v47 = v45 == 70;
            goto LABEL_79;
          case 'G':
            v40 = v13 + 1;
            if (sub_3F74(v10, (v13 + 1)) != 72)
            {
              if (sub_3F74(v10, (v13 + 1)) == 78)
              {
                if (v13 == 1 && sub_3DBC(v10, 0, 1, &off_9CC50) && !sub_3FC8(v10))
                {
                  v60 = self;
                  v61 = @"KN";
                  v62 = @"N";
LABEL_243:
                  [(NSMetaphone *)v60 _append:v61 alt:v62];
LABEL_244:
                  v20 = 3;
                  goto LABEL_226;
                }

                v20 = (v13 + 2);
                if ((sub_3DBC(v10, v20, 2, &off_9C728) & 1) != 0 || sub_3F74(v10, (v13 + 1)) == 89 || sub_3FC8(v10))
                {
                  v43 = self;
                  v44 = @"KN";
                  goto LABEL_225;
                }

                v53 = self;
                v54 = @"N";
                v55 = @"KN";
LABEL_254:
                [(NSMetaphone *)v53 _append:v54 alt:v55];
                goto LABEL_226;
              }

              if (sub_3DBC(v10, v40, 2, &off_9C740) && !sub_3FC8(v10))
              {
                v37 = self;
                v38 = @"KL";
                v39 = @"L";
                goto LABEL_219;
              }

              if (v13 == 1 && (sub_3F74(v10, (v13 + 1)) == 89 || sub_3DBC(v10, v40, 2, &off_9C758)))
              {
                v60 = self;
                v61 = @"K";
                v62 = @"J";
                goto LABEL_243;
              }

              if (((sub_3DBC(v10, v40, 2, &off_9C770) & 1) != 0 || sub_3F74(v10, (v13 + 1)) == 89) && (sub_3DBC(v10, 0, 6, &off_9C788) & 1) == 0 && (sub_3DBC(v10, (v13 - 1), 1, &off_9C7A0) & 1) == 0 && (sub_3DBC(v10, (v13 - 1), 3, &off_9C7B8) & 1) == 0)
              {
                v37 = self;
                v38 = @"K";
                v39 = @"J";
LABEL_219:
                [(NSMetaphone *)v37 _append:v38 alt:v39];
                goto LABEL_158;
              }

              if ((sub_3DBC(v10, v40, 1, &off_9C7D0) & 1) == 0 && !sub_3DBC(v10, (v13 - 1), 4, &off_9C7E8))
              {
                if (sub_3F74(v10, (v13 + 1)) == 71)
                {
                  v20 = v13 + 2;
                }

                else
                {
                  v20 = v13 + 1;
                }

                goto LABEL_67;
              }

              if ((sub_3DBC(v10, 0, 4, &off_9C800) & 1) == 0 && (sub_3DBC(v10, 0, 3, &off_9C818) & 1) == 0 && !sub_3DBC(v10, v40, 2, &off_9C830))
              {
                if (sub_3DBC(v10, v40, 4, &off_9C848))
                {
LABEL_92:
                  v33 = self;
                  v34 = @"J";
                  goto LABEL_157;
                }

                v37 = self;
                v38 = @"J";
                v39 = @"K";
                goto LABEL_219;
              }

LABEL_156:
              v33 = self;
              v34 = @"K";
              goto LABEL_157;
            }

            if (!v13)
            {
              goto LABEL_158;
            }

            if ((sub_3DBC(v10, (v13 - 1), 1, &off_9CC50) & 1) == 0)
            {
              goto LABEL_156;
            }

            if (v13 == 1)
            {
              if (sub_3F74(v10, 3u) == 73)
              {
                v41 = self;
                v42 = @"J";
              }

              else
              {
                v41 = self;
                v42 = @"K";
              }

LABEL_236:
              [(NSMetaphone *)v41 _append:v42];
              goto LABEL_244;
            }

            if (sub_3DBC(v10, (v13 - 2), 1, &off_9C6C8))
            {
              goto LABEL_158;
            }

            if (v13 < 3u)
            {
LABEL_208:
              v73 = sub_3F74(v10, (v13 - 1));
              v34 = @"K";
              if (v73 != 73)
              {
                goto LABEL_123;
              }

              goto LABEL_158;
            }

            if ((sub_3DBC(v10, (v13 - 3), 1, &off_9C6E0) & 1) == 0 && (v13 == 3 || !sub_3DBC(v10, (v13 - 4), 1, &off_9C6F8)))
            {
              if (sub_3F74(v10, (v13 - 1)) != 85)
              {
                goto LABEL_208;
              }

              v72 = sub_3DBC(v10, (v13 - 3), 1, &off_9C710);
              v34 = @"F";
              if ((v72 & 1) == 0)
              {
                goto LABEL_208;
              }

LABEL_123:
              v33 = self;
              goto LABEL_157;
            }

LABEL_158:
            v20 = v13 + 2;
LABEL_226:
            v16 = v20;
            v13 = v20;
            if (v12 <= v20)
            {
              break;
            }

            continue;
          case 'H':
            if (v13 != 1 && (sub_3DBC(v10, (v13 - 1), 1, &off_9CC50) & 1) == 0)
            {
              goto LABEL_95;
            }

            v20 = (v13 + 1);
            if (!sub_3DBC(v10, v20, 1, &off_9CC50))
            {
              goto LABEL_226;
            }

            v33 = self;
            v34 = @"H";
            goto LABEL_157;
          case 'J':
            if ((sub_3DBC(v10, v13, 4, &off_9C860) & 1) == 0 && !sub_3DBC(v10, 0, 4, &off_9C878))
            {
              if (v13 == 1 && (sub_3DBC(v10, 1, 4, &off_9C8A8) & 1) == 0)
              {
                [(NSMetaphone *)self _append:@"J" alt:@"A"];
                v20 = 2;
              }

              else if (sub_3DBC(v10, (v13 - 1), 1, &off_9CC50) && !sub_3FC8(v10) && ((v20 = v13 + 1, sub_3F74(v10, (v13 + 1)) == 65) || sub_3F74(v10, (v13 + 1)) == 79))
              {
                [(NSMetaphone *)self _append:@"J" alt:@"H"];
              }

              else
              {
                v20 = (v13 + 1);
                if ((sub_3DBC(v10, v20, 1, &off_9C8C0) & 1) == 0 && (sub_3DBC(v10, (v13 - 1), 1, &off_9C8D8) & 1) == 0)
                {
                  [(NSMetaphone *)self _append:@"J"];
                }
              }

              if (sub_3F74(v10, v20) == 74)
              {
                v20 = v13 + 2;
              }

              goto LABEL_226;
            }

            if (v13 == 1 && sub_3F74(v10, 5u) == 32 || sub_3DBC(v10, 0, 4, &off_9C890))
            {
              v18 = self;
              v19 = @"H";
              goto LABEL_94;
            }

            v21 = self;
            v22 = @"J";
            v23 = @"H";
            goto LABEL_198;
          case 'K':
            v27 = sub_3F74(v10, (v13 + 1));
            v28 = v13 + 2;
            v29 = v27 == 75;
            goto LABEL_64;
          case 'L':
            v20 = v13 + 1;
            if (sub_3F74(v10, (v13 + 1)) != 76)
            {
              goto LABEL_148;
            }

            if (v12 - 3 == v16 && (sub_3DBC(v10, (v13 - 1), 4, &off_9C8F0) & 1) != 0 || (sub_3DBC(v10, v82, 2, &off_9C908) & 1) != 0 || sub_3DBC(v10, v81, 1, &off_9C920) && sub_3DBC(v10, (v13 - 1), 4, &off_9C938))
            {
              v37 = self;
              v38 = @"L";
              v39 = @" ";
              goto LABEL_219;
            }

            v20 = v13 + 2;
LABEL_148:
            v43 = self;
            v44 = @"L";
            goto LABEL_225;
          case 'M':
            if (sub_3DBC(v10, (v13 - 1), 3, &off_9C950) && (v16 + 1 == v12 || (sub_3DBC(v10, (v13 + 2), 2, &off_9C968) & 1) != 0) || (v20 = v13 + 1, sub_3F74(v10, (v13 + 1)) == 77))
            {
              v20 = v13 + 2;
            }

            v43 = self;
            v44 = @"M";
            goto LABEL_225;
          case 'N':
            if (sub_3F74(v10, (v13 + 1)) == 78)
            {
              v20 = v13 + 2;
            }

            else
            {
              v20 = v13 + 1;
            }

            goto LABEL_77;
          case 'P':
            v20 = v13 + 2;
            if (sub_3F74(v10, (v13 + 1)) == 72)
            {
              goto LABEL_82;
            }

            if (!sub_3DBC(v10, (v13 + 1), 1, &off_9C980))
            {
              v20 = v13 + 1;
            }

            v43 = self;
            v44 = @"P";
            goto LABEL_225;
          case 'Q':
            v50 = sub_3F74(v10, (v13 + 1));
            v28 = v13 + 2;
            v29 = v50 == 81;
LABEL_64:
            if (v29)
            {
              v20 = v28;
            }

            else
            {
              v20 = v13 + 1;
            }

            goto LABEL_67;
          case 'R':
            [(NSMetaphone *)self _append:@"R"];
            v51 = sub_3F74(v10, (v13 + 1));
            v31 = v13 + 2;
            v32 = v51 == 82;
LABEL_69:
            if (v32)
            {
              v20 = v31;
            }

            else
            {
              v20 = v13 + 1;
            }

            goto LABEL_226;
          case 'S':
            if (sub_3DBC(v10, (v13 - 1), 3, &off_9C998))
            {
              goto LABEL_95;
            }

            if (sub_3DBC(v10, v13, 5, &off_9C9B0))
            {
              v21 = self;
              v22 = @"X";
              v23 = @"S";
              goto LABEL_198;
            }

            if (!sub_3DBC(v10, v13, 2, &off_9C9C8))
            {
              if ((sub_3DBC(v10, v13, 3, &off_9C9F8) & 1) == 0 && !sub_3DBC(v10, v13, 4, &off_9CA10))
              {
                if (v13 == 1 && (v74 = 2, (sub_3DBC(v10, 2, 1, &off_9CA28) & 1) != 0) || (v74 = (v13 + 1), sub_3DBC(v10, v74, 1, &off_9CA40)))
                {
                  [(NSMetaphone *)self _append:@"S" alt:@"X"];
                  v75 = v10;
                  v76 = v74;
                  v77 = &off_9CA58;
                  goto LABEL_269;
                }

                if (!sub_3DBC(v10, v13, 2, &off_9CA70))
                {
                  [(NSMetaphone *)self _append:@"S"];
                  v75 = v10;
                  v76 = (v13 + 1);
                  v77 = &off_9CAD0;
LABEL_269:
                  if (sub_3DBC(v75, v76, 1, v77))
                  {
                    v20 = v13 + 2;
                  }

                  else
                  {
                    v20 = v74;
                  }

                  goto LABEL_226;
                }

                if (sub_3F74(v10, (v13 + 2)) != 72)
                {
                  v20 = v13 + 3;
                  if (sub_3DBC(v10, (v13 + 2), 1, &off_9CAB8))
                  {
                    v43 = self;
                    v44 = @"S";
                    goto LABEL_225;
                  }

                  goto LABEL_275;
                }

                v20 = (v13 + 3);
                if (sub_3DBC(v10, v20, 2, &off_9CA88))
                {
                  if (sub_3DBC(v10, (v13 + 3), 2, &off_9CAA0))
                  {
                    v53 = self;
                    v54 = @"X";
                    v55 = @"SK";
                    goto LABEL_254;
                  }

LABEL_275:
                  v43 = self;
                  v44 = @"SK";
                  goto LABEL_225;
                }

                if (v13 == 1 && (sub_3DBC(v10, 3, 1, &off_9CC50) & 1) == 0 && sub_3F74(v10, 3u) != 87)
                {
                  [(NSMetaphone *)self _append:@"X" alt:@"S"];
                  v20 = 4;
                  goto LABEL_226;
                }

                v43 = self;
                v44 = @"X";
                goto LABEL_225;
              }

              if (sub_3FC8(v10))
              {
                v48 = self;
                v49 = @"S";
                goto LABEL_167;
              }

              [(NSMetaphone *)self _append:@"S" alt:@"X"];
              goto LABEL_168;
            }

            if (sub_3DBC(v10, (v13 + 1), 4, &off_9C9E0))
            {
              v34 = @"S";
            }

            else
            {
              v34 = @"X";
            }

            goto LABEL_123;
          case 'T':
            if (sub_3DBC(v10, v13, 4, &off_9CAE8) || sub_3DBC(v10, v13, 3, &off_9CB00))
            {
              goto LABEL_166;
            }

            if ((sub_3DBC(v10, v13, 2, &off_9CB18) & 1) != 0 || sub_3DBC(v10, v13, 3, &off_9CB30))
            {
              v20 = (v13 + 2);
              if ((sub_3DBC(v10, v20, 2, &off_9CB48) & 1) == 0 && (sub_3DBC(v10, 0, 4, &off_9CB60) & 1) == 0 && !sub_3DBC(v10, 0, 3, &off_9CB78))
              {
                v53 = self;
                v54 = @"0";
                v55 = @"T";
                goto LABEL_254;
              }
            }

            else if (sub_3DBC(v10, (v13 + 1), 1, &off_9CB90))
            {
              v20 = v13 + 2;
            }

            else
            {
              v20 = v13 + 1;
            }

            v43 = self;
            v44 = @"T";
            goto LABEL_225;
          case 'V':
            v52 = sub_3F74(v10, (v13 + 1));
            v46 = v13 + 2;
            v47 = v52 == 86;
LABEL_79:
            if (v47)
            {
              v20 = v46;
            }

            else
            {
              v20 = v13 + 1;
            }

LABEL_82:
            v43 = self;
            v44 = @"F";
            goto LABEL_225;
          case 'W':
            if (sub_3DBC(v10, v13, 2, &off_9CBA8))
            {
              v33 = self;
              v34 = @"R";
              goto LABEL_157;
            }

            if (v13 == 1 && ((sub_3DBC(v10, 2, 1, &off_9CC50) & 1) != 0 || sub_3DBC(v10, 1, 2, &off_9CBC0)))
            {
              if (sub_3DBC(v10, 2, 1, &off_9CC50))
              {
                [(NSMetaphone *)self _append:@"A" alt:@"F"];
              }

              else
              {
                [(NSMetaphone *)self _append:@"A"];
              }
            }

            if ((sub_3DBC(v10, (v13 - 1), 5, &off_9CBD8) & 1) != 0 || sub_3DBC(v10, 0, 3, &off_9CBF0))
            {
              v21 = self;
              v22 = &stru_9A9C8;
              v23 = @"F";
LABEL_198:
              [(NSMetaphone *)v21 _append:v22 alt:v23];
              goto LABEL_95;
            }

            if (!sub_3DBC(v10, v13, 4, &off_9CC08))
            {
              goto LABEL_95;
            }

            [(NSMetaphone *)self _append:@"TS" alt:@"FX"];
            v20 = v13 + 4;
            goto LABEL_226;
          case 'X':
            [(NSMetaphone *)self _append:@"KS"];
            v24 = sub_3DBC(v10, (v13 + 1), 1, &off_9CC20);
            v25 = v13 + 2;
            v26 = v24 == 0;
            goto LABEL_108;
          case 'Z':
            if (sub_3F74(v10, (v13 + 1)) == 72)
            {
              goto LABEL_92;
            }

            if ((sub_3DBC(v10, (v13 + 1), 2, &off_9CC38) & 1) != 0 || (v63 = sub_3FC8(v10), v13) && v63 && sub_3F74(v10, (v13 - 1)) != 84)
            {
              [(NSMetaphone *)self _append:@"S" alt:@"TS"];
            }

            else
            {
              [(NSMetaphone *)self _append:@"S"];
            }

            if (sub_3F74(v10, (v13 + 1)) == 90)
            {
              v20 = v13 + 2;
            }

            else
            {
              v20 = v13 + 1;
            }

            goto LABEL_226;
          default:
            if (v17 == 199)
            {
              v18 = self;
              v19 = @"S";
LABEL_94:
              [(NSMetaphone *)v18 _append:v19];
LABEL_95:
              v20 = v13 + 1;
              goto LABEL_226;
            }

            if (v17 != 209)
            {
              goto LABEL_95;
            }

            v20 = v13 + 1;
LABEL_77:
            v43 = self;
            v44 = @"N";
            goto LABEL_225;
        }

        break;
      }
    }

    v79 = 8;
    if (self->_isAlternate)
    {
      v79 = 16;
    }

    v7 = *(&self->super.isa + v79);
    [(NSMetaphone *)self reset];
  }

  return v7;
}

- (id)translate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableString);
  v6 = [v4 length];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_4138;
  v10[3] = &unk_971D0;
  v7 = v5;
  v11 = v7;
  v12 = self;
  [v4 enumerateSubstringsInRange:0 options:v6 usingBlock:{3, v10}];

  v8 = v7;
  return v7;
}

@end