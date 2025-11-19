uint64_t sub_21AE95F68()
{
  sub_21AEA7C20();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_21AE95F9C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21AE95FEC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21AE9603C()
{
  v1 = *(v0 + 16);

  sub_21AEA7C20();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21AE96070()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21AE960B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_21AEA7C20();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21AE960EC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21AE961C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21AEA8784();
  *a2 = result;
  return result;
}

uint64_t sub_21AE9620C()
{
  v1 = sub_21AF093FC();
  sub_21AEA7C90(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 24);

  v10 = *(v0 + 48);

  (*(v3 + 8))(v0 + v5, v1);
  v11 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

uint64_t sub_21AE96330()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21AE96374()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21AE9641C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21AE96434()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21AE96470(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

uint64_t sub_21AE964CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21AE96568()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

char *sub_21AE965B0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_21AEFBE24(a3, result);
  }

  return result;
}

uint64_t sub_21AE965D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21AE96680()
{
  type metadata accessor for AMLCandidateWithFeatures();

  return sub_21AF0992C();
}

uint64_t sub_21AE966DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21AEFD79C();
  *a2 = result;
  return result;
}

__n128 sub_21AE96718(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21AE96724()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_21AE9676C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_21AEFBE24(a3, result);
  }

  return result;
}

uint64_t sub_21AE9678C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t AMLPhotosSearchLabeledDataReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v194) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v194 & 0x7F) << v6;
      if ((v194 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = *(a1 + 384);
        *(a1 + 384) = v14;

        continue;
      case 2u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 400) |= 0x1000000000000uLL;
        while (1)
        {
          LOBYTE(v194) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v194 & 0x7F) << v74;
          if ((v194 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            v80 = 0;
            goto LABEL_216;
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

LABEL_216:
        v146 = 392;
        goto LABEL_232;
      case 3u:
        *(a1 + 400) |= 0x20000000uLL;
        v194 = 0;
        v60 = [a2 position] + 8;
        if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 8, v61 <= objc_msgSend(a2, "length")))
        {
          v167 = [a2 data];
          [v167 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 240;
        goto LABEL_323;
      case 4u:
        *(a1 + 400) |= 0x4000000uLL;
        v194 = 0;
        v99 = [a2 position] + 8;
        if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 8, v100 <= objc_msgSend(a2, "length")))
        {
          v180 = [a2 data];
          [v180 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 216;
        goto LABEL_323;
      case 5u:
        *(a1 + 400) |= 0x100000000uLL;
        v194 = 0;
        v107 = [a2 position] + 8;
        if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 8, v108 <= objc_msgSend(a2, "length")))
        {
          v181 = [a2 data];
          [v181 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 264;
        goto LABEL_323;
      case 6u:
        *(a1 + 400) |= 0x80000000uLL;
        v194 = 0;
        v66 = [a2 position] + 8;
        if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 8, v67 <= objc_msgSend(a2, "length")))
        {
          v170 = [a2 data];
          [v170 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 256;
        goto LABEL_323;
      case 7u:
        *(a1 + 400) |= 0x40000000uLL;
        v194 = 0;
        v81 = [a2 position] + 8;
        if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 8, v82 <= objc_msgSend(a2, "length")))
        {
          v174 = [a2 data];
          [v174 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 248;
        goto LABEL_323;
      case 8u:
        *(a1 + 400) |= 0x8000000uLL;
        v194 = 0;
        v83 = [a2 position] + 8;
        if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 8, v84 <= objc_msgSend(a2, "length")))
        {
          v175 = [a2 data];
          [v175 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 224;
        goto LABEL_323;
      case 9u:
        *(a1 + 400) |= 0x10000000uLL;
        v194 = 0;
        v117 = [a2 position] + 8;
        if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 8, v118 <= objc_msgSend(a2, "length")))
        {
          v183 = [a2 data];
          [v183 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 232;
        goto LABEL_323;
      case 0xAu:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 400) |= 0x800000000000uLL;
        while (1)
        {
          LOBYTE(v194) = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            v116 = [a2 data];
            [v116 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v194 & 0x7F) << v111;
          if ((v194 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v12 = v112++ >= 9;
          if (v12)
          {
            v80 = 0;
            goto LABEL_227;
          }
        }

        if ([a2 hasError])
        {
          v80 = 0;
        }

        else
        {
          v80 = v113;
        }

LABEL_227:
        v146 = 376;
        goto LABEL_232;
      case 0xBu:
        *(a1 + 400) |= 0x1000000uLL;
        v194 = 0;
        v41 = [a2 position] + 8;
        if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
        {
          v161 = [a2 data];
          [v161 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 200;
        goto LABEL_323;
      case 0xCu:
        *(a1 + 400) |= 0x20000uLL;
        v194 = 0;
        v68 = [a2 position] + 8;
        if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 8, v69 <= objc_msgSend(a2, "length")))
        {
          v171 = [a2 data];
          [v171 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 144;
        goto LABEL_323;
      case 0xDu:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 400) |= 0x4000000000000uLL;
        while (1)
        {
          LOBYTE(v194) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v194 & 0x7F) << v51;
          if ((v194 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v12 = v52++ >= 9;
          if (v12)
          {
            LOBYTE(v57) = 0;
            goto LABEL_212;
          }
        }

        v57 = (v53 != 0) & ~[a2 hasError];
LABEL_212:
        v145 = 397;
        goto LABEL_223;
      case 0xEu:
        *(a1 + 400) |= 1uLL;
        v194 = 0;
        v35 = [a2 position] + 8;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
        {
          v158 = [a2 data];
          [v158 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 8;
        goto LABEL_323;
      case 0xFu:
        *(a1 + 400) |= 0x10000uLL;
        v194 = 0;
        v87 = [a2 position] + 8;
        if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 8, v88 <= objc_msgSend(a2, "length")))
        {
          v177 = [a2 data];
          [v177 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 136;
        goto LABEL_323;
      case 0x10u:
        *(a1 + 400) |= 0x80000uLL;
        v194 = 0;
        v89 = [a2 position] + 8;
        if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 8, v90 <= objc_msgSend(a2, "length")))
        {
          v178 = [a2 data];
          [v178 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 160;
        goto LABEL_323;
      case 0x11u:
        *(a1 + 400) |= 0x40000uLL;
        v194 = 0;
        v123 = [a2 position] + 8;
        if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 8, v124 <= objc_msgSend(a2, "length")))
        {
          v186 = [a2 data];
          [v186 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 152;
        goto LABEL_323;
      case 0x12u:
        *(a1 + 400) |= 0x200000uLL;
        v194 = 0;
        v119 = [a2 position] + 8;
        if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 8, v120 <= objc_msgSend(a2, "length")))
        {
          v184 = [a2 data];
          [v184 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 176;
        goto LABEL_323;
      case 0x13u:
        *(a1 + 400) |= 0x100000uLL;
        v194 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v156 = [a2 data];
          [v156 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 168;
        goto LABEL_323;
      case 0x14u:
        *(a1 + 400) |= 0x4000uLL;
        v194 = 0;
        v58 = [a2 position] + 8;
        if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 8, v59 <= objc_msgSend(a2, "length")))
        {
          v166 = [a2 data];
          [v166 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 120;
        goto LABEL_323;
      case 0x15u:
        *(a1 + 400) |= 0x2000uLL;
        v194 = 0;
        v127 = [a2 position] + 8;
        if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 8, v128 <= objc_msgSend(a2, "length")))
        {
          v188 = [a2 data];
          [v188 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 112;
        goto LABEL_323;
      case 0x16u:
        *(a1 + 400) |= 0x100000000000uLL;
        v194 = 0;
        v33 = [a2 position] + 8;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
        {
          v157 = [a2 data];
          [v157 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 360;
        goto LABEL_323;
      case 0x17u:
        *(a1 + 400) |= 0x80000000000uLL;
        v194 = 0;
        v49 = [a2 position] + 8;
        if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 8, v50 <= objc_msgSend(a2, "length")))
        {
          v165 = [a2 data];
          [v165 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 352;
        goto LABEL_323;
      case 0x18u:
        *(a1 + 400) |= 0x1000uLL;
        v194 = 0;
        v39 = [a2 position] + 8;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
        {
          v160 = [a2 data];
          [v160 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 104;
        goto LABEL_323;
      case 0x19u:
        *(a1 + 400) |= 0x800uLL;
        v194 = 0;
        v70 = [a2 position] + 8;
        if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 8, v71 <= objc_msgSend(a2, "length")))
        {
          v172 = [a2 data];
          [v172 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 96;
        goto LABEL_323;
      case 0x1Au:
        *(a1 + 400) |= 0x40uLL;
        v194 = 0;
        v37 = [a2 position] + 8;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
        {
          v159 = [a2 data];
          [v159 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 56;
        goto LABEL_323;
      case 0x1Bu:
        *(a1 + 400) |= 0x20uLL;
        v194 = 0;
        v131 = [a2 position] + 8;
        if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 8, v132 <= objc_msgSend(a2, "length")))
        {
          v190 = [a2 data];
          [v190 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 48;
        goto LABEL_323;
      case 0x1Cu:
        *(a1 + 400) |= 4uLL;
        v194 = 0;
        v129 = [a2 position] + 8;
        if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 8, v130 <= objc_msgSend(a2, "length")))
        {
          v189 = [a2 data];
          [v189 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 24;
        goto LABEL_323;
      case 0x1Du:
        *(a1 + 400) |= 2uLL;
        v194 = 0;
        v45 = [a2 position] + 8;
        if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
        {
          v163 = [a2 data];
          [v163 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 16;
        goto LABEL_323;
      case 0x1Eu:
        *(a1 + 400) |= 0x100uLL;
        v194 = 0;
        v62 = [a2 position] + 8;
        if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 8, v63 <= objc_msgSend(a2, "length")))
        {
          v168 = [a2 data];
          [v168 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 72;
        goto LABEL_323;
      case 0x1Fu:
        *(a1 + 400) |= 0x80uLL;
        v194 = 0;
        v97 = [a2 position] + 8;
        if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 8, v98 <= objc_msgSend(a2, "length")))
        {
          v179 = [a2 data];
          [v179 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 64;
        goto LABEL_323;
      case 0x20u:
        *(a1 + 400) |= 0x400uLL;
        v194 = 0;
        v64 = [a2 position] + 8;
        if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 8, v65 <= objc_msgSend(a2, "length")))
        {
          v169 = [a2 data];
          [v169 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 88;
        goto LABEL_323;
      case 0x21u:
        *(a1 + 400) |= 0x200uLL;
        v194 = 0;
        v135 = [a2 position] + 8;
        if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 8, v136 <= objc_msgSend(a2, "length")))
        {
          v192 = [a2 data];
          [v192 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 80;
        goto LABEL_323;
      case 0x22u:
        *(a1 + 400) |= 0x10uLL;
        v194 = 0;
        v43 = [a2 position] + 8;
        if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
        {
          v162 = [a2 data];
          [v162 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 40;
        goto LABEL_323;
      case 0x23u:
        *(a1 + 400) |= 8uLL;
        v194 = 0;
        v121 = [a2 position] + 8;
        if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 8, v122 <= objc_msgSend(a2, "length")))
        {
          v185 = [a2 data];
          [v185 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 32;
        goto LABEL_323;
      case 0x24u:
        *(a1 + 400) |= 0x40000000000uLL;
        v194 = 0;
        v133 = [a2 position] + 8;
        if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 8, v134 <= objc_msgSend(a2, "length")))
        {
          v191 = [a2 data];
          [v191 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 344;
        goto LABEL_323;
      case 0x25u:
        *(a1 + 400) |= 0x20000000000uLL;
        v194 = 0;
        v27 = [a2 position] + 8;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
        {
          v154 = [a2 data];
          [v154 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 336;
        goto LABEL_323;
      case 0x26u:
        *(a1 + 400) |= 0x4000000000uLL;
        v194 = 0;
        v109 = [a2 position] + 8;
        if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 8, v110 <= objc_msgSend(a2, "length")))
        {
          v182 = [a2 data];
          [v182 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 312;
        goto LABEL_323;
      case 0x27u:
        *(a1 + 400) |= 0x2000000000uLL;
        v194 = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v153 = [a2 data];
          [v153 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 304;
        goto LABEL_323;
      case 0x28u:
        *(a1 + 400) |= 0x400000000uLL;
        v194 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v152 = [a2 data];
          [v152 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 280;
        goto LABEL_323;
      case 0x29u:
        *(a1 + 400) |= 0x200000000uLL;
        v194 = 0;
        v47 = [a2 position] + 8;
        if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
        {
          v164 = [a2 data];
          [v164 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 272;
        goto LABEL_323;
      case 0x2Au:
        *(a1 + 400) |= 0x10000000000uLL;
        v194 = 0;
        v72 = [a2 position] + 8;
        if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 8, v73 <= objc_msgSend(a2, "length")))
        {
          v173 = [a2 data];
          [v173 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 328;
        goto LABEL_323;
      case 0x2Bu:
        *(a1 + 400) |= 0x8000000000uLL;
        v194 = 0;
        v125 = [a2 position] + 8;
        if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 8, v126 <= objc_msgSend(a2, "length")))
        {
          v187 = [a2 data];
          [v187 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 320;
        goto LABEL_323;
      case 0x2Cu:
        *(a1 + 400) |= 0x1000000000uLL;
        v194 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v147 = [a2 data];
          [v147 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 296;
        goto LABEL_323;
      case 0x2Du:
        *(a1 + 400) |= 0x800000000uLL;
        v194 = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v155 = [a2 data];
          [v155 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 288;
        goto LABEL_323;
      case 0x2Eu:
        *(a1 + 400) |= 0x8000uLL;
        v194 = 0;
        v85 = [a2 position] + 8;
        if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 8, v86 <= objc_msgSend(a2, "length")))
        {
          v176 = [a2 data];
          [v176 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 128;
        goto LABEL_323;
      case 0x2Fu:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 400) |= 0x2000000000000uLL;
        while (1)
        {
          LOBYTE(v194) = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v194 & 0x7F) << v101;
          if ((v194 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v12 = v102++ >= 9;
          if (v12)
          {
            LOBYTE(v57) = 0;
            goto LABEL_222;
          }
        }

        v57 = (v103 != 0) & ~[a2 hasError];
LABEL_222:
        v145 = 396;
LABEL_223:
        *(a1 + v145) = v57;
        continue;
      case 0x30u:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 400) |= 0x200000000000uLL;
        while (1)
        {
          LOBYTE(v194) = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v194 & 0x7F) << v137;
          if ((v194 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v12 = v138++ >= 9;
          if (v12)
          {
            v80 = 0;
            goto LABEL_231;
          }
        }

        if ([a2 hasError])
        {
          v80 = 0;
        }

        else
        {
          v80 = v139;
        }

LABEL_231:
        v146 = 368;
        goto LABEL_232;
      case 0x31u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 400) |= 0x400000000000uLL;
        break;
      case 0x32u:
        *(a1 + 400) |= 0x2000000uLL;
        v194 = 0;
        v20 = [a2 position] + 8;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
        {
          v151 = [a2 data];
          [v151 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 208;
        goto LABEL_323;
      case 0x33u:
        *(a1 + 400) |= 0x800000uLL;
        v194 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v150 = [a2 data];
          [v150 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 192;
        goto LABEL_323;
      case 0x35u:
        *(a1 + 400) |= 0x400000uLL;
        v194 = 0;
        v143 = [a2 position] + 8;
        if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 8, v144 <= objc_msgSend(a2, "length")))
        {
          v193 = [a2 data];
          [v193 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 184;
LABEL_323:
        *(a1 + v149) = v148;
        continue;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      LOBYTE(v194) = 0;
      v94 = [a2 position] + 1;
      if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
      {
        v96 = [a2 data];
        [v96 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v93 |= (v194 & 0x7F) << v91;
      if ((v194 & 0x80) == 0)
      {
        break;
      }

      v91 += 7;
      v12 = v92++ >= 9;
      if (v12)
      {
        v80 = 0;
        goto LABEL_220;
      }
    }

    if ([a2 hasError])
    {
      v80 = 0;
    }

    else
    {
      v80 = v93;
    }

LABEL_220:
    v146 = 372;
LABEL_232:
    *(a1 + v146) = v80;
  }

  return [a2 hasError] ^ 1;
}

void sub_21AE9FAA4()
{
  v0 = os_log_create("com.apple.aeroml.AMLFramework", "AMLPhotosShareMetricsLogging");
  v1 = qword_27CD3DF98;
  qword_27CD3DF98 = v0;

  if (!qword_27CD3DF98 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_21AF09080();
  }
}

void sub_21AE9FC6C()
{
  v0 = os_log_create("com.apple.aeroml.AMLFramework", "AMLFeaturesDecoder");
  v1 = qword_27CD3DFA8;
  qword_27CD3DFA8 = v0;

  if (!qword_27CD3DFA8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_21AF09080();
  }
}

uint64_t AMLUserLevelPhotosSearchMetricsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v52) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 104) |= 0x80u;
          while (1)
          {
            LOBYTE(v52) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v52 & 0x7F) << v13;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
LABEL_67:
              *(a1 + 100) = v19;
              goto LABEL_81;
            }
          }

          v19 = (v15 != 0) & ~[a2 hasError];
          goto LABEL_67;
        case 2u:
          v20 = PBReaderReadString();
          v21 = 64;
          goto LABEL_61;
        case 3u:
          *(a1 + 104) |= 0x10u;
          v52 = 0;
          v31 = [a2 position] + 8;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v52;
          v45 = 40;
          goto LABEL_80;
        case 4u:
          *(a1 + 104) |= 0x20u;
          v52 = 0;
          v33 = [a2 position] + 8;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v52;
          v45 = 48;
          goto LABEL_80;
        case 5u:
          *(a1 + 104) |= 1u;
          v52 = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v52;
          v45 = 8;
          goto LABEL_80;
        case 6u:
          *(a1 + 104) |= 2u;
          v52 = 0;
          v37 = [a2 position] + 8;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v52;
          v45 = 16;
          goto LABEL_80;
        case 7u:
          *(a1 + 104) |= 4u;
          v52 = 0;
          v40 = [a2 position] + 8;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 8, v41 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v52;
          v45 = 24;
          goto LABEL_80;
        case 8u:
          *(a1 + 104) |= 8u;
          v52 = 0;
          v35 = [a2 position] + 8;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v52;
          v45 = 32;
LABEL_80:
          *(a1 + v45) = v44;
          goto LABEL_81;
        case 9u:
          v20 = PBReaderReadString();
          v21 = 56;
          goto LABEL_61;
        case 0xAu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 104) |= 0x40u;
          break;
        case 0xBu:
          v20 = PBReaderReadString();
          v21 = 72;
          goto LABEL_61;
        case 0xCu:
          v20 = PBReaderReadString();
          v21 = 80;
          goto LABEL_61;
        case 0xDu:
          v20 = PBReaderReadString();
          v21 = 88;
LABEL_61:
          v42 = *(a1 + v21);
          *(a1 + v21) = v20;

          goto LABEL_81;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_81;
      }

      while (1)
      {
        LOBYTE(v52) = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v52 & 0x7F) << v24;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v30 = 0;
          goto LABEL_65;
        }
      }

      v30 = [a2 hasError] ? 0 : v26;
LABEL_65:
      *(a1 + 96) = v30;
LABEL_81:
      v51 = [a2 position];
    }

    while (v51 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_21AEA2878()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EB20);
  sub_21AEA7958(v0, qword_27CD3EB20);
  return sub_21AF096BC();
}

uint64_t sub_21AEA2988()
{
  v1 = *(v0 + OBJC_IVAR___AMLStorageMetadata_donationTime);
  v2 = *(v0 + OBJC_IVAR___AMLStorageMetadata_donationTime + 8);

  return v1;
}

id AMLStorageMetadata.init(donationMetadata:donationTime:)()
{
  sub_21AEA7C68();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_21AF097BC();

  v3 = [v1 initWithDonationMetadata:v0 donationTime:v2];

  return v3;
}

id AMLStorageMetadata.init(donationMetadata:donationTime:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR___AMLStorageMetadata_donationMetadata) = a1;
  v4 = (v3 + OBJC_IVAR___AMLStorageMetadata_donationTime);
  *v4 = a2;
  v4[1] = a3;
  v6.super_class = AMLStorageMetadata;
  return objc_msgSendSuper2(&v6, sel_init);
}

void *sub_21AEA2CF8()
{
  v1 = *(v0 + OBJC_IVAR___AMLStorageFeatures_arrayProvider);
  v2 = v1;
  return v1;
}

uint64_t sub_21AEA2D84(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMLStorageFeatures_arrayProvider);
  *(v1 + OBJC_IVAR___AMLStorageFeatures_arrayProvider) = a1;
  return MEMORY[0x2821F96F8]();
}

id AMLStorageFeatures.init(featureProvider:batchProvider:arrayProvider:)()
{
  sub_21AEA7C68();
  v2 = OBJC_IVAR___AMLStorageFeatures_featureProvider;
  *&v1[OBJC_IVAR___AMLStorageFeatures_featureProvider] = 0;
  v3 = OBJC_IVAR___AMLStorageFeatures_batchProvider;
  *&v1[OBJC_IVAR___AMLStorageFeatures_batchProvider] = 0;
  v4 = OBJC_IVAR___AMLStorageFeatures_arrayProvider;
  *&v1[OBJC_IVAR___AMLStorageFeatures_arrayProvider] = 0;
  *&v1[v2] = v5;
  *&v1[v3] = v6;
  v7 = *&v1[v4];
  *&v1[v4] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = v0;

  v12.receiver = v1;
  v12.super_class = AMLStorageFeatures;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v10;
}

void *static AMLSpotlightStorage.featuresConfiguration(forConfigurationId:)(uint64_t a1, uint64_t a2)
{
  sub_21AEA7C20();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v6 = dispatch_semaphore_create(0);
  v7 = sub_21AF0987C();
  [v5 setFetchAttributes_];

  v8 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v9 = v5;
  v10 = sub_21AEA7C08();
  v13 = sub_21AEA74C8(v10, v11, v12);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v4;
  v26 = sub_21AEA752C;
  v27 = v14;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21AEA3884;
  v25 = &unk_282C80BE0;
  v15 = _Block_copy(&v22);

  [v13 setFoundItemsHandler_];
  _Block_release(v15);
  sub_21AEA7C20();
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  v26 = sub_21AEA7550;
  v27 = v16;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21AEA3908;
  v25 = &unk_282C80C30;
  v17 = _Block_copy(&v22);
  v18 = v6;

  [v13 setCompletionHandler_];
  _Block_release(v17);
  [v13 start];
  sub_21AF09B1C();

  sub_21AEA7C78();
  v19 = *(v4 + 16);
  v20 = v19;

  return v19;
}

void sub_21AEA31D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21AEA77B0(a1);
  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  v32 = a1;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  v30 = a1 & 0xC000000000000001;
  v31 = v5;
  v29 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v5 != v6)
  {
    if (v7)
    {
      v9 = MEMORY[0x21CEE4EF0](v6, v32);
    }

    else
    {
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(v32 + 8 * v6 + 32);
    }

    v10 = v9;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v11 = [v9 attributeSet];
    sub_21AEA7B80(0, &qword_27CD3D398, 0x277CC33B0);
    v12 = sub_21AEA3810();
    if (!v12)
    {
      goto LABEL_30;
    }

    v13 = v12;
    v14 = [v11 valueForCustomKey_];

    if (v14 && (v34 = v14, sub_21AEA7574(&unk_27CD3D400, &qword_21AF0C0E8), (swift_dynamicCast() & 1) != 0))
    {
      v16 = v33[0];
      v15 = v33[1];
      sub_21AEA7B80(0, &unk_27CD3D410, 0x277CCAAC8);
      sub_21AEA7574(&qword_27CD3DE20, qword_21AF0C0F8);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21AF0C080;
      *(v17 + 32) = sub_21AEA7B80(0, &unk_27CD3D420, 0x277CCACA8);
      *(v17 + 40) = sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
      *(v17 + 48) = sub_21AEA7B80(0, &qword_27CD3D430, 0x277CBEA60);
      *(v17 + 56) = type metadata accessor for AMLFeaturesConfiguration(0);
      *(v17 + 64) = type metadata accessor for AMLFeaturesSpecification(0);
      *(v17 + 72) = sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
      sub_21AEA78A8(v16, v15);
      sub_21AF09ABC();
      sub_21AEA7900(v16, v15);

      if (v33[3])
      {
        if (swift_dynamicCast())
        {
          v18 = v34;
          v19 = [v18 configurationId];
          v20 = sub_21AF097CC();
          v22 = v21;

          if (v20 == a2 && v22 == a3)
          {

            sub_21AEA7900(v16, v15);

LABEL_26:
            swift_beginAccess();
            v25 = *(a4 + 16);
            *(a4 + 16) = v18;

            return;
          }

          v24 = sub_21AF09E4C();

          sub_21AEA7900(v16, v15);

          if (v24)
          {
            goto LABEL_26;
          }
        }

        else
        {

          sub_21AEA7900(v16, v15);
        }
      }

      else
      {

        sub_21AEA7900(v16, v15);
        sub_21AEA7990(v33, &qword_27CD3D330, &unk_21AF0C420);
      }

      v7 = v30;
      v5 = v31;
      v8 = v29;
    }

    else
    {
    }

    ++v6;
  }
}

id sub_21AEA3810()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21AF097BC();

  v2 = [v0 initWithKeyName_];

  return v2;
}

uint64_t sub_21AEA3884(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_21AEA7B80(0, &qword_281228818, 0x277CC34B0);
  v3 = sub_21AF0988C();

  v2(v3);
}

void sub_21AEA3908(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id static AMLSpotlightStorage.metadata(forPhotoId:aroundTime:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v47 - v10;
  v11 = sub_21AF093FC();
  v12 = sub_21AEA7C90(v11);
  v49 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_21AEA7CA4();
  v48 = v16;
  sub_21AEA7C20();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = (v17 + 16);
  v19 = swift_allocBox();
  v50 = v20;
  v52 = v11;
  sub_21AEA75BC(v20, 1, 1, v11);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v53 = dispatch_semaphore_create(0);
  v22 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v23 = sub_21AF0987C();
  [v22 setFetchAttributes_];

  v24 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v54 = v22;
  v25 = sub_21AEA7C08();
  v28 = sub_21AEA74C8(v25, v26, v27);
  [v28 setPrivateIndex_];
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  *(v29 + 32) = v17;
  *(v29 + 40) = a3;
  *(v29 + 48) = v4;
  *(v29 + 56) = v19;
  *(v29 + 64) = v21;
  v61 = sub_21AEA75E4;
  v62 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_21AEA3884;
  v60 = &unk_282C80CD0;
  v30 = _Block_copy(&aBlock);

  v55 = v17;

  v56 = v21;

  [v28 setFoundItemsHandler_];
  _Block_release(v30);
  sub_21AEA7C20();
  v31 = swift_allocObject();
  v32 = v53;
  *(v31 + 16) = v53;
  v61 = sub_21AEA7C04;
  v62 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_21AEA3908;
  v60 = &unk_282C80D20;
  v33 = _Block_copy(&aBlock);
  v34 = v32;

  [v28 setCompletionHandler_];
  _Block_release(v33);
  [v28 start];
  sub_21AF09B1C();
  sub_21AEA7C78();
  v35 = *v18;
  if (*v18)
  {
    v36 = v54;
    v37 = v50;
    sub_21AEA7C78();
    v38 = v37;
    v39 = v51;
    sub_21AEA75FC(v38, v51);
    v40 = v52;
    if (sub_21AEA766C(v39, 1, v52) == 1)
    {
      v41 = v35;
      sub_21AEA7990(v39, &unk_27CD3D2F0, qword_21AF0C0A0);
    }

    else
    {
      v43 = v48;
      v42 = v49;
      (*(v49 + 32))(v48, v39, v40);
      type metadata accessor for AMLUtilities();
      v44 = v35;
      sub_21AF071CC();
      (*(v42 + 8))(v43, v40);
    }

    v45 = objc_allocWithZone(AMLStorageMetadata);
    v35 = sub_21AEA7694(v35);
  }

  else
  {
  }

  return v35;
}

void sub_21AEA3E90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = a3;
  v89 = a2;
  v14 = (*(*(sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v82 = &v77 - v15;
  v86 = sub_21AF093FC();
  v16 = *(v86 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20]();
  v84 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_projectBox();
  v20 = sub_21AEA77B0(a1);
  v85 = a4;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v81 = v19;
  swift_beginAccess();
  swift_beginAccess();
  v21 = 0;
  v98 = 0;
  v101 = a1 & 0xFFFFFFFFFFFFFF8;
  v79 = a1;
  v99 = a1 + 32;
  v22 = a1 & 0xC000000000000001;
  v100 = "contentCreationDate";
  v88 = "metadata(forSession:)";
  v91 = 0x800000021AF0EBB0;
  v80 = v16;
  v83 = (v16 + 8);
  *(&v23 + 1) = 14;
  v95 = xmmword_21AF0C090;
  *&v23 = 136315650;
  v87 = v23;
  v92 = a8;
  v93 = v20;
  v96 = v22;
  while (1)
  {
    if (v21 == v20)
    {
      return;
    }

    if (v22)
    {
      v24 = MEMORY[0x21CEE4EF0](v21, v79);
    }

    else
    {
      if (v21 >= *(v101 + 16))
      {
        goto LABEL_57;
      }

      v24 = *(v99 + 8 * v21);
    }

    v8 = v24;
    if (__OFADD__(v21++, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:

      sub_21AEA7900(v97, *(&v97 + 1));
      v73 = 1;
      v74 = v82;
      v75 = v86;
LABEL_61:
      sub_21AEA75BC(v74, v73, 1, v75);
      sub_21AEA7B10(v74, v81);
      *(a8 + 16) = 1;
      return;
    }

    v9 = [v24 attributeSet];
    sub_21AEA7B80(0, &qword_27CD3D398, 0x277CC33B0);
    v26 = sub_21AEA3810();
    if (!v26)
    {
      goto LABEL_64;
    }

    v19 = v26;
    v27 = [v9 valueForCustomKey_];

    if (v27)
    {
      v102 = v27;
      sub_21AEA7574(&unk_27CD3D400, &qword_21AF0C0E8);
      if (swift_dynamicCast())
      {
        break;
      }
    }

LABEL_45:
    if (*(a8 + 16) == 1)
    {
      return;
    }
  }

  v28 = v104;
  sub_21AEA7B80(0, &unk_27CD3D410, 0x277CCAAC8);
  sub_21AEA7574(&qword_27CD3DE20, qword_21AF0C0F8);
  v19 = swift_allocObject();
  *&v19[2].isa = v95;
  v19[4].isa = sub_21AEA7B80(0, &unk_27CD3D420, 0x277CCACA8);
  v19[5].isa = sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  v19[6].isa = sub_21AEA7B80(0, &qword_27CD3D430, 0x277CBEA60);
  v19[7].isa = sub_21AEA7B80(0, &qword_27CD3D438, 0x277CBEAC0);
  v19[8].isa = type metadata accessor for AMLFeaturesDonationMetadata(0);
  v19[9].isa = type metadata accessor for AMLFeaturesSpecification(0);
  v19[10].isa = sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  v97 = v28;
  v29 = v98;
  sub_21AF09ABC();
  if (v29)
  {

    if (qword_27CD3D260 != -1)
    {
      swift_once();
    }

    v30 = sub_21AF096CC();
    sub_21AEA7958(v30, qword_27CD3EB20);
    v31 = v29;
    v19 = sub_21AF096AC();
    v32 = sub_21AF09A9C();

    if (os_log_type_enabled(v19, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v104 = v35;
      *v33 = v87;
      *(v33 + 4) = sub_21AECFFFC(0xD000000000000020, v88 | 0x8000000000000000, &v104);
      *(v33 + 12) = 2112;
      v36 = v29;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      *v34 = v37;
      *(v33 + 22) = 2080;
      swift_getErrorValue();
      v38 = sub_21AF09E8C();
      v40 = sub_21AECFFFC(v38, v39, &v104);
      v98 = v29;
      v41 = v40;

      *(v33 + 24) = v41;
      _os_log_impl(&dword_21AE94000, v19, v32, "%s: Encountered error while unarchiving Metadata: %@, description: %s", v33, 0x20u);
      sub_21AEA7990(v34, &qword_27CD3DF30, &qword_21AF0C0F0);
      MEMORY[0x21CEE5A20](v34, -1, -1);
      swift_arrayDestroy();
      v42 = v35;
      v20 = v93;
      MEMORY[0x21CEE5A20](v42, -1, -1);
      MEMORY[0x21CEE5A20](v33, -1, -1);
      sub_21AEA7900(v97, *(&v97 + 1));

      v98 = 0;
      a8 = v92;
    }

    else
    {
      sub_21AEA7900(v97, *(&v97 + 1));

      v98 = 0;
LABEL_40:
      a8 = v92;
    }

LABEL_41:
    v22 = v96;
    goto LABEL_45;
  }

  v98 = 0;

  if (!*(&v105 + 1))
  {

    sub_21AEA7900(v97, *(&v97 + 1));
    sub_21AEA7990(&v104, &qword_27CD3D330, &unk_21AF0C420);
    v22 = v96;
    goto LABEL_45;
  }

  v43 = swift_dynamicCast();
  v22 = v96;
  if ((v43 & 1) == 0)
  {

    sub_21AEA7900(v97, *(&v97 + 1));
    goto LABEL_45;
  }

  v19 = v102;
  v44 = sub_21AEB3760(v19);
  if (!v44)
  {

    sub_21AEA7900(v97, *(&v97 + 1));
    a8 = v92;
    goto LABEL_45;
  }

  v45 = v44;
  v78 = v19;
  *&v104 = 0;
  v46 = sub_21AF09E1C();
  *&v104 = 0xD000000000000012;
  *(&v104 + 1) = v91;
  MEMORY[0x21CEE4A70](v46);

  *&v104 = 0;
  v47 = sub_21AF09E1C();
  *&v104 = 0x702D736F746F6870;
  *(&v104 + 1) = 0xEF2D64496F746F68;
  MEMORY[0x21CEE4A70](v47);

  sub_21AEC8AA8(v45, &v104);

  sub_21AEA7990(&v104, &qword_27CD3D330, &unk_21AF0C420);
  for (i = 0; ; i = v65 + 1)
  {

    if (!*(v45 + 16))
    {

      sub_21AEA7900(v97, *(&v97 + 1));

LABEL_49:

      v19 = v78;

      v105 = 0u;
      v104 = 0u;
      sub_21AEA7990(&v104, &qword_27CD3D330, &unk_21AF0C420);
      goto LABEL_40;
    }

    v49 = sub_21AED0594();
    v51 = v50;

    if ((v51 & 1) == 0)
    {

      sub_21AEA7900(v97, *(&v97 + 1));
      goto LABEL_49;
    }

    sub_21AEA784C(*(v45 + 56) + 32 * v49, &v104);
    sub_21AEA7990(&v104, &qword_27CD3D330, &unk_21AF0C420);
    if (*(v45 + 16))
    {
      v52 = sub_21AED0594();
      v54 = v53;

      v55 = v90;
      if (v54)
      {
        sub_21AEA784C(*(v45 + 56) + 32 * v52, &v104);
        if (swift_dynamicCast())
        {
          v56 = v102;
          v57 = v103;
          goto LABEL_28;
        }
      }
    }

    else
    {

      v55 = v90;
    }

    v56 = 0x5064696C61766E49;
    v57 = 0xEE0064496F746F68;
LABEL_28:
    if (v56 == v89 && v57 == v55)
    {

LABEL_51:

      v66 = v78;
      v67 = *(v85 + 16);
      *(v85 + 16) = v78;
      v19 = v66;

      v68 = [v9 contentCreationDate];
      a8 = v92;
      v69 = v84;
      if (!v68)
      {
        goto LABEL_58;
      }

      v70 = v68;
      sub_21AF093CC();

      if (a5 <= 0.0)
      {

        sub_21AEA7900(v97, *(&v97 + 1));
LABEL_60:
        v74 = v82;
        v76 = v69;
        v75 = v86;
        (*(v80 + 32))(v82, v76, v86);
        v73 = 0;
        goto LABEL_61;
      }

      sub_21AF093BC();
      v72 = v71;

      sub_21AEA7900(v97, *(&v97 + 1));
      if (vabdd_f64(v72, a5) <= 900.0)
      {
        goto LABEL_60;
      }

      (*v83)(v69, v86);
      goto LABEL_41;
    }

    v59 = sub_21AF09E4C();

    if (v59)
    {
      goto LABEL_51;
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v94 = i;
    *&v104 = i + 1;
    v60 = sub_21AF09E1C();
    *&v104 = 0x702D736F746F6870;
    *(&v104 + 1) = 0xEF2D64496F746F68;
    MEMORY[0x21CEE4A70](v60);

    *&v104 = i + 1;
    v61 = sub_21AF09E1C();
    *&v104 = 0xD000000000000012;
    *(&v104 + 1) = v91;
    MEMORY[0x21CEE4A70](v61);

    if (*(v45 + 16) && (v62 = sub_21AED0594(), (v63 & 1) != 0))
    {
      v64 = v62;

      sub_21AEA784C(*(v45 + 56) + 32 * v64, &v104);
    }

    else
    {

      v105 = 0u;
      v104 = 0u;
    }

    v20 = v93;
    v65 = v94;
    sub_21AEA7990(&v104, &qword_27CD3D330, &unk_21AF0C420);
  }

  __break(1u);
LABEL_64:
  __break(1u);
}

uint64_t static AMLSpotlightStorage.metadata(forSession:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - v6;
  v55 = sub_21AF093FC();
  v8 = sub_21AEA7C90(v55);
  v47 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_21AEA7CA4();
  v51 = v12;
  sub_21AEA7C20();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84F90];
  *(v13 + 16) = MEMORY[0x277D84F90];
  v15 = (v13 + 16);
  v16 = v14;
  sub_21AEA7C20();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v52 = v17 + 16;
  v56 = dispatch_semaphore_create(0);
  v18 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v19 = sub_21AF0987C();
  [v18 setFetchAttributes_];

  objc_allocWithZone(MEMORY[0x277CC3498]);
  v48 = v18;
  v20 = sub_21AEA7C08();
  v23 = sub_21AEA74C8(v20, v21, v22);
  [v23 setPrivateIndex_];
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = v13;
  v24[5] = v17;
  v62 = sub_21AEA7700;
  v63 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_21AEA3884;
  v61 = &unk_282C80DC0;
  v25 = _Block_copy(&aBlock);

  v50 = v13;

  v49 = v17;

  [v23 setFoundItemsHandler_];
  _Block_release(v25);
  sub_21AEA7C20();
  v26 = swift_allocObject();
  v27 = v56;
  *(v26 + 16) = v56;
  v62 = sub_21AEA7C04;
  v63 = v26;
  v28 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_21AEA3908;
  v61 = &unk_282C80E10;
  v29 = _Block_copy(&aBlock);
  v30 = v27;

  [v23 setCompletionHandler_];
  _Block_release(v29);
  [v23 start];
  sub_21AF09B1C();
  v57 = MEMORY[0x277D84F90];
  sub_21AEA7C78();
  v56 = *v15;
  result = sub_21AEA77B0(v56);
  if (result)
  {
    v32 = result;
    if (result >= 1)
    {
      v45 = v30;
      v46 = v28;
      v53 = v56 & 0xC000000000000001;

      v33 = v52;
      sub_21AEA7C78();
      v34 = 0;
      v35 = (v47 + 32);
      v36 = (v47 + 8);
      while (1)
      {
        result = v53 ? MEMORY[0x21CEE4EF0](v34, v56) : *(v56 + 8 * v34 + 32);
        v37 = result;
        v38 = v55;
        if (v34 >= *(*v33 + 16))
        {
          break;
        }

        sub_21AEA75FC(*v33 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v34, v7);
        if (sub_21AEA766C(v7, 1, v38) == 1)
        {
          sub_21AEA7990(v7, &unk_27CD3D2F0, qword_21AF0C0A0);
        }

        else
        {
          v39 = v51;
          (*v35)(v51, v7, v38);
          type metadata accessor for AMLUtilities();
          sub_21AF071CC();
          v40 = v39;
          v33 = v52;
          (*v36)(v40, v38);
        }

        objc_allocWithZone(AMLStorageMetadata);
        v41 = v37;
        v42 = sub_21AEA7694(v41);
        MEMORY[0x21CEE4AD0]();
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21AF098CC();
        }

        ++v34;
        sub_21AF0991C();

        if (v32 == v34)
        {
          v43 = v57;

          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
LABEL_16:

    return v43;
  }

  return result;
}

void sub_21AEA5328(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v77 = a4;
  v81 = a3;
  v80 = a2;
  v6 = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
  v76 = *(v6 - 8);
  v7 = *(v76 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v79 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v72 - v10;
  v82 = sub_21AF093FC();
  v11 = *(v82 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v82);
  v78 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21AEA77B0(a1);
  v15 = 0;
  v93 = 0;
  v94 = a1;
  v16 = a1 & 0xC000000000000001;
  v17 = a1 & 0xFFFFFFFFFFFFFF8;
  v85 = "com.apple.aeroml.AMLFramework";
  v74 = (v11 + 16);
  v73 = (v11 + 8);
  *(&v18 + 1) = 14;
  v89 = xmmword_21AF0C090;
  *&v18 = 136315650;
  v84 = v18;
  v86 = v14;
  v87 = a1 & 0xC000000000000001;
  v88 = a1 & 0xFFFFFFFFFFFFFF8;
  v90 = "contentCreationDate";
  while (v14 != v15)
  {
    if (v16)
    {
      v19 = MEMORY[0x21CEE4EF0](v15, v94);
    }

    else
    {
      if (v15 >= *(v17 + 16))
      {
        goto LABEL_47;
      }

      v19 = *(v94 + 8 * v15 + 32);
    }

    v20 = v19;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return;
    }

    v21 = [v19 attributeSet];
    sub_21AEA7B80(0, &qword_27CD3D398, 0x277CC33B0);
    v22 = sub_21AEA3810();
    if (!v22)
    {
      goto LABEL_48;
    }

    v23 = v22;
    v24 = [v21 valueForCustomKey_];

    if (!v24 || (v96 = v24, sub_21AEA7574(&unk_27CD3D400, &qword_21AF0C0E8), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_29;
    }

    v26 = v95[0];
    v25 = v95[1];
    sub_21AEA7B80(0, &unk_27CD3D410, 0x277CCAAC8);
    sub_21AEA7574(&qword_27CD3DE20, qword_21AF0C0F8);
    v27 = swift_allocObject();
    *(v27 + 16) = v89;
    *(v27 + 32) = sub_21AEA7B80(0, &unk_27CD3D420, 0x277CCACA8);
    *(v27 + 40) = sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
    *(v27 + 48) = sub_21AEA7B80(0, &qword_27CD3D430, 0x277CBEA60);
    *(v27 + 56) = sub_21AEA7B80(0, &qword_27CD3D438, 0x277CBEAC0);
    *(v27 + 64) = type metadata accessor for AMLFeaturesDonationMetadata(0);
    *(v27 + 72) = type metadata accessor for AMLFeaturesSpecification(0);
    *(v27 + 80) = sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
    v91 = v26;
    v92 = v25;
    v28 = v93;
    sub_21AF09ABC();
    if (v28)
    {

      if (qword_27CD3D260 != -1)
      {
        swift_once();
      }

      v29 = sub_21AF096CC();
      sub_21AEA7958(v29, qword_27CD3EB20);
      v30 = v28;
      v31 = sub_21AF096AC();
      v32 = sub_21AF09A9C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v95[0] = v35;
        *v33 = v84;
        *(v33 + 4) = sub_21AECFFFC(0xD000000000000015, v85 | 0x8000000000000000, v95);
        *(v33 + 12) = 2112;
        v36 = v28;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v37;
        *v34 = v37;
        *(v33 + 22) = 2080;
        swift_getErrorValue();
        v38 = sub_21AF09E8C();
        v40 = sub_21AECFFFC(v38, v39, v95);
        v93 = v28;
        v41 = v40;

        *(v33 + 24) = v41;
        _os_log_impl(&dword_21AE94000, v31, v32, "%s: Encountered error while unarchiving Metadata: %@, description: %s", v33, 0x20u);
        sub_21AEA7990(v34, &qword_27CD3DF30, &qword_21AF0C0F0);
        MEMORY[0x21CEE5A20](v34, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x21CEE5A20](v35, -1, -1);
        v42 = v33;
        v14 = v86;
        MEMORY[0x21CEE5A20](v42, -1, -1);
        sub_21AEA7900(v91, v92);
      }

      else
      {
        sub_21AEA7900(v91, v92);
      }

      v93 = 0;
      v16 = v87;
      v17 = v88;
    }

    else
    {
      v93 = 0;

      if (!v95[3])
      {

        sub_21AEA7900(v91, v92);
        sub_21AEA7990(v95, &qword_27CD3D330, &unk_21AF0C420);
        goto LABEL_28;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        sub_21AEA7900(v91, v92);
        goto LABEL_28;
      }

      v43 = v96;
      v44 = [v43 sessionId];
      v45 = sub_21AF097CC();
      v47 = v46;

      if (v45 == v80 && v47 == v81)
      {

        v14 = v86;
      }

      else
      {
        v49 = sub_21AF09E4C();

        v14 = v86;
        if ((v49 & 1) == 0)
        {

          sub_21AEA7900(v91, v92);
LABEL_28:
          v17 = v88;
          goto LABEL_29;
        }
      }

      v50 = v77;
      swift_beginAccess();
      v51 = v43;
      MEMORY[0x21CEE4AD0]();
      if (*((*(v50 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v50 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21AF098CC();
      }

      sub_21AF0991C();
      swift_endAccess();
      v52 = [v21 contentCreationDate];
      if (v52)
      {
        v53 = v52;
        v54 = v78;
        sub_21AF093CC();

        v55 = v79;
        v56 = v54;
        v57 = v82;
        (*v74)(v79, v56, v82);
        sub_21AEA75BC(v55, 0, 1, v57);
        v58 = v83;
        swift_beginAccess();
        v59 = *(v58 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v58 + 16) = v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = *(v59 + 16);
          sub_21AEAC390();
          v59 = v67;
          *(v83 + 16) = v67;
        }

        v17 = v88;
        v61 = *(v59 + 16);
        if (v61 >= *(v59 + 24) >> 1)
        {
          sub_21AEAC390();
          v59 = v68;
        }

        *(v59 + 16) = v61 + 1;
        sub_21AEA7AA0(v79, v59 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v61);
        *(v83 + 16) = v59;
        swift_endAccess();

        sub_21AEA7900(v91, v92);
        (*v73)(v78, v82);
      }

      else
      {
        sub_21AEA75BC(v75, 1, 1, v82);
        v62 = v83;
        swift_beginAccess();
        v63 = *(v62 + 16);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        *(v62 + 16) = v63;
        if ((v64 & 1) == 0)
        {
          v69 = *(v63 + 16);
          sub_21AEAC390();
          v63 = v70;
          *(v83 + 16) = v70;
        }

        v17 = v88;
        v65 = *(v63 + 16);
        if (v65 >= *(v63 + 24) >> 1)
        {
          sub_21AEAC390();
          v63 = v71;
        }

        *(v63 + 16) = v65 + 1;
        sub_21AEA7AA0(v75, v63 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v65);
        *(v83 + 16) = v63;
        swift_endAccess();

        sub_21AEA7900(v91, v92);
      }
    }

LABEL_29:
    ++v15;
  }
}

id static AMLSpotlightStorage.features(forSpotlightId:)(uint64_t a1, uint64_t a2)
{
  sub_21AEA7C20();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_21AEA7C20();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_21AEA7C20();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v8 = sub_21AF0987C();
  [v7 setFetchAttributes_];

  v9 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v26 = v7;
  v10 = sub_21AEA7C08();
  v13 = sub_21AEA74C8(v10, v11, v12);
  [v13 setPrivateIndex_];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v6;
  v14[5] = v5;
  v14[6] = v4;
  v31 = sub_21AEA770C;
  v32 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_21AEA3884;
  v30 = &unk_282C80ED8;
  v15 = _Block_copy(&aBlock);

  [v13 setFoundItemsHandler_];
  _Block_release(v15);
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  sub_21AEA7C20();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v31 = sub_21AEA771C;
  v32 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_21AEA3908;
  v30 = &unk_282C80F28;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  [v13 setCompletionHandler_];
  _Block_release(v18);
  [v13 start];
  v20 = sub_21AF09ACC();
  type metadata accessor for AMLStorageFeatures(v20);
  sub_21AEA7C78();
  v21 = *(v4 + 16);
  sub_21AEA7C78();
  v22 = *(v5 + 16);
  sub_21AEA7C78();
  v23 = *(v6 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = _sSo18AMLStorageFeaturesC6AeroMLE15featureProvider05batchF005arrayF0ABSo09MLFeatureF0_pSg_So07MLBatchF0_pSgSo012MLArrayBatchF0CSgtcfC_0();

  return v24;
}

void sub_21AEA6170(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1;
  v10 = sub_21AEA77B0(a1);
  v11 = 0;
  v12 = v9 & 0xC000000000000001;
  v13 = (v9 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v10 == v11)
    {
      return;
    }

    if (v12)
    {
      v14 = MEMORY[0x21CEE4EF0](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v14 = *(v9 + 8 * v11 + 32);
    }

    if (__OFADD__(v11, 1))
    {
      break;
    }

    v48 = v14;
    v15 = [v14 uniqueIdentifier];
    v16 = sub_21AF097CC();
    v18 = v17;

    if (v16 == a2 && v18 == a3)
    {

LABEL_15:
      v13 = v48;
      v47 = [v48 attributeSet];
      sub_21AEA7B80(0, &qword_27CD3D398, 0x277CC33B0);
      v20 = sub_21AEA3810();
      if (v20)
      {
        v21 = v20;
        v22 = [v47 valueForCustomKey_];

        if (v22)
        {
          sub_21AEA7574(&unk_27CD3D400, &qword_21AF0C0E8);
          if (swift_dynamicCast())
          {
            v9 = v49;
            v12 = v50;
            type metadata accessor for AMLDonationDecodeHelper();
            sub_21AEA78A8(v49, v50);
            if (sub_21AEAA404())
            {
              v36 = objc_allocWithZone(MEMORY[0x277CBFEB0]);
              v37 = sub_21AEB3540();

              sub_21AEA7900(v49, v50);
              sub_21AEA7900(v49, v50);
              swift_beginAccess();
              v38 = *(a4 + 16);
              *(a4 + 16) = v37;

              return;
            }

            sub_21AEA7900(v49, v50);
            goto LABEL_25;
          }

LABEL_35:

          return;
        }
      }

      else
      {
        __break(1u);
      }

      return;
    }

    v6 = sub_21AF09E4C();

    if (v6)
    {
      goto LABEL_15;
    }

    ++v11;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  swift_once();
  v23 = sub_21AF096CC();
  sub_21AEA7958(v23, qword_27CD3EB20);
  v24 = a2;
  v25 = sub_21AF096AC();
  v26 = sub_21AF09A9C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v43 = v9;
    v29 = swift_slowAlloc();
    v49 = v29;
    *v27 = *(v6 + 88);
    v30 = a2;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v31;
    *v28 = v31;
    *(v27 + 12) = 2080;
    swift_getErrorValue();
    v32 = sub_21AF09E8C();
    v34 = sub_21AECFFFC(v32, v33, &v49);

    *(v27 + 14) = v34;
    v13 = v48;
    _os_log_impl(&dword_21AE94000, v25, v26, "Error while unarchiving FeatureDictionaries: %@, description: %s", v27, 0x16u);
    sub_21AEA7990(v28, &qword_27CD3DF30, &qword_21AF0C0F0);
    MEMORY[0x21CEE5A20](v28, -1, -1);
    sub_21AEA79F0(v29);
    v35 = v29;
    v9 = v43;
    MEMORY[0x21CEE5A20](v35, -1, -1);
    MEMORY[0x21CEE5A20](v27, -1, -1);
  }

  else
  {
  }

LABEL_25:
  swift_beginAccess();
  if (!*(a4 + 16))
  {
    v39 = sub_21AEAA29C(v9, v12);
    swift_beginAccess();
    v40 = *(a5 + 16);
    *(a5 + 16) = v39;
    swift_unknownObjectRelease();
    if (v39)
    {
      sub_21AEA7900(v9, v12);
      goto LABEL_35;
    }
  }

  swift_beginAccess();
  if (*(a5 + 16) || (swift_beginAccess(), *(a4 + 16)))
  {

    sub_21AEA7900(v9, v12);
  }

  else
  {
    v41 = sub_21AEAA2C4(v9, v12);

    sub_21AEA7900(v9, v12);
    swift_beginAccess();
    v42 = *(a6 + 16);
    *(a6 + 16) = v41;
    swift_unknownObjectRelease();
  }
}

id _sSo18AMLStorageFeaturesC6AeroMLE15featureProvider05batchF005arrayF0ABSo09MLFeatureF0_pSg_So07MLBatchF0_pSgSo012MLArrayBatchF0CSgtcfC_0()
{
  sub_21AEA7C68();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFeatureProvider:v2 batchProvider:v1 arrayProvider:v0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v3;
}

uint64_t sub_21AEA6B88()
{
  v43 = MEMORY[0x277D84F90];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_21AF097BC();
  v35 = ObjCClassFromMetadata;
  v2 = [ObjCClassFromMetadata metadataForSession_];

  type metadata accessor for AMLStorageMetadata(v3);
  v4 = sub_21AF0988C();

  result = sub_21AEA77B0(v4);
  if (result)
  {
    v6 = result;
    if (result >= 1)
    {
      v40 = 0;
      v7 = 0;
      v8 = 0;
      v39 = v4 & 0xC000000000000001;
      v32 = "age";
      v36 = MEMORY[0x277D84F90];
      v9 = &property descriptor for AMLProportionalAllocationSelector.identifier;
      v10 = &property descriptor for AMLProportionalAllocationSelector.identifier;
      v33 = result;
      v34 = v4;
      while (1)
      {
        v11 = v4;
        if (v39)
        {
          v12 = MEMORY[0x21CEE4EF0](v8, v4);
        }

        else
        {
          v12 = *(v4 + 8 * v8 + 32);
        }

        v13 = v12;
        v14 = [v12 v9[71]];
        sub_21AF097CC();

        v15 = [v13 v10[70]];
        v16 = sub_21AEB3760(v15);
        if (v16)
        {
          v17 = v16;

          if (*(v17 + 16) && (v18 = sub_21AED0594(), (v19 & 1) != 0) && (sub_21AEA784C(*(v17 + 56) + 32 * v18, v42), (swift_dynamicCast() & 1) != 0))
          {
            v7 = v41;
          }

          else
          {
            v7 = 0;
          }

          if (*(v17 + 16) && (sub_21AEA7C3C(), v20 = sub_21AED0594(), (v21 & 1) != 0))
          {
            sub_21AEA784C(*(v17 + 56) + 32 * v20, v42);

            if (swift_dynamicCast())
            {
              v22 = v41;
              goto LABEL_20;
            }
          }

          else
          {
          }

          v22 = 0;
        }

        else
        {
          v22 = v40;
        }

LABEL_20:
        v40 = v22;
        if (v7 && v22)
        {
          v38 = v7;
          v23 = sub_21AF097BC();
          v24 = [v35 featuresForSpotlightId_];

          v25 = sub_21AF097BC();
          v26 = [v35 featuresConfigurationForConfigurationId_];

          v37 = v26;
          v27 = [v24 featureProvider];
          v28 = [v24 batchProvider];
          v29 = [v24 arrayProvider];
          v30 = objc_allocWithZone(AMLClientDonations);
          v31 = v15;
          sub_21AED2CF4();
          MEMORY[0x21CEE4AD0]();
          if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21AF098CC();
          }

          sub_21AF0991C();

          v36 = v43;
          v6 = v33;
          v4 = v34;
          v9 = &property descriptor for AMLProportionalAllocationSelector.identifier;
          v10 = &property descriptor for AMLProportionalAllocationSelector.identifier;
          v7 = v38;
        }

        else
        {

          v4 = v11;
        }

        if (v6 == ++v8)
        {

          return v36;
        }
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

id sub_21AEA7068(double a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_21AF097BC();
  v4 = [ObjCClassFromMetadata metadataForPhotoId:v3 aroundTime:a1];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 donationMetadata];
  v6 = [v4 donationTime];
  sub_21AF097CC();

  v7 = sub_21AEA77D4(v5);
  if (!v7)
  {

LABEL_18:

    return 0;
  }

  v8 = v7;
  sub_21AEC8AA8(v7, &v23);
  if (v24)
  {
    if (sub_21AEA7CB8())
    {
      v9 = v22;
      goto LABEL_9;
    }
  }

  else
  {
    sub_21AEA7990(&v23, &qword_27CD3D330, &unk_21AF0C420);
  }

  v9 = 0;
LABEL_9:
  sub_21AEA7C3C();
  sub_21AEC8AA8(v8, &v23);

  if (!v24)
  {
    sub_21AEA7990(&v23, &qword_27CD3D330, &unk_21AF0C420);
LABEL_14:
    v10 = 0;
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if ((sub_21AEA7CB8() & 1) == 0)
  {
    goto LABEL_14;
  }

  v10 = v22;
  if (!v9)
  {
LABEL_12:

    goto LABEL_18;
  }

LABEL_15:
  if (!v10)
  {

    goto LABEL_18;
  }

  v11 = sub_21AF097BC();

  v12 = [ObjCClassFromMetadata featuresForSpotlightId_];

  v13 = sub_21AF097BC();

  v14 = [ObjCClassFromMetadata featuresConfigurationForConfigurationId_];

  v15 = v14;
  v16 = [v12 featureProvider];
  v17 = [v12 batchProvider];
  v18 = [v12 arrayProvider];
  v19 = objc_allocWithZone(AMLClientDonations);
  v20 = sub_21AED2CF4();

  return v20;
}

id sub_21AEA73A8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, double))
{
  v7 = sub_21AF097CC();
  v9 = v8;
  swift_getObjCClassMetadata();
  v10 = a5(v7, v9, a1);

  return v10;
}

id _sSo18AMLStorageFeaturesC6AeroMLEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_21AEA74C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21AF097BC();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

uint64_t sub_21AEA7538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21AEA7574(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_21AEA75FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_21AEA7694(void *a1)
{
  v3 = sub_21AF097BC();

  v4 = [v1 initWithDonationMetadata:a1 donationTime:v3];

  return v4;
}

void type metadata accessor for BMPhotosSearchType()
{
  if (!qword_27CD3D328)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27CD3D328);
    }
  }
}

uint64_t sub_21AEA77B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_21AF09DAC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_21AEA77D4(void *a1)
{
  v2 = [a1 metadata];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21AF0972C();

  return v3;
}

uint64_t sub_21AEA784C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21AEA78A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21AEA7900(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21AEA7958(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21AEA7990(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_21AEA7574(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21AEA79F0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_21AEA7A3C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_21AEA7AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AEA7B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AEA7B80(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_21AEA7C2C(uint64_t a1)
{
  v3 = *(v2 + v1);
  *(v2 + v1) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_21AEA7C78()
{

  return swift_beginAccess();
}

uint64_t sub_21AEA7CB8()
{

  return swift_dynamicCast();
}

uint64_t AMLRecomendationPipelineIdentifier.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLRecomendationPipelineIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLRecomendationPipelineIdentifier.init(name:)(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0xD000000000000015;
    v2[3] = 0x800000021AF0EC30;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v6 = 0xD00000000000002ALL;
    *(v6 + 8) = 0x800000021AF0EC00;
    *(v6 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

unint64_t sub_21AEA7E80()
{
  result = qword_27CD3D4A0[0];
  if (!qword_27CD3D4A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD3D4A0);
  }

  return result;
}

uint64_t AMLRecomendationPipelineIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t AMLCandidateWithFeatures.features.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = *(v2 + v4);
  result = swift_unknownObjectRelease();
  *(v2 + v4) = a1;
  return result;
}

uint64_t (*AMLCandidateWithFeatures.features.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

unint64_t sub_21AEA806C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_21AEA8414();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21AEA80F4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_21AEA766C(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_21AEA8230(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_21AEA75BC(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_21AEA8414()
{
  result = qword_27CD3D528[0];
  if (!qword_27CD3D528[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_27CD3D528);
  }

  return result;
}

uint64_t sub_21AEA8470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for AMLCandidateWithFeatures();
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t AMLScoringPipelineIdentifier.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLScoringPipelineIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLScoringPipelineIdentifier.init(name:)(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0x50676E69726F6353;
    v2[3] = 0xEF656E696C657069;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v6 = 0xD000000000000027;
    *(v6 + 8) = 0x800000021AF0EC80;
    *(v6 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLScoringPipelineIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21AEA8758(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21AEA87BC(v4);
}

uint64_t sub_21AEA8784()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_21AEA87BC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t AMLIdentityTransformer.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLIdentityTransformer.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLIdentityTransformer.init(name:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  type metadata accessor for AMLTransformerIdentifier();
  swift_allocObject();
  v3[2] = AMLTransformerIdentifier.init(name:)(a1, a2);
  return v3;
}

uint64_t AMLIdentityTransformer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AMLIdentityTransformer.__deallocating_deinit()
{
  AMLIdentityTransformer.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21AEA8BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for AMLCandidateWithFeatures();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

uint64_t sub_21AEA8CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(*v3 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = v18 - v11;
  (*(v9 + 16))(v18 - v11, a1, v8);
  v13 = *(type metadata accessor for AMLCandidateWithFeatures() + 28);
  v14 = *(a1 + v13);
  swift_getObjectType();
  v15 = *(a2 + v13);
  v16 = MLFeatureProvider.merging(other:uniquingKeysWith:)();
  if (v4)
  {
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    return sub_21AEA8470(v12, v16, v8, a3);
  }
}

uint64_t AMLCandidateFeatureProviderIdentifier.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLCandidateFeatureProviderIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLCandidateFeatureProviderIdentifier.init(name:)(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0xD000000000000018;
    v2[3] = 0x800000021AF0ED50;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v6 = 0xD000000000000030;
    *(v6 + 8) = 0x800000021AF0ED10;
    *(v6 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLCandidateFeatureProviderIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t AMLTransformerIdentifier.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLTransformerIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLTransformerIdentifier.init(name:)(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0x726F66736E617254;
    v2[3] = 0xEB0000000072656DLL;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v6 = 0xD000000000000023;
    *(v6 + 8) = 0x800000021AF0EDB0;
    *(v6 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLTransformerIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21AEA9420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, NSObject *a14)
{
  v77 = a8;
  v62 = a7;
  v65 = a4;
  v66 = a6;
  v75 = a13;
  v76 = a12;
  v67 = a14;
  v68 = a5;
  v73 = a10;
  v74 = a11;
  v72 = sub_21AF093FC();
  v15 = sub_21AEA7C90(v72);
  v70 = v16;
  v71 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v69 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21AF0942C();
  v20 = sub_21AEA7C90(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v28 = sub_21AF0939C();
  [v27 setContentCreationDate_];

  sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  v29 = sub_21AF09B4C();
  [v27 setDisableSearchInSpotlight_];

  v30 = sub_21AF0931C();
  v31 = sub_21AF097BC();
  [v27 setAttribute:v30 forKey:v31];

  sub_21AF0941C();
  v32 = sub_21AF0940C();
  v64 = v33;
  v65 = v32;
  v34 = v33;
  (*(v22 + 8))(v26, v19);
  v35 = objc_allocWithZone(MEMORY[0x277CC34B0]);

  v36 = v27;
  v63 = v36;
  v37 = v77;

  v38 = sub_21AEAA0B8(v32, v34, a7, v37, v36);
  v39 = [v38 attributeSet];
  v40 = sub_21AF0939C();
  [v39 setContentCreationDate_];

  sub_21AEA7B80(0, &unk_281228808, 0x277CC34A8);

  v68 = sub_21AEA9944();
  v41 = v67;
  dispatch_group_enter(v67);
  sub_21AEA7574(&qword_27CD3D6B0, &unk_21AF0C9B0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_21AF0C3E0;
  *(v42 + 32) = v38;
  sub_21AEA7B80(0, &qword_281228818, 0x277CC34B0);
  v43 = v38;
  v61 = v43;
  v66 = sub_21AF0987C();

  v45 = v69;
  v44 = v70;
  v46 = v72;
  (*(v70 + 16))(v69, a9, v72);
  v47 = (*(v44 + 80) + 56) & ~*(v44 + 80);
  v48 = (v71 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v74;
  *(v50 + 2) = v73;
  *(v50 + 3) = v51;
  v52 = v62;
  *(v50 + 4) = v43;
  *(v50 + 5) = v52;
  *(v50 + 6) = v77;
  (*(v44 + 32))(&v50[v47], v45, v46);
  v53 = &v50[v48];
  v54 = v75;
  *v53 = v76;
  *(v53 + 1) = v54;
  *&v50[v49] = v41;
  aBlock[4] = sub_21AEAA164;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21AEA3908;
  aBlock[3] = &unk_282C81228;
  v55 = _Block_copy(aBlock);

  v56 = v61;

  v57 = v41;

  v58 = v68;
  v59 = v66;
  [v68 indexSearchableItems:v66 completionHandler:v55];
  _Block_release(v55);

  return v65;
}

id sub_21AEA9944()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21AF097BC();

  v2 = [v0 initWithName_];

  return v2;
}

void sub_21AEA99B8(void *a1, NSObject *a2, unint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, NSObject *a10)
{
  v78 = a5;
  v79 = a8;
  v77 = a2;
  v15 = a10;
  v81 = a9;
  v16 = sub_21AF093FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v73 - v22;
  if (a1)
  {
    v24 = a1;
    if (qword_2812288C8 != -1)
    {
      swift_once();
    }

    v25 = sub_21AF096CC();
    sub_21AEA7958(v25, qword_2812288F8);
    v26 = *(v17 + 16);
    v80 = v16;
    v26(v23, a7, v16);
    v27 = a1;

    v28 = a4;

    v29 = v81;

    v30 = a3;
    v31 = sub_21AF096AC();
    v32 = sub_21AF09A9C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v76 = a10;
      v34 = v33;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v82 = v75;
      *v34 = 136316674;
      *(v34 + 4) = sub_21AECFFFC(v77, v30, &v82);
      *(v34 + 12) = 2080;
      v35 = [v28 uniqueIdentifier];
      v36 = sub_21AF097CC();
      v77 = v31;
      v37 = a6;
      v39 = v38;

      v40 = sub_21AECFFFC(v36, v39, &v82);

      *(v34 + 14) = v40;
      *(v34 + 22) = 2080;
      *(v34 + 24) = sub_21AECFFFC(v78, v37, &v82);
      *(v34 + 32) = 2080;
      v41 = sub_21AF066D4();
      LOBYTE(v36) = v32;
      v43 = v42;
      (*(v17 + 8))(v23, v80);
      v44 = sub_21AECFFFC(v41, v43, &v82);

      *(v34 + 34) = v44;
      *(v34 + 42) = 2080;
      *(v34 + 44) = sub_21AECFFFC(v79, v29, &v82);
      *(v34 + 52) = 2112;
      v45 = a1;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 54) = v46;
      v47 = v74;
      *v74 = v46;
      *(v34 + 62) = 2080;
      swift_getErrorValue();
      v48 = sub_21AF09E8C();
      v50 = sub_21AECFFFC(v48, v49, &v82);

      *(v34 + 64) = v50;
      v51 = v77;
      _os_log_impl(&dword_21AE94000, v77, v36, "%s: Index %s from bundle:%s at time: %s for session: %s has indexing error: %@, description: %s", v34, 0x48u);
      sub_21AEAA234(v47);
      MEMORY[0x21CEE5A20](v47, -1, -1);
      v52 = v75;
      swift_arrayDestroy();
      MEMORY[0x21CEE5A20](v52, -1, -1);
      v53 = v34;
      v15 = v76;
      MEMORY[0x21CEE5A20](v53, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v23, v80);
    }
  }

  else
  {
    v76 = a10;
    if (qword_2812288C8 != -1)
    {
      swift_once();
    }

    v54 = sub_21AF096CC();
    sub_21AEA7958(v54, qword_2812288F8);
    (*(v17 + 16))(v21, a7, v16);
    v55 = a3;

    v56 = a4;

    v57 = a6;

    v58 = v55;
    v59 = sub_21AF096AC();
    v60 = sub_21AF09A8C();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v80 = v16;
      v62 = v61;
      v75 = swift_slowAlloc();
      v82 = v75;
      *v62 = 136316162;
      *(v62 + 4) = sub_21AECFFFC(v77, v58, &v82);
      *(v62 + 12) = 2080;
      v63 = [v56 uniqueIdentifier];
      v64 = sub_21AF097CC();
      v66 = v65;

      v67 = sub_21AECFFFC(v64, v66, &v82);

      *(v62 + 14) = v67;
      *(v62 + 22) = 2080;
      *(v62 + 24) = sub_21AECFFFC(v78, v57, &v82);
      *(v62 + 32) = 2080;
      v68 = sub_21AF066D4();
      v70 = v69;
      (*(v17 + 8))(v21, v80);
      v71 = sub_21AECFFFC(v68, v70, &v82);

      *(v62 + 34) = v71;
      *(v62 + 42) = 2080;
      *(v62 + 44) = sub_21AECFFFC(v79, v81, &v82);
      _os_log_impl(&dword_21AE94000, v59, v60, "%s: Index %s from bundle: %s at time: %s for session: %s success!", v62, 0x34u);
      v72 = v75;
      swift_arrayDestroy();
      MEMORY[0x21CEE5A20](v72, -1, -1);
      MEMORY[0x21CEE5A20](v62, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v21, v16);
    }

    v15 = v76;
  }

  dispatch_group_leave(v15);
}

id sub_21AEAA0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_21AF097BC();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_21AF097BC();

LABEL_6:
  v10 = [v5 initWithUniqueIdentifier:v8 domainIdentifier:v9 attributeSet:a5];

  return v10;
}

void sub_21AEAA164(void *a1)
{
  v3 = *(sub_21AF093FC() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21AEA99B8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_21AEAA21C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21AEAA234(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3DF30, &qword_21AF0C0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AEAA2EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = objc_opt_self();
  v7 = sub_21AF0931C();
  v8 = [v6 modelDataFrom_];

  if (v8)
  {
    sub_21AF09B9C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    sub_21AEA7574(a3, a4);
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
    sub_21AEA7990(v13, &qword_27CD3D330, &unk_21AF0C420);
  }

  return 0;
}

id sub_21AEAA404()
{
  v16[5] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_21AF0931C();
  v16[0] = 0;
  v2 = [v0 JSONObjectWithData:v1 options:0 error:v16];

  v3 = v16[0];
  if (v2)
  {
    sub_21AF09B9C();
    swift_unknownObjectRelease();
    sub_21AEA7574(&qword_27CD3D6B8, &unk_21AF0C450);
    swift_dynamicCast();
    result = v16[0];
  }

  else
  {
    v5 = v3;
    v6 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      swift_once();
    }

    v7 = sub_21AF096CC();
    sub_21AEA7958(v7, qword_2812288F8);
    v8 = v6;
    v9 = sub_21AF096AC();
    v10 = sub_21AF09A9C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v6;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_21AE94000, v9, v10, "Encountered error while deserializing: %@", v11, 0xCu);
      sub_21AEA7990(v12, &qword_27CD3DF30, &qword_21AF0C0F0);
      MEMORY[0x21CEE5A20](v12, -1, -1);
      MEMORY[0x21CEE5A20](v11, -1, -1);
    }

    result = swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21AEAA65C(uint64_t a1)
{
  v1 = [objc_opt_self() modelContentForBatchProvider_];
  v2 = sub_21AF0988C();

  return v2;
}

uint64_t sub_21AEAA6C0(void *a1)
{
  if (![a1 count])
  {
    return 0;
  }

  v2 = [objc_opt_self() modelArrayForArrayProvider_];
  v3 = sub_21AF0988C();

  v4 = sub_21AEAA750(v3);

  return v4;
}

uint64_t sub_21AEAA750(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21AEC5A70();
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_21AEA784C(v4, v8);
      sub_21AEA7574(&qword_27CD3D830, &qword_21AF0C488);
      swift_dynamicCast();
      v5 = v8[4];
      v9 = v2;
      v6 = *(v2 + 16);
      if (v6 >= *(v2 + 24) >> 1)
      {
        sub_21AEC5A70();
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      *(v2 + 8 * v6 + 32) = v5;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id AMLDonationDecodeHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMLDonationDecodeHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLDonationDecodeHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AMLDonationDecodeHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLDonationDecodeHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21AEAAA04()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EB38);
  sub_21AEA7958(v0, qword_27CD3EB38);
  return sub_21AF096BC();
}

id sub_21AEAAA98()
{
  v0 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v1 = [v0 Search];
  swift_unknownObjectRelease();
  return v1;
}

id sub_21AEAAB20(SEL *a1, SEL *a2)
{
  v4 = [BiomeLibrary() AeroML];
  swift_unknownObjectRelease();
  v5 = [v4 *a1];
  swift_unknownObjectRelease();
  v6 = [v5 *a2];
  swift_unknownObjectRelease();
  return v6;
}

void sub_21AEAABC0()
{
  sub_21AEAD0C4();
  LODWORD(v2) = v1;
  HIDWORD(v97) = v3;
  v111 = v4;
  v5 = sub_21AF0952C();
  v6 = sub_21AEA7C90(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_21AEAD030();
  v112 = sub_21AF0957C();
  v11 = sub_21AEA7C90(v112);
  v90 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_21AEAD074();
  v98 = v15 - v16;
  v18 = MEMORY[0x28223BE20](v17);
  v105 = &v90 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v104 = &v90 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v90 - v22;
  v24 = sub_21AF093FC();
  v25 = sub_21AEA7C90(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_21AEAD074();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v90 - v34;
  v114 = MEMORY[0x277D84F90];
  sub_21AF093EC();
  sub_21AF0938C();
  v36 = *(v27 + 8);
  v36(v32, v24);
  sub_21AF093BC();
  v36(v35, v24);
  v37 = type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
  sub_21AEB4E44(v2, v23);
  sub_21AF0954C();
  v38 = sub_21AF0950C();
  v39 = *(v8 + 8);
  v101 = v0;
  v102 = v8 + 8;
  v103 = v5;
  v100 = v39;
  v39(v0, v5);
  if (!v38)
  {
    if (qword_27CD3D268 == -1)
    {
LABEL_23:
      v84 = sub_21AF096CC();
      sub_21AEA7958(v84, qword_27CD3EB38);
      v85 = sub_21AF096AC();
      v86 = sub_21AF09A8C();
      v87 = os_log_type_enabled(v85, v86);
      v88 = v112;
      if (v87)
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_21AE94000, v85, v86, "Unable to extract insights from photos search events, search stream is empty", v89, 2u);
        MEMORY[0x21CEE5A20](v89, -1, -1);
      }

      (*(v90 + 8))(v23, v88);
      goto LABEL_28;
    }

LABEL_30:
    sub_21AEACFAC();
    goto LABEL_23;
  }

  v40 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
  v41 = sub_21AEAAB0C();
  v42 = sub_21AEE6298(v41);
  v109 = v43;

  v106 = v37;
  sub_21AEB3BEC();
  v45 = v44;
  v94 = *(v44 + 16);
  if (v94)
  {
    v46 = 0;
    v93 = v44 + 32;
    v47 = *&v42;
    v48 = v90 + 8;
    v96 = MEMORY[0x277D84F90];
    v90 = (v90 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49 = v98;
    v51 = v104;
    v50 = v105;
    v92 = v23;
    HIDWORD(v99) = v2;
    v91 = v44;
    v110 = v48;
    while (v46 < *(v45 + 16))
    {
      v52 = (v93 + 16 * v46);
      v54 = *v52;
      v53 = v52[1];

      sub_21AEB908C(v54, v53, v23, v2 & 1, v55, v56, v57, v58, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);

      sub_21AEB41A0();
      v65 = *(v59 + 16);
      if (v65)
      {
        v95 = v46;
        v66 = 32;
        v111 = v59;
        do
        {
          v67 = *(v59 + v66);
          sub_21AEBCC44(v67, v51, v2 & 1, v60, v61, v62, v63, v64, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
          sub_21AEC062C();
          if ((v109 & 1) != 0 || v68 >= v47)
          {
            sub_21AEC0F7C();
            sub_21AEB4470();
            v108 = v69;
            v70 = *(v69 + 16);
            sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
            v71 = sub_21AF09B5C();
            v2 = sub_21AF09B5C();
            v72 = v101;
            sub_21AF0954C();
            v53 = sub_21AF0950C();
            v100(v72, v103);
            if (v53)
            {
              v53 = sub_21AF09B5C();

              v113 = v67;
              v73 = sub_21AF09E1C();
              v75 = v74;
              v76 = sub_21AF09B5C();
              v107 = v71;
              v77 = sub_21AEABC60(v71, v53, v108, 1u, v73, v75, 0, 0, 0, 0, 0, 0, v76, 0);

              if ((v97 & 0x100000000) != 0)
              {
                v79 = sub_21AEAAB0C();
                v80 = [v79 source];

                [v80 sendEvent_];
              }

              MEMORY[0x21CEE4AD0](v78);
              v81 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18);
              v2 = v112;
              v51 = v104;
              v50 = v105;
              if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v81 >> 1)
              {
                sub_21AEAD084(v81);
                sub_21AF098CC();
              }

              sub_21AF0991C();
              v96 = v114;

              sub_21AEAD09C();
              v49 = v98;
              (v53)(v98, v2);
              (v53)(v50, v2);
              LOBYTE(v2) = BYTE4(v99);
            }

            else
            {

              sub_21AEAD09C();
              v82 = v112;
              MEMORY[0](v49, v112);
              v83 = v105;
              MEMORY[0](v105, v82);
              LOBYTE(v2) = BYTE4(v99);
              v50 = v83;
              v51 = v104;
            }
          }

          else
          {
            sub_21AEAD09C();
            (v53)(v50, v112);
          }

          v66 += 8;
          --v65;
          v59 = v111;
        }

        while (v65);

        v23 = v92;
        v45 = v91;
        v46 = v95;
      }

      else
      {

        sub_21AEAD09C();
      }

      ++v46;
      (v53)(v51, v112);
      if (v46 == v94)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v53 = *(v90 + 8);
LABEL_27:
  (v53)(v23, v112);
LABEL_28:
  sub_21AEAD0A8();
}

void sub_21AEAB3E0()
{
  sub_21AEAD0C4();
  v117 = v1;
  v2 = sub_21AF0925C();
  v3 = sub_21AEA7C90(v2);
  v121 = v4;
  v122 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_21AEAD030();
  v7 = sub_21AF093FC();
  v8 = sub_21AEA7C90(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_21AEAD074();
  v15 = (v13 - v14);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v98 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v98 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v98 - v23;
  v124 = MEMORY[0x277D84F90];
  v25 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
  sub_21AF093EC();
  sub_21AF0938C();
  v118 = *(v10 + 8);
  v119 = v10 + 8;
  v118(v22, v7);
  sub_21AF093EC();
  v26 = *(v10 + 16);
  v120 = v24;
  v26(v22, v24, v7);
  v26(v15, v19, v7);
  v27 = v25;
  sub_21AF0923C();
  v28 = sub_21AEAAA84();
  sub_21AEE5B34();
  v30 = v29;

  v31 = sub_21AEAAA98();
  sub_21AEE5DB0();
  v33 = v32;

  if (*(v30 + 16) && *(v33 + 16))
  {
    v112 = v19;
    v113 = v0;
    v34 = sub_21AEAAB0C();
    v35 = sub_21AEE6298(v34);
    v116 = v36;

    v19 = 0;
    v37 = *&v35;
    v38 = v30 + 32;
    v39 = *(v30 + 16);
    v40 = &property descriptor for AMLProportionalAllocationSelector.identifier;
    v41 = v121;
    v42 = v122;
    while (1)
    {
      v43 = (v38 + 16 * v19);
      do
      {
        if (v39 == v19)
        {

          v19 = v112;
          v0 = v113;
          goto LABEL_59;
        }

        if (v19 >= *(v30 + 16))
        {
          __break(1u);
          goto LABEL_61;
        }

        v44 = v43 + 2;
        ++v19;
        v45 = *v43;
        if (v116)
        {
          break;
        }

        v43 += 2;
      }

      while (v45 < v37);
      v107 = v39;
      v108 = v38;
      v115 = v33;
      v46 = *(v44 - 1);
      v47 = *(v40 + 100);
      v114 = v46;
      v48 = [v46 v47];
      sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
      v49 = sub_21AF0988C();

      v123 = v49;
      v50 = sub_21AEA7BE4(v49);
      v110 = v27;
      v111 = v7;
      v109 = v30;
      if (v50)
      {
        v51 = v50;
        if (v50 < 1)
        {
          __break(1u);
          return;
        }

        v52 = 0;
        v53 = v123 & 0xC000000000000001;
        v54 = MEMORY[0x277D84F90];
        do
        {
          if (v53)
          {
            v55 = MEMORY[0x21CEE4EF0](v52, v123);
          }

          else
          {
            v55 = *(v123 + 8 * v52 + 32);
          }

          v56 = v55;
          v57 = sub_21AEACE30(v55, &selRef_assetUUID);
          if (v58)
          {
            v59 = v57;
            v60 = v58;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = *(v54 + 16);
              sub_21AEAD04C();
              sub_21AEAC554();
              v54 = v65;
            }

            v62 = *(v54 + 16);
            v61 = *(v54 + 24);
            if (v62 >= v61 >> 1)
            {
              sub_21AEAD084(v61);
              sub_21AEAC554();
              v54 = v66;
            }

            *(v54 + 16) = v62 + 1;
            v63 = v54 + 16 * v62;
            *(v63 + 32) = v59;
            *(v63 + 40) = v60;
          }

          else
          {
          }

          ++v52;
        }

        while (v51 != v52);
      }

      else
      {
        v54 = MEMORY[0x277D84F90];
      }

      v67 = *(v54 + 16);
      sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
      v123 = sub_21AF09B5C();
      v68 = v114;
      v69 = sub_21AEACE30(v114, &selRef_queryRaw);
      v71 = v70;
      v106 = sub_21AEACE30(v68, &selRef_language);
      v73 = v72;
      v105 = sub_21AEACE30(v68, &selRef_region);
      v75 = v74;
      v104 = sub_21AEACE30(v68, &selRef_version);
      v103 = v76;
      v102 = [v68 libraryProcessingProgress];
      v101 = [v68 librarySizeBucket];
      sub_21AEABD6C();
      v78 = v77;
      v79 = sub_21AF09B5C();
      if (v78)
      {
        if (*(v78 + 16))
        {
          v80 = sub_21AF09B5C();

          v79 = v80;
        }
      }

      else
      {
        v78 = MEMORY[0x277D84F90];
      }

      if (v71)
      {
        v81 = v69;
      }

      else
      {
        v81 = 0;
      }

      v100 = v81;
      v82 = 0xE000000000000000;
      if (!v71)
      {
        v71 = 0xE000000000000000;
      }

      v83 = v106;
      if (!v73)
      {
        v83 = 0;
      }

      v99 = v83;
      if (!v73)
      {
        v73 = 0xE000000000000000;
      }

      if (v75)
      {
        v84 = v105;
      }

      else
      {
        v84 = 0;
      }

      if (!v75)
      {
        v75 = 0xE000000000000000;
      }

      if (v103)
      {
        v85 = v104;
      }

      else
      {
        v85 = 0;
      }

      if (v103)
      {
        v82 = v103;
      }

      v86 = sub_21AF09F2C();
      v106 = v79;
      v0 = sub_21AEABC60(v123, v79, v78, 2u, v100, v71, v99, v73, v84, v75, v85, v82, v86, v101);

      if (v117)
      {
        v88 = sub_21AEAAB0C();
        v89 = [v88 source];

        [v89 sendEvent_];
      }

      MEMORY[0x21CEE4AD0](v87);
      v90 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v41 = v121;
      v42 = v122;
      v27 = v110;
      v7 = v111;
      v33 = v115;
      v30 = v109;
      if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v90 >> 1)
      {
        sub_21AEAD084(v90);
        sub_21AF098CC();
      }

      sub_21AF0991C();

      v39 = v107;
      v38 = v108;
      v40 = &property descriptor for AMLProportionalAllocationSelector.identifier;
    }
  }

  if (qword_27CD3D268 != -1)
  {
LABEL_61:
    sub_21AEACFAC();
  }

  v91 = sub_21AF096CC();
  sub_21AEA7958(v91, qword_27CD3EB38);

  v92 = sub_21AF096AC();
  v93 = sub_21AF09A8C();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 134218240;
    v95 = *(v30 + 16);

    *(v94 + 4) = v95;

    *(v94 + 12) = 2048;
    v96 = *(v33 + 16);

    *(v94 + 14) = v96;

    _os_log_impl(&dword_21AE94000, v92, v93, "Unable to extract insights from photos search events; biome streams: raw search %ld or feedback stream %ld are empty", v94, 0x16u);
    MEMORY[0x21CEE5A20](v94, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v41 = v121;
  v42 = v122;
LABEL_59:
  (*(v41 + 8))(v0, v42);
  v97 = v118;
  v118(v19, v7);
  v97(v120, v7);
  sub_21AEAD0A8();
}

id sub_21AEABC60(void *a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, int a14)
{
  v18 = *(a3 + 16);
  v23 = sub_21AF099EC();
  objc_allocWithZone(MEMORY[0x277CF0FB8]);

  v19 = a13;

  v20 = a2;
  v21 = a1;

  return sub_21AEAC0FC(a1, 0, a2, v23, a4, 0, 0, 0, a5, a6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, a7, a8, a9, a10, a11, a12, a13, a14);
}

void sub_21AEABD6C()
{
  sub_21AEAD0C4();
  v1 = v0;
  v3 = v2;
  v5 = [v4 presentedAssets];
  v41 = 0;
  sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
  v6 = sub_21AF0988C();

  v7 = sub_21AEA7BE4(v6);
  v42 = v1;
  if (v7)
  {
    v8 = v7;
    if (v7 < 1)
    {
      goto LABEL_36;
    }

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CEE4EF0](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = sub_21AEACE30(v11, &selRef_assetUUID);
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v10 + 16);
          sub_21AEAD04C();
          sub_21AEAC554();
          v10 = v21;
        }

        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_21AEAD084(v17);
          sub_21AEAC554();
          v10 = v22;
        }

        *(v10 + 16) = v18 + 1;
        v19 = v10 + 16 * v18;
        *(v19 + 32) = v15;
        *(v19 + 40) = v16;
      }

      else
      {
      }

      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v23 = 0;
  v24 = *(v42 + 16);
  v25 = v42 + 40;
  v42 = MEMORY[0x277D84F90];
  v40 = v25;
LABEL_18:
  for (i = (v25 + 16 * v23); ; i += 2)
  {
    if (v24 == v23)
    {

      sub_21AEAD0A8();
      return;
    }

    if (v23 >= v24)
    {
      break;
    }

    if (__OFADD__(v23, 1))
    {
      goto LABEL_35;
    }

    if (*(i - 1) > v3)
    {
      v27 = *i;
      v28 = sub_21AEF7500(v27);
      if (v29)
      {
        v30 = v28;
        v31 = v29;
        v43[0] = v28;
        v43[1] = v29;
        MEMORY[0x28223BE20](v28);
        v39[2] = v43;
        if (sub_21AEF6524(sub_21AEACF38, v39, v10))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = *(v42 + 16);
            sub_21AEAD04C();
            sub_21AEAC554();
            v42 = v37;
          }

          v33 = *(v42 + 16);
          v32 = *(v42 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_21AEAD084(v32);
            sub_21AEAC554();
            v42 = v38;
          }

          v34 = v42;
          *(v42 + 16) = v33 + 1;
          v35 = v34 + 16 * v33;
          *(v35 + 32) = v30;
          *(v35 + 40) = v31;
          ++v23;
          v25 = v40;
          goto LABEL_18;
        }
      }
    }

    ++v23;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

id AMLPhotosSearchInsights.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMLPhotosSearchInsights.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchInsights();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AMLPhotosSearchInsights.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchInsights();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21AEAC0FC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, int a30)
{
  if (a10)
  {
    v34 = sub_21AF097BC();
  }

  else
  {
    v34 = 0;
  }

  if (a24)
  {
    v44 = sub_21AF097BC();
  }

  else
  {
    v44 = 0;
  }

  if (a26)
  {
    v30 = sub_21AF097BC();
  }

  else
  {
    v30 = 0;
  }

  if (a28)
  {
    v31 = sub_21AF097BC();
  }

  else
  {
    v31 = 0;
  }

  LODWORD(v33) = a30;
  v38 = [v37 initWithWasThereAnyResultsShown:a7 searchResultSize:a8 didUserViewAnyPhoto:v34 viewedPhotoCount:a11 uiSurface:a12 sizeOfPhotoDB:a13 numberOfSearchesFromThisSurfaceLastWeek:a14 numberOfSearchesFromThisSurfaceWeeklyAvg:a15 queryRaw:a16 numberOfTokensInQuery:a17 numberOfKnownEntitiesInQuery:a18 isSpecificPersonInQuery:a19 isGeneralPersonReferenceInQuery:a20 isSpecificLocationInQuery:a21 isGeneralLocationReferenceInQuery:a22 isSpecificDateInQuery:v44 isGeneralDateReferenceInQuery:v30 isHolidayReferenceInQuery:v31 isActionRunningInQuery:a29 isActionHoldingInQuery:v33 isActionClimbingInQuery:? language:? region:? version:? libraryProcessingProgress:? librarySizeBucket:?];

  return v38;
}

void sub_21AEAC390()
{
  sub_21AEACFE4();
  if (v3)
  {
    sub_21AEACF68();
    if (v5 != v6)
    {
      sub_21AEACFCC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_21AEACF58();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_21AEACB38(v7, v4);
  v9 = *(sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0) - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_21AEFAAAC(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_21AEAC498()
{
  sub_21AEACFE4();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_21AEACF68();
  if (v7 == v8)
  {
LABEL_7:
    sub_21AEACF9C(v6);
    if (v3)
    {
      sub_21AEA7574(&qword_27CD3D730, &qword_21AF0C530);
      v9 = sub_21AEAD05C();
      sub_21AEAD018(v9);
      sub_21AEACFD8();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_21AEACF8C();
        sub_21AEFAB80(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = sub_21AEACFF0();
    memcpy(v14, v15, v16);
    goto LABEL_12;
  }

  sub_21AEACFCC();
  if (!v7)
  {
    sub_21AEACF58();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21AEAC554()
{
  sub_21AEACFE4();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_21AEACF68();
  if (v7 == v8)
  {
LABEL_7:
    sub_21AEACF9C(v6);
    if (v3)
    {
      sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
      v9 = sub_21AEACFFC();
      j__malloc_size(v9);
      sub_21AEACF78();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_21AEACF8C();
        sub_21AE9676C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_21AEACFF0();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_21AEACFCC();
  if (!v7)
  {
    sub_21AEACF58();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21AEAC638()
{
  sub_21AEACFE4();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_21AEACF68();
  if (v7 == v8)
  {
LABEL_7:
    sub_21AEACF9C(v6);
    if (v3)
    {
      sub_21AEA7574(&qword_27CD3D6C8, &unk_21AF0D410);
      v9 = sub_21AEACFFC();
      j__malloc_size(v9);
      sub_21AEACF78();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_21AEACF8C();
        sub_21AEFBE04(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = sub_21AEACFF0();
    memcpy(v14, v15, v16);
    goto LABEL_12;
  }

  sub_21AEACFCC();
  if (!v7)
  {
    sub_21AEACF58();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21AEAC6EC()
{
  sub_21AEACFE4();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_21AEACF68();
  if (v7 == v8)
  {
LABEL_7:
    sub_21AEACF9C(v6);
    if (v3)
    {
      sub_21AEA7574(&qword_27CD3D720, &qword_21AF0C520);
      v9 = sub_21AEACFFC();
      j__malloc_size(v9);
      sub_21AEACF78();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_21AEACF8C();
        sub_21AEFBE04(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_21AEA7574(&qword_27CD3D728, &qword_21AF0C528);
    sub_21AEACFF0();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_21AEACFCC();
  if (!v7)
  {
    sub_21AEACF58();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21AEAC7B8()
{
  sub_21AEACFE4();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_21AEACF68();
  if (v7 == v8)
  {
LABEL_7:
    sub_21AEACF9C(v6);
    if (v3)
    {
      sub_21AEA7574(&qword_27CD3D710, &qword_21AF0C510);
      v9 = sub_21AEACFFC();
      j__malloc_size(v9);
      sub_21AEACF78();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_21AEACF8C();
        sub_21AEFBE04(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_21AEA7574(&qword_27CD3D718, &qword_21AF0C518);
    sub_21AEACFF0();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_21AEACFCC();
  if (!v7)
  {
    sub_21AEACF58();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21AEAC884()
{
  sub_21AEACFE4();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_21AEACF68();
  if (v7 == v8)
  {
LABEL_7:
    sub_21AEACF9C(v6);
    if (v3)
    {
      sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
      v9 = sub_21AEAD05C();
      sub_21AEAD018(v9);
      sub_21AEACFD8();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_21AEACF8C();
        sub_21AEFABC8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_21AEACFF0();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_21AEACFCC();
  if (!v7)
  {
    sub_21AEACF58();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21AEAC94C()
{
  sub_21AEACFE4();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_21AEACF68();
  if (v7 == v8)
  {
LABEL_7:
    sub_21AEACF9C(v6);
    if (v3)
    {
      sub_21AEA7574(&qword_27CD3D6F0, &qword_21AF0C4F0);
      v9 = swift_allocObject();
      sub_21AEAD018(v9);
      v9[2] = v2;
      v9[3] = 2 * (v10 / 48);
      if (v1)
      {
LABEL_9:
        v11 = sub_21AEACF8C();
        sub_21AEFABE8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_21AEA7574(&qword_27CD3D6F8, &qword_21AF0C4F8);
    sub_21AEACFF0();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_21AEACFCC();
  if (!v7)
  {
    sub_21AEACF58();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21AEACA5C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_21AEACF68();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_21AEA7574(a5, a6);
      v15 = sub_21AEAD05C();
      sub_21AEAD018(v15);
      sub_21AEACFD8();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  sub_21AEACFCC();
  if (!v11)
  {
    sub_21AEACF58();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_21AEACB38(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_21AEA7574(&unk_27CD3D740, &qword_21AF0C548);
  v4 = *(sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21AEACC54()
{
  sub_21AEAD090();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
  v3 = sub_21AEAD05C();
  j__malloc_size(v3);
  sub_21AEACF78();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

void *sub_21AEACCCC()
{
  sub_21AEAD090();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v1;
  sub_21AEA7574(v2, v3);
  v5 = sub_21AEAD05C();
  sub_21AEAD018(v5);
  sub_21AEACFD8();
  v5[2] = v4;
  v5[3] = v6;
  return v5;
}

void *sub_21AEACD2C()
{
  sub_21AEAD090();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_21AEA7574(&qword_27CD3D6E0, &unk_21AF0C4E0);
  v3 = swift_allocObject();
  sub_21AEAD018(v3);
  v3[2] = v2;
  v3[3] = 2 * (v4 / 24);
  return v3;
}

void *sub_21AEACDA8()
{
  sub_21AEAD090();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_21AEA7574(&qword_27CD3D700, &qword_21AF0C500);
  v3 = swift_allocObject();
  sub_21AEAD018(v3);
  v3[2] = v2;
  v3[3] = 2 * (v4 / 48);
  return v3;
}

uint64_t sub_21AEACE30(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_21AF097CC();

  return v4;
}

void sub_21AEACF9C(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_21AEACFAC()
{

  return swift_once();
}

uint64_t sub_21AEACFFC()
{

  return swift_allocObject();
}

uint64_t sub_21AEAD05C()
{

  return swift_allocObject();
}

uint64_t sub_21AEAD0E0()
{
  v2 = v0;
  v3 = sub_21AF0974C();
  v188 = v2;
  v4 = [v2 featureNames];
  v5 = sub_21AF099DC();

  v6 = v5 + 56;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 56);
  sub_21AEAFBA8();
  v174 = v10;
  v173 = 0x800000021AF0F010;
  sub_21AEAFBA8();
  v171 = v11;
  v172 = v12;
  v170 = 0x800000021AF0F0A0;
  sub_21AEAFBA8();
  v168 = v13;
  v169 = v14;
  sub_21AEAFBA8();
  v175 = v17;
  v186 = v16;
  v187 = v5;
  while (v9)
  {
    v18 = v15;
LABEL_9:
    v19 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v20 = (*(v5 + 48) + ((v18 << 10) | (16 * v19)));
    v21 = *v20;
    v22 = v20[1];

    v23 = sub_21AF097BC();
    v24 = [v188 featureValueForName_];

    if (v24)
    {
      v176 = v21;
      switch([v24 type])
      {
        case 0uLL:
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v191 = v25 - 6;
          *(&v191 + 1) = v169;
          sub_21AEAFB68(&v191, v190);
          v26 = sub_21AEAFAAC();
          sub_21AEAFA38(v26, v27);
          if (v28)
          {
            goto LABEL_122;
          }

          sub_21AEAFB2C();
          sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v29 = sub_21AEAFA5C();
          if (v29)
          {
            sub_21AEAFACC();
            sub_21AEAFA4C();
            if (!v37)
            {
              goto LABEL_138;
            }

            v1 = v29;
          }

          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v29, v30, v31, v32, v33, v34, v35, v36, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v21, v186, v187, v188, v189);
          *v38 = v177;
          v38[1] = v22;
          sub_21AEAF9F4(v190, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (v28)
          {
            goto LABEL_135;
          }

          goto LABEL_109;
        case 1uLL:
          v101 = [v24 int64Value];
          v192 = MEMORY[0x277D84A28];
          *&v191 = v101;
          sub_21AEAFB68(&v191, v190);
          v102 = sub_21AEAFAAC();
          sub_21AEAFA38(v102, v103);
          if (v28)
          {
            goto LABEL_123;
          }

          sub_21AEAFB2C();
          sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v104 = sub_21AEAFA5C();
          if ((v104 & 1) == 0)
          {
            goto LABEL_68;
          }

          sub_21AEAFACC();
          sub_21AEAFA4C();
          if (!v37)
          {
            goto LABEL_138;
          }

          v1 = v104;
LABEL_68:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v104, v105, v106, v107, v108, v109, v110, v111, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v21, v186, v187, v188, v189);
          *v112 = v181;
          v112[1] = v22;
          sub_21AEAF9F4(v190, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v28)
          {
            goto LABEL_109;
          }

          goto LABEL_137;
        case 2uLL:
          [v24 doubleValue];
          v192 = MEMORY[0x277D839F8];
          *&v191 = v63;
          sub_21AEAFB68(&v191, v190);
          v64 = sub_21AEAFAAC();
          sub_21AEAFA38(v64, v65);
          if (v28)
          {
            goto LABEL_119;
          }

          sub_21AEAFB2C();
          sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v66 = sub_21AEAFA5C();
          if ((v66 & 1) == 0)
          {
            goto LABEL_44;
          }

          sub_21AEAFACC();
          sub_21AEAFA4C();
          if (!v37)
          {
            goto LABEL_138;
          }

          v1 = v66;
LABEL_44:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v66, v67, v68, v69, v70, v71, v72, v73, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v21, v186, v187, v188, v189);
          *v74 = v179;
          v74[1] = v22;
          sub_21AEAF9F4(v190, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v28)
          {
            goto LABEL_109;
          }

          goto LABEL_133;
        case 3uLL:
          v167 = v6;
          v75 = [v24 stringValue];
          v76 = sub_21AF097CC();
          v78 = v77;

          v192 = MEMORY[0x277D837D0];
          *&v191 = v76;
          *(&v191 + 1) = v78;
          sub_21AEAFB68(&v191, v190);
          v189 = v3;
          v79 = sub_21AED0594();
          sub_21AEAFA38(v79, v80);
          if (v28)
          {
            goto LABEL_120;
          }

          sub_21AEAFB2C();
          sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v81 = sub_21AEAFA5C();
          if (v81)
          {
            sub_21AEAFACC();
            sub_21AEAFA4C();
            if (!v37)
            {
              goto LABEL_138;
            }

            v1 = v81;
            if (v76)
            {
LABEL_107:

              v3 = v189;
              v161 = (v189[7] + 32 * v1);
              sub_21AEA79F0(v161);
              sub_21AEAF9F4(v190, v161);

              goto LABEL_110;
            }
          }

          else if (v76)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v81, v82, v83, v84, v85, v86, v87, v88, v166, v6, v168, v169, v170, v171, v172, v173, v174, v175, v176, v186, v187, v188, v3);
          *v162 = v185;
          v162[1] = v22;
          sub_21AEAF9F4(v190, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (v28)
          {
            goto LABEL_132;
          }

LABEL_109:
          *(v3 + 16) = v39;
LABEL_110:
          v15 = v18;
          v16 = v186;
          v5 = v187;
          continue;
        case 4uLL:
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v191 = v51;
          *(&v191 + 1) = v170;
          sub_21AEAFB68(&v191, v190);
          v52 = sub_21AEAFAAC();
          sub_21AEAFA38(v52, v53);
          if (v28)
          {
            goto LABEL_121;
          }

          sub_21AEAFB2C();
          sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v54 = sub_21AEAFA5C();
          if ((v54 & 1) == 0)
          {
            goto LABEL_35;
          }

          sub_21AEAFACC();
          sub_21AEAFA4C();
          if (!v37)
          {
            goto LABEL_138;
          }

          v1 = v54;
LABEL_35:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v54, v55, v56, v57, v58, v59, v60, v61, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v21, v186, v187, v188, v189);
          *v62 = v178;
          v62[1] = v22;
          sub_21AEAF9F4(v190, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v28)
          {
            goto LABEL_109;
          }

          goto LABEL_131;
        case 5uLL:
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v191 = v113 + 5;
          *(&v191 + 1) = v171;
          sub_21AEAFB68(&v191, v190);
          v114 = sub_21AEAFAAC();
          sub_21AEAFA38(v114, v115);
          if (v28)
          {
            goto LABEL_118;
          }

          sub_21AEAFB2C();
          sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v116 = sub_21AEAFA5C();
          if ((v116 & 1) == 0)
          {
            goto LABEL_77;
          }

          sub_21AEAFACC();
          sub_21AEAFA4C();
          if (!v37)
          {
            goto LABEL_138;
          }

          v1 = v116;
LABEL_77:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v116, v117, v118, v119, v120, v121, v122, v123, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v21, v186, v187, v188, v189);
          *v124 = v182;
          v124[1] = v22;
          sub_21AEAF9F4(v190, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v28)
          {
            goto LABEL_109;
          }

          goto LABEL_128;
        case 6uLL:
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v191 = v125 + 5;
          *(&v191 + 1) = v172;
          sub_21AEAFB68(&v191, v190);
          v126 = sub_21AEAFAAC();
          sub_21AEAFA38(v126, v127);
          if (v28)
          {
            goto LABEL_125;
          }

          sub_21AEAFB2C();
          sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v128 = sub_21AEAFA5C();
          if ((v128 & 1) == 0)
          {
            goto LABEL_86;
          }

          sub_21AEAFACC();
          sub_21AEAFA4C();
          if (!v37)
          {
            goto LABEL_138;
          }

          v1 = v128;
LABEL_86:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v128, v129, v130, v131, v132, v133, v134, v135, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v21, v186, v187, v188, v189);
          *v136 = v183;
          v136[1] = v22;
          sub_21AEAF9F4(v190, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v28)
          {
            goto LABEL_109;
          }

          goto LABEL_130;
        case 7uLL:
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v191 = v89 + 3;
          *(&v191 + 1) = v173;
          sub_21AEAFB68(&v191, v190);
          v90 = sub_21AEAFAAC();
          sub_21AEAFA38(v90, v91);
          if (v28)
          {
            goto LABEL_124;
          }

          sub_21AEAFB2C();
          sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v92 = sub_21AEAFA5C();
          if ((v92 & 1) == 0)
          {
            goto LABEL_59;
          }

          sub_21AEAFACC();
          sub_21AEAFA4C();
          if (!v37)
          {
            goto LABEL_138;
          }

          v1 = v92;
LABEL_59:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v92, v93, v94, v95, v96, v97, v98, v99, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v21, v186, v187, v188, v189);
          *v100 = v180;
          v100[1] = v22;
          sub_21AEAF9F4(v190, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v28)
          {
            goto LABEL_109;
          }

          goto LABEL_136;
        case 8uLL:
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v191 = v137;
          *(&v191 + 1) = v174;
          sub_21AEAFB68(&v191, v190);
          v138 = sub_21AEAFAAC();
          sub_21AEAFA38(v138, v139);
          if (v28)
          {
            goto LABEL_126;
          }

          sub_21AEAFB2C();
          sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v140 = sub_21AEAFA5C();
          if ((v140 & 1) == 0)
          {
            goto LABEL_95;
          }

          sub_21AEAFACC();
          sub_21AEAFA4C();
          if (!v37)
          {
            goto LABEL_138;
          }

          v1 = v140;
LABEL_95:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v140, v141, v142, v143, v144, v145, v146, v147, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v21, v186, v187, v188, v189);
          *v148 = v184;
          v148[1] = v22;
          sub_21AEAF9F4(v190, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v28)
          {
            goto LABEL_109;
          }

          goto LABEL_129;
        default:
          v167 = v6;
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v191 = v149 + 2;
          *(&v191 + 1) = v168;
          sub_21AEAFB68(&v191, v190);
          sub_21AEAFBB4();
          v150 = sub_21AED0594();
          sub_21AEAFA38(v150, v151);
          if (v28)
          {
            goto LABEL_127;
          }

          sub_21AEAFB2C();
          sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v152 = sub_21AEAFA5C();
          if ((v152 & 1) == 0)
          {
            goto LABEL_104;
          }

          v3 = v189;
          sub_21AED0594();
          sub_21AEAFA4C();
          if (!v37)
          {
            goto LABEL_138;
          }

          v1 = v152;
LABEL_104:
          if (v21)
          {

            v3 = v189;
            v160 = (v189[7] + 32 * v1);
            sub_21AEA79F0(v160);
            sub_21AEAF9F4(v190, v160);
          }

          else
          {
            sub_21AEAFA0C(v152, v153, v154, v155, v156, v157, v158, v159, v166, v6, v168, v169, v170, v171, v172, v173, v174, v175, v21, v186, v187, v188, v189);
            *v163 = v6;
            v163[1] = v22;
            sub_21AEAF9F4(v190, (*(v3 + 56) + 32 * v1));

            sub_21AEAFB20();
            if (v28)
            {
              goto LABEL_134;
            }

            *(v3 + 16) = v164;
          }

          v15 = v18;
          v16 = v186;
          v5 = v187;
          v6 = v167;
          break;
      }
    }

    else
    {
      sub_21AEAFA9C(MEMORY[0x277D837D0]);
      *&v191 = v40 - 10;
      *(&v191 + 1) = v175;
      sub_21AEAFB68(&v191, v190);
      sub_21AEAFBB4();
      v1 = v22;
      v41 = sub_21AED0594();
      sub_21AEAFA38(v41, v42);
      if (v28)
      {
        goto LABEL_116;
      }

      v45 = v43;
      v46 = v44;
      sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
      if (sub_21AEAFA5C())
      {
        sub_21AED0594();
        sub_21AEAFA4C();
        if (!v37)
        {
          goto LABEL_138;
        }

        v45 = v47;
      }

      if (v46)
      {

        v3 = v189;
        v48 = (v189[7] + 32 * v45);
        sub_21AEA79F0(v48);
        sub_21AEAF9F4(v190, v48);
      }

      else
      {
        v3 = v189;
        v189[(v45 >> 6) + 8] |= 1 << v45;
        v49 = (v189[6] + 16 * v45);
        *v49 = v6;
        v49[1] = v22;
        sub_21AEAF9F4(v190, (v189[7] + 32 * v45));
        sub_21AEAFB20();
        if (v28)
        {
          goto LABEL_117;
        }

        v189[2] = v50;
      }

      v15 = v18;
      v16 = v186;
      v5 = v187;
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      return v3;
    }

    v9 = *(v6 + 8 * v18);
    ++v15;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  result = sub_21AF09E7C();
  __break(1u);
  return result;
}

uint64_t sub_21AEADBCC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMLPipelineLogger_featuresConfiguration);
  *(v1 + OBJC_IVAR___AMLPipelineLogger_featuresConfiguration) = a1;
  return MEMORY[0x2821F96F8]();
}

id AMLPipelineLogger.init(featuresConfiguration:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFeaturesConfiguration_];

  return v2;
}

id AMLPipelineLogger.init(featuresConfiguration:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___AMLPipelineLogger_featuresConfiguration) = a1;
  v3.super_class = AMLPipelineLogger;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t AMLPipelineLogger.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = [v1 featuresConfiguration];
  v4 = [objc_allocWithZone(AMLFeaturesDonation) initWithFeaturesConfiguration_];

  result = type metadata accessor for AMLFeaturesDonation(0);
  a1[3] = result;
  *a1 = v4;
  return result;
}

Swift::Void __swiftcall AMLPipelineLogger.encode(with:)(NSCoder with)
{
  v3 = [v1 featuresConfiguration];
  v4 = sub_21AEAFBE8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

AMLPipelineLogger_optional __swiftcall AMLPipelineLogger.init(coder:)(NSCoder coder)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  v5 = v2;
  result.value.featuresConfiguration = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

id AMLPipelineLogger.init(coder:)(void *a1)
{
  v3 = sub_21AEAFBE8();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_21AF09B9C();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {

    v6 = sub_21AEADFD8(v12);
LABEL_9:
    type metadata accessor for AMLPipelineLogger(v6);
    swift_deallocPartialClassInstance();
    return 0;
  }

  type metadata accessor for AMLFeaturesConfiguration(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  *&v1[OBJC_IVAR___AMLPipelineLogger_featuresConfiguration] = v9;
  v8.receiver = v1;
  v8.super_class = AMLPipelineLogger;
  v5 = objc_msgSendSuper2(&v8, sel_init);

  return v5;
}

uint64_t sub_21AEADFD8(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AEAE07C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v75 = a4;
  v81 = a3;
  v78 = a1;
  v84 = sub_21AF096DC();
  v7 = sub_21AEA7C90(v84);
  v86 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_21AEA7CA4();
  v82 = v11;
  sub_21AEAFBDC();
  v85 = sub_21AF0970C();
  v12 = sub_21AEA7C90(v85);
  v83 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_21AEA7CA4();
  v80 = v16;
  sub_21AEAFBDC();
  v87 = sub_21AF0930C();
  v17 = sub_21AEA7C90(v87);
  v19 = v18;
  v76 = *(v20 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v77 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v74 - v24;
  MEMORY[0x28223BE20](v23);
  v74 = &v74 - v26;
  v27 = sub_21AF096EC();
  v28 = sub_21AEA7C90(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AEA7B80(0, &qword_27CD3D770, 0x277D85C78);
  (*(v30 + 104))(v34, *MEMORY[0x277D851A8], v27);
  v79 = sub_21AF09AEC();
  (*(v30 + 8))(v34, v27);
  v35 = dispatch_group_create();
  v36 = NSTemporaryDirectory();
  sub_21AF097CC();

  sub_21AF0929C();

  sub_21AEAFC08();
  v37 = [v5 featuresConfiguration];
  v38 = [v37 bundleIdentifier];

  v39 = sub_21AF097CC();
  v41 = v40;

  aBlock[0] = v39;
  aBlock[1] = v41;
  sub_21AEAFB38();
  v42 = sub_21AEAF694([v5 featuresConfiguration]);
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v42 = 0x6C65646F6D2D6F6ELL;
    v44 = 0xED0000656D616E2DLL;
  }

  MEMORY[0x21CEE4A70](v42, v44);

  sub_21AEAFB38();
  v45 = [v5 featuresConfiguration];
  v46 = [v45 versionId];

  v47 = sub_21AF097CC();
  v49 = v48;

  MEMORY[0x21CEE4A70](v47, v49);

  sub_21AEAFB38();
  v50 = [v75 sessionId];
  v51 = sub_21AF097CC();
  v53 = v52;

  MEMORY[0x21CEE4A70](v51, v53);

  sub_21AEAFB38();
  MEMORY[0x21CEE4A70](v78, a2);
  sub_21AEAFC28();
  v54 = v25;
  v55 = v74;
  sub_21AF092BC();

  dispatch_group_enter(v35);
  v56 = v77;
  v57 = v87;
  (*(v19 + 16))(v77, v54, v87);
  v58 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v59 = (v76 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v81;
  *(v60 + 16) = v81;
  (*(v19 + 32))(v60 + v58, v56, v57);
  *(v60 + v59) = v35;
  aBlock[4] = sub_21AEAF904;
  aBlock[5] = v60;
  sub_21AEAFB00();
  sub_21AEAFAE8(COERCE_DOUBLE(1107296256));
  aBlock[2] = v62;
  aBlock[3] = &unk_282C812C8;
  v63 = _Block_copy(aBlock);

  v64 = v35;
  v65 = v80;
  sub_21AF096FC();
  v88 = MEMORY[0x277D84F90];
  sub_21AEAF734();
  sub_21AEA7574(&qword_27CD3D780, &qword_21AF0C558);
  sub_21AEAF78C();
  v66 = v82;
  sub_21AEAFB50();
  sub_21AF09BCC();
  v67 = v79;
  MEMORY[0x21CEE4D40](0, v65, v66, v63);
  _Block_release(v63);
  (*(v86 + 8))(v66, v61);
  v68 = sub_21AEAFBC8();
  v69(v68);

  v70 = sub_21AF092DC();

  v71 = *(v19 + 8);
  v72 = v87;
  v71(v54, v87);
  v71(v55, v72);
  return v70;
}

uint64_t sub_21AEAE6DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_21AEAE810(uint64_t a1, char *a2, uint64_t a3, void *a4, int a5)
{
  v6 = v5;
  v86 = a5;
  v74 = a4;
  v79 = a3;
  v81 = a2;
  v77 = a1;
  v83 = sub_21AF096DC();
  v7 = sub_21AEA7C90(v83);
  v85 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_21AEA7CA4();
  v80 = v11;
  sub_21AEAFBDC();
  v84 = sub_21AF0970C();
  v12 = sub_21AEA7C90(v84);
  v82 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_21AEA7CA4();
  v78 = v16;
  sub_21AEAFBDC();
  v72 = sub_21AF0930C();
  v17 = sub_21AEA7C90(v72);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v75 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v73 = &v71 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v71 - v25;
  v27 = sub_21AF096EC();
  v28 = sub_21AEA7C90(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  v34 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AEA7B80(0, &qword_27CD3D770, 0x277D85C78);
  (*(v30 + 104))(v34, *MEMORY[0x277D851A8], v27);
  v76 = sub_21AF09AEC();
  (*(v30 + 8))(v34, v27);
  v35 = dispatch_group_create();
  v36 = NSTemporaryDirectory();
  sub_21AF097CC();

  sub_21AF0929C();

  sub_21AEAFC08();
  v37 = [v6 featuresConfiguration];
  v38 = [v37 bundleIdentifier];

  v39 = sub_21AF097CC();
  v41 = v40;

  aBlock[0] = v39;
  aBlock[1] = v41;
  sub_21AEAFB38();
  v42 = sub_21AEAF694([v6 featuresConfiguration]);
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v42 = 0x6C65646F6D2D6F6ELL;
    v44 = 0xED0000656D616E2DLL;
  }

  MEMORY[0x21CEE4A70](v42, v44);

  sub_21AEAFB38();
  v45 = [v6 featuresConfiguration];
  v46 = [v45 versionId];

  v47 = sub_21AF097CC();
  v49 = v48;

  MEMORY[0x21CEE4A70](v47, v49);
  v50 = v72;

  sub_21AEAFB38();
  v51 = [v74 sessionId];
  v52 = sub_21AF097CC();
  v54 = v53;

  MEMORY[0x21CEE4A70](v52, v54);

  sub_21AEAFB38();
  MEMORY[0x21CEE4A70](v77, v81);
  sub_21AEAFC28();
  v81 = v26;
  v55 = v73;
  sub_21AF092BC();

  dispatch_group_enter(v35);
  v56 = v75;
  (*(v19 + 16))(v75, v55, v50);
  v57 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v58 = swift_allocObject();
  v59 = v79;
  *(v58 + 16) = v79;
  (*(v19 + 32))(v58 + v57, v56, v50);
  *(v58 + ((v21 + v57 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = sub_21AEAF704;
  aBlock[5] = v58;
  sub_21AEAFB00();
  sub_21AEAFAE8(COERCE_DOUBLE(1107296256));
  aBlock[2] = v60;
  aBlock[3] = &unk_282C81278;
  v61 = _Block_copy(aBlock);

  v62 = v35;
  v63 = v78;
  sub_21AF096FC();
  v87 = MEMORY[0x277D84F90];
  sub_21AEAF734();
  sub_21AEA7574(&qword_27CD3D780, &qword_21AF0C558);
  sub_21AEAF78C();
  v64 = v80;
  sub_21AEAFB50();
  v65 = v76;
  sub_21AF09BCC();
  MEMORY[0x21CEE4D40](0, v63, v64, v61);
  _Block_release(v61);
  (*(v85 + 8))(v64, v59);
  v66 = sub_21AEAFBC8();
  v67(v66);

  if ((v86 & 1) == 0)
  {
    sub_21AF09ACC();
  }

  v68 = sub_21AF092DC();

  v69 = *(v19 + 8);
  v69(v55, v50);
  v69(v81, v50);
  return v68;
}

void sub_21AEAEE80(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t (*a4)(void))
{
  v75[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21AF0930C();
  v6 = sub_21AEA7C90(v5);
  v67 = v7;
  v68 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_21AEA7CA4();
  v66 = v10;
  sub_21AEA7574(&unk_27CD3D790, &qword_21AF0C560);
  v11 = sub_21AF09DBC();
  v12 = v11;
  v13 = 0;
  v73 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v72 = v11 + 64;
  if ((v18 & v14) != 0)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_10:
      v24 = v21 | (v13 << 6);
      v25 = (*(v73 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v73 + 56) + 8 * v24);

      swift_unknownObjectRetain();
      v29 = sub_21AEAD0E0();
      swift_unknownObjectRelease();
      *(v72 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v30 = (v12[6] + 16 * v24);
      *v30 = v26;
      v30[1] = v27;
      *(v12[7] + 8 * v24) = v29;
      v31 = v12[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v12[2] = v33;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    sub_21AEAFA7C();
    goto LABEL_17;
  }

LABEL_5:
  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v13 >= v20)
    {
      break;
    }

    v23 = *(v15 + 8 * v13);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v19 = (v23 - 1) & v23;
      goto LABEL_10;
    }
  }

  v34 = objc_opt_self();
  sub_21AEA7574(&qword_27CD3D830, &qword_21AF0C488);
  v35 = sub_21AF0971C();
  v36 = [v34 isValidJSONObject_];

  if ((v36 & 1) == 0)
  {

    if (qword_2812288C8 != -1)
    {
      goto LABEL_34;
    }

LABEL_17:
    v43 = sub_21AF096CC();
    sub_21AEA7958(v43, qword_2812288F8);
    v44 = sub_21AF096AC();
    v45 = sub_21AF09A9C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_21AE94000, v44, v45, "FeatureValues was skipped since JSONSerialization failed", v46, 2u);
      sub_21AEAFB90();
    }

    goto LABEL_30;
  }

  v37 = sub_21AF0971C();

  v75[0] = 0;
  v38 = [v34 dataWithJSONObject:v37 options:1 error:v75];

  v39 = v75[0];
  if (!v38)
  {
    v47 = v39;
    v48 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C();
    }

    v49 = sub_21AF096CC();
    sub_21AEA7958(v49, qword_2812288F8);
    v50 = v48;
    v51 = sub_21AF096AC();
    v52 = a4();

    if (!os_log_type_enabled(v51, v52))
    {

      goto LABEL_30;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v75[0] = v54;
    *v53 = 136315138;
    swift_getErrorValue();
    v55 = sub_21AF09E8C();
    v57 = sub_21AECFFFC(v55, v56, v75);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_21AE94000, v51, v52, "logPipeline error with %s", v53, 0xCu);
    sub_21AEA79F0(v54);
    sub_21AEAFB90();
    sub_21AEAFB90();

    goto LABEL_29;
  }

  v40 = sub_21AF0932C();
  v42 = v41;

  sub_21AF0934C();
  if (qword_2812288C8 != -1)
  {
    sub_21AEAFA7C();
  }

  v58 = sub_21AF096CC();
  sub_21AEA7958(v58, qword_2812288F8);
  (*(v67 + 16))(v66, a2, v68);
  v51 = sub_21AF096AC();
  v59 = sub_21AF09A8C();
  if (os_log_type_enabled(v51, v59))
  {
    v60 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v75[0] = v74;
    *v60 = 136315138;
    v61 = sub_21AF092EC();
    v63 = v62;
    (*(v67 + 8))(v66, v68);
    v64 = sub_21AECFFFC(v61, v63, v75);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_21AE94000, v51, v59, "logged pipeline to %s", v60, 0xCu);
    sub_21AEA79F0(v74);
    sub_21AEAFB90();
    sub_21AEAFB90();
    sub_21AEA7900(v40, v42);
LABEL_29:

    goto LABEL_30;
  }

  sub_21AEA7900(v40, v42);

  (*(v67 + 8))(v66, v68);
LABEL_30:
  dispatch_group_leave(a3);
  v65 = *MEMORY[0x277D85DE8];
}

AMLPipelineLogger __swiftcall AMLPipelineLogger.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.featuresConfiguration = v2;
  result.super.isa = v1;
  return result;
}

uint64_t sub_21AEAF694(void *a1)
{
  v2 = [a1 modelName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21AF097CC();

  return v3;
}

uint64_t sub_21AEAF71C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21AEAF734()
{
  result = qword_27CD3D778;
  if (!qword_27CD3D778)
  {
    sub_21AF096DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D778);
  }

  return result;
}

unint64_t sub_21AEAF78C()
{
  result = qword_27CD3D788;
  if (!qword_27CD3D788)
  {
    sub_21AEAF7F0(&qword_27CD3D780, &qword_21AF0C558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D788);
  }

  return result;
}

uint64_t sub_21AEAF7F0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_21AEAF838()
{
  v1 = sub_21AF0930C();
  sub_21AEA7C90(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

void sub_21AEAF91C(uint64_t (*a1)(void))
{
  v3 = *(sub_21AF0930C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  sub_21AEAEE80(*(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

void *sub_21AEAF9B0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_21AEAF9F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21AEAFA5C()
{

  return sub_21AF09D0C();
}

uint64_t sub_21AEAFA7C()
{

  return swift_once();
}

unint64_t sub_21AEAFAAC()
{

  return sub_21AED0594();
}

unint64_t sub_21AEAFACC()
{

  return sub_21AED0594();
}

void sub_21AEAFB38()
{

  JUMPOUT(0x21CEE4A70);
}

uint64_t sub_21AEAFB68(_OWORD *a1, _OWORD *a2)
{
  sub_21AEAF9F4(a1, a2);

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_21AEAFB90()
{

  JUMPOUT(0x21CEE5A20);
}

uint64_t sub_21AEAFBC8()
{
  v2 = *(*(v1 - 184) + 8);
  result = v0;
  v4 = *(v1 - 168);
  return result;
}

uint64_t sub_21AEAFBE8()
{

  return sub_21AF097BC();
}

uint64_t sub_21AEAFC08()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0xE000000000000000;

  return sub_21AF09C5C();
}

void sub_21AEAFC28()
{

  JUMPOUT(0x21CEE4A70);
}

id sub_21AEAFD38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_21AF097BC();

  return v3;
}

void sub_21AEAFDD0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_21AF097CC();
  sub_21AEB3AC0();
  v7 = a1;
  v6 = sub_21AEB3AA8();
  a4(v6);
}

id AMLFeaturesDonationStatus.init(metadataDonationId:featuresDonationId:configurationDonationId:group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_21AF097BC();

  v10 = sub_21AF097BC();

  sub_21AEB3974();
  v11 = sub_21AF097BC();

  v12 = [v8 initWithMetadataDonationId:v9 featuresDonationId:v10 configurationDonationId:v11 group:a7];

  return v12;
}

id AMLFeaturesDonationStatus.init(metadataDonationId:featuresDonationId:configurationDonationId:group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (v7 + OBJC_IVAR___AMLFeaturesDonationStatus_metadataDonationId);
  *v8 = a1;
  v8[1] = a2;
  v9 = (v7 + OBJC_IVAR___AMLFeaturesDonationStatus_featuresDonationId);
  *v9 = a3;
  v9[1] = a4;
  v10 = (v7 + OBJC_IVAR___AMLFeaturesDonationStatus_configurationDonationId);
  *v10 = a5;
  v10[1] = a6;
  *(v7 + OBJC_IVAR___AMLFeaturesDonationStatus_group) = a7;
  v12.super_class = AMLFeaturesDonationStatus;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t AMLFeaturesDonationStatus.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = [v1 metadataDonationId];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v4 = [v1 featuresDonationId];
  v5 = sub_21AF097CC();
  v7 = v6;

  v8 = [v1 configurationDonationId];
  v9 = sub_21AF097CC();
  v11 = v10;

  v12 = [v1 group];
  v13 = objc_allocWithZone(AMLFeaturesDonationStatus);
  v14 = sub_21AEB3AA8();
  v16 = sub_21AEB3630(v14, v15, v5, v7, v9, v11, v12);
  result = type metadata accessor for AMLFeaturesDonationStatus(v16);
  a1[3] = result;
  *a1 = v16;
  return result;
}

id AMLFeaturesDonation.init(featuresConfiguration:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFeaturesConfiguration_];

  return v2;
}

id AMLFeaturesDonation.init(featuresConfiguration:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___AMLFeaturesDonation____lazy_storage___indexFeaturesConfiguration);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  *(v1 + OBJC_IVAR___AMLFeaturesDonation_featuresConfiguration) = a1;
  v4.super_class = AMLFeaturesDonation;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t AMLFeaturesDonation.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = [v1 featuresConfiguration];
  v4 = [objc_allocWithZone(AMLFeaturesDonation) initWithFeaturesConfiguration_];

  result = type metadata accessor for AMLFeaturesDonation(v5);
  a1[3] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_21AEB04C8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_21AEAF9B0(v8, v8[3]);
  v6 = sub_21AF09E3C();
  sub_21AEA79F0(v8);
  return v6;
}

Swift::Void __swiftcall AMLFeaturesDonation.encode(with:)(NSCoder with)
{
  v3 = [v1 featuresConfiguration];
  v4 = sub_21AEAFBE8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id AMLFeaturesDonation.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___AMLFeaturesDonation____lazy_storage___indexFeaturesConfiguration];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v4 = sub_21AEAFBE8();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_21AF09B9C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {

    sub_21AEA7990(v13, &qword_27CD3D330, &unk_21AF0C420);
LABEL_9:
    sub_21AEB371C(*v3, *(v3 + 1), *(v3 + 2));
    type metadata accessor for AMLFeaturesDonation(v7);
    swift_deallocPartialClassInstance();
    return 0;
  }

  type metadata accessor for AMLFeaturesConfiguration(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  *&v1[OBJC_IVAR___AMLFeaturesDonation_featuresConfiguration] = v10;
  v9.receiver = v1;
  v9.super_class = AMLFeaturesDonation;
  v6 = objc_msgSendSuper2(&v9, sel_init);

  return v6;
}

uint64_t sub_21AEB07FC()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___AMLFeaturesDonation____lazy_storage___indexFeaturesConfiguration];
  v3 = *&v0[OBJC_IVAR___AMLFeaturesDonation____lazy_storage___indexFeaturesConfiguration];
  v4 = *&v0[OBJC_IVAR___AMLFeaturesDonation____lazy_storage___indexFeaturesConfiguration + 8];
  v5 = v2[2];
  if (v4)
  {
    v6 = v3;
    v7 = v2[2];
  }

  else
  {
    v6 = sub_21AEB08C0(v1);
    v9 = v8;
    v10 = *v2;
    v11 = v2[1];
    v12 = v2[2];
    *v2 = v6;
    v2[1] = v13;
    v2[2] = v8;

    v9;
    sub_21AEB371C(v10, v11, v12);
  }

  sub_21AEB383C(v3, v4, v5);
  return v6;
}

uint64_t sub_21AEB08C0(void *a1)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v45 = sub_21AF093FC();
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v45);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = &property descriptor for AMLProportionalAllocationSelector.identifier;
  v8 = [a1 featuresConfiguration];
  v46[0] = 0;
  v9 = [v6 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:v46];

  v10 = v46[0];
  if (v9)
  {
    v11 = sub_21AF0932C();
    v13 = v12;

    if (MEMORY[0x21CEE45A0](v11, v13) > 0)
    {
      goto LABEL_10;
    }

    sub_21AEA7900(v11, v13);
  }

  else
  {
    v14 = v10;
    v15 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      swift_once();
    }

    v16 = sub_21AF096CC();
    sub_21AEA7958(v16, qword_2812288F8);
    v17 = v15;
    v18 = sub_21AF096AC();
    v19 = sub_21AF09A9C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v2;
      v23 = v22;
      v46[0] = v22;
      *v20 = 138412546;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v25;
      *v21 = v25;
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_21AF09E8C();
      v28 = a1;
      v29 = v5;
      v30 = sub_21AECFFFC(v26, v27, v46);

      *(v20 + 14) = v30;
      v5 = v29;
      a1 = v28;
      _os_log_impl(&dword_21AE94000, v18, v19, "Encountered error while archiving FeaturesConfiguration: %@, description: %s", v20, 0x16u);
      sub_21AEA7990(v21, &qword_27CD3DF30, &qword_21AF0C0F0);
      v31 = v21;
      v7 = &property descriptor for AMLProportionalAllocationSelector.identifier;
      MEMORY[0x21CEE5A20](v31, -1, -1);
      sub_21AEA79F0(v23);
      v32 = v23;
      v2 = v44;
      MEMORY[0x21CEE5A20](v32, -1, -1);
      MEMORY[0x21CEE5A20](v20, -1, -1);
    }

    else
    {
    }
  }

  v11 = 0;
  v13 = 0xF000000000000000;
LABEL_10:
  v33 = dispatch_group_create();
  type metadata accessor for AMLFeaturesStorage();
  swift_initStackObject();
  if (v13 >> 60 == 15)
  {

    v34 = 0xD000000000000018;
  }

  else
  {
    v44 = "NoConfigurationStorageId";
    v35 = [a1 v7[117]];
    v36 = [v35 bundleIdentifier];

    v37 = sub_21AF097CC();
    v38 = v5;
    v40 = v39;

    sub_21AF093DC();
    v34 = sub_21AEA9420(v11, v13, 0xD000000000000011, 0x800000021AF0E210, 0xD000000000000029, v44 | 0x8000000000000000, v37, v40, v38, 0xD000000000000016, 0x800000021AF0F500, 16718, 0xE200000000000000, v33);

    sub_21AEB37D4(v11, v13);
    (*(v2 + 8))(v38, v45);
  }

  v41 = *MEMORY[0x277D85DE8];
  return v34;
}

char *sub_21AEB0D94(void *a1, unint64_t a2, char *a3)
{
  v4 = v3;
  v212 = a3;
  v210 = a2;
  v188 = a1;
  v219 = *MEMORY[0x277D85DE8];
  v203 = sub_21AF093FC();
  v5 = sub_21AEA7C90(v203);
  v202 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21AF0969C();
  v12 = sub_21AEA7C90(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v198 = &v186 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v186 - v19;
  v209 = objc_opt_self();
  v21 = sub_21AEF750C([v209 mainBundle]);
  v23 = v22;
  LODWORD(v211) = sub_21AF09B0C();
  if (qword_2812288D0 != -1)
  {
    swift_once();
  }

  v213 = v10;
  v24 = qword_281228910;
  if (qword_2812288D8 != -1)
  {
    swift_once();
  }

  v25 = sub_21AEA7958(v11, qword_281228918);
  isa = v14[2].isa;
  v195 = v25;
  v189 = v14 + 2;
  v194 = isa;
  (isa)(v20);
  v193 = sub_21AEA7574(&unk_27CD3D810, &qword_21AF0C598);
  v27 = swift_allocObject();
  v208 = xmmword_21AF0C580;
  *(v27 + 16) = xmmword_21AF0C580;
  v28 = MEMORY[0x277D837D0];
  *(v27 + 56) = MEMORY[0x277D837D0];
  v29 = sub_21AEB37E8();
  *(v27 + 64) = v29;
  if (v23)
  {
    v30 = v21;
  }

  else
  {
    v30 = 0x6E776F6E6B6E55;
  }

  v31 = 0xE700000000000000;
  if (v23)
  {
    v31 = v23;
  }

  v191 = v30;
  *(v27 + 32) = v30;
  *(v27 + 40) = v31;
  v190 = v31;
  v207 = v23;

  v32 = [v4 featuresConfiguration];
  v33 = [v32 configurationId];

  v34 = sub_21AF097CC();
  v214 = v4;
  v36 = v35;

  *(v27 + 96) = v28;
  *(v27 + 104) = v29;
  v196 = v29;
  *(v27 + 72) = v34;
  *(v27 + 80) = v36;
  v37 = v214;
  sub_21AEB3A6C();
  v186 = 53;
  sub_21AF0967C();

  v38 = v14[1].isa;
  v39 = sub_21AEB3980();
  v192 = v40;
  (v40)(v39);
  v41 = v213;
  sub_21AF093DC();
  v205 = sub_21AEB07FC();
  v206 = v42;

  v44 = dispatch_group_create();
  type metadata accessor for AMLFeaturesStorage();
  inited = swift_initStackObject();
  v46 = v210;
  v200 = v11;
  v199 = v14 + 1;
  v197 = v24;
  v204 = v44;
  v201 = inited;
  if (v210 >> 60 == 15)
  {
    v47 = 0x800000021AF0F390;
    v211 = 0xD000000000000014;
    v48 = v212;
  }

  else
  {
    v49 = v41;
    v187 = "featuresMetadataKey";
    v211 = "spotlightBundleIdentifier";
    v50 = v188;
    sub_21AEA78A8(v188, v210);
    v51 = [v37 featuresConfiguration];
    v52 = [v51 bundleIdentifier];

    v186 = sub_21AF097CC();
    v54 = v53;

    v48 = v212;
    v55 = [v212 sessionId];
    v56 = sub_21AF097CC();
    v58 = v57;

    v211 = sub_21AEA9420(v50, v46, 0xD000000000000012, v187 | 0x8000000000000000, 0xD00000000000002ALL, v211 | 0x8000000000000000, 0x800000021AF0F490, v54, v49, 0xD000000000000011, 0x800000021AF0F490, v56, v58, v44);
    v47 = v59;
    sub_21AEB37D4(v50, v46);
  }

  v60 = sub_21AEF750C([v209 mainBundle]);
  v62 = v61;
  v63 = sub_21AEB3760(v48);
  v210 = v47;
  if (!v63)
  {
    v69 = v47;
    sub_21AEA7574(&unk_27CD3D820, &qword_21AF0C5A0);
    v70 = swift_initStackObject();
    *(v70 + 16) = v208;
    *(v70 + 32) = 0x72756769666E6F63;
    *(v70 + 40) = 0xEF64496E6F697461;
    v71 = sub_21AEB3B18();
    v72 = [v71 configurationId];

    v73 = sub_21AF097CC();
    v75 = v74;

    *(v70 + 48) = v73;
    *(v70 + 56) = v75;
    *(v70 + 64) = 0xD000000000000012;
    *(v70 + 72) = 0x800000021AF0EB20;
    *(v70 + 80) = v211;
    *(v70 + 88) = v47;

    v76 = sub_21AF0974C();
    if (v62)
    {
      swift_isUniquelyReferenced_nonNull_native();
      *&v217 = v76;
      sub_21AF05204();
      v76 = v217;
    }

    v77 = sub_21AEB3AD8();
    v78 = sub_21AF097CC();
    v80 = v79;

    v81 = sub_21AF005F0(v76);

    v82 = objc_allocWithZone(AMLFeaturesDonationMetadata);
    v83 = sub_21AEE0BB4(v78, v80, v81);
    if (v83)
    {
LABEL_34:
      v115 = objc_opt_self();
      *&v217 = 0;
      v116 = [v115 archivedDataWithRootObject:v83 requiringSecureCoding:1 error:&v217];
      v117 = v217;
      if (v116)
      {
        v118 = sub_21AF0932C();
        v120 = v119;

        v121 = sub_21AEB3980();
        if (MEMORY[0x21CEE45A0](v121) > 0)
        {
LABEL_43:
          v140 = dispatch_group_create();
          v209 = v140;
          v207 = v120;
          v189 = v118;
          v188 = v83;
          if (v120 >> 60 != 15)
          {
            v141 = v140;
            v187 = "contentCreationDate";
            v212 = "s for itemId: %{public}s";
            v142 = sub_21AEB3980();
            sub_21AEA78A8(v142, v143);
            v144 = [v214 featuresConfiguration];
            v145 = [v144 bundleIdentifier];

            v186 = sub_21AF097CC();
            v147 = v146;

            v148 = [v83 v69[83]];
            v149 = sub_21AF097CC();
            v151 = v150;

            v188 = v151;
            v189 = v141;
            v186 = 0x800000021AF0F420;
            v187 = v149;
            v185 = v213;
            v152 = sub_21AEB3980();
            sub_21AEA9420(v152, v153, v154, v155, v156, v157, v186, v147, v185, 0xD000000000000011, v186, v187, v188, v189);
            v158 = sub_21AEB3980();
            sub_21AEB37D4(v158, v159);
          }

          v160 = v206;
          v161 = v204;
          v162 = v195;
          v163 = v194;
          v164 = objc_allocWithZone(AMLFeaturesDonationStatus);
          v165 = v161;
          sub_21AEB398C();
          v212 = sub_21AEB3630(v166, v167, v168, v169, v170, v160, v165);
          sub_21AF09AFC();
          v171 = v198;
          v172 = v162;
          v173 = v200;
          v163(v198, v172, v200);
          v174 = swift_allocObject();
          *(v174 + 16) = v208;
          v175 = MEMORY[0x277D837D0];
          v176 = v196;
          *(v174 + 56) = MEMORY[0x277D837D0];
          *(v174 + 64) = v176;
          v177 = v190;
          *(v174 + 32) = v191;
          *(v174 + 40) = v177;
          v178 = [v214 featuresConfiguration];
          v179 = [v178 configurationId];

          v180 = sub_21AF097CC();
          v182 = v181;

          *(v174 + 96) = v175;
          *(v174 + 104) = v176;
          *(v174 + 72) = v180;
          *(v174 + 80) = v182;
          sub_21AEB3A6C();
          v190 = 56;
          sub_21AF0967C();

          v183 = v188;

          sub_21AEB37D4(v189, v207);

          v192(v171, v173);
          (*(v202 + 8))(v213, v203);
LABEL_46:
          v184 = *MEMORY[0x277D85DE8];
          return v212;
        }

        v122 = sub_21AEB3980();
        sub_21AEA7900(v122, v123);
      }

      else
      {
        v124 = v117;
        v125 = sub_21AF0927C();

        swift_willThrow();
        if (qword_2812288C8 != -1)
        {
          sub_21AEAFA7C();
        }

        v126 = sub_21AF096CC();
        sub_21AEA7958(v126, qword_2812288F8);
        v127 = v214;
        v128 = v125;
        v129 = sub_21AF096AC();
        v130 = sub_21AF09A9C();

        if (os_log_type_enabled(v129, v130))
        {
          sub_21AEB3B54();
          v131 = sub_21AEB3A1C();
          *&v217 = sub_21AEB39C8();
          *v125 = 136315394;
          v132 = [v127 (v46 + 1787)];
          v133 = [v132 bundleIdentifier];

          v134 = sub_21AF097CC();
          v136 = v135;

          v137 = sub_21AECFFFC(v134, v136, &v217);

          *(v125 + 1) = v137;
          *(v125 + 6) = 2112;
          v138 = v125;
          v139 = _swift_stdlib_bridgeErrorToNSError();
          *(v125 + 14) = v139;
          *v131 = v139;
          _os_log_impl(&dword_21AE94000, v129, v130, "Encountered error from bundle: %s while archiving AMLFeaturesDonationMetadata: %@", v125, 0x16u);
          sub_21AEA7990(v131, &qword_27CD3DF30, &qword_21AF0C0F0);
          v69 = &property descriptor for AMLProportionalAllocationSelector.identifier;
          sub_21AEAFB90();
          sub_21AEB3B38();
          sub_21AEAFB90();
          sub_21AEAFB90();
        }

        else
        {
        }
      }

      v118 = 0;
      v120 = 0xF000000000000000;
      goto LABEL_43;
    }

LABEL_20:

    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C();
    }

    v84 = sub_21AF096CC();
    sub_21AEA7958(v84, qword_2812288F8);
    v85 = v214;
    v86 = sub_21AF096AC();
    v87 = sub_21AF09A9C();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = sub_21AEB39C8();
      *&v217 = v89;
      *v88 = 136315138;
      v90 = [v85 (v46 + 1787)];
      v91 = [v90 bundleIdentifier];

      v92 = sub_21AF097CC();
      v94 = v93;

      v95 = sub_21AECFFFC(v92, v94, &v217);

      *(v88 + 4) = v95;
      _os_log_impl(&dword_21AE94000, v86, v87, "Donation Metadata is nil from bundleId: %s", v88, 0xCu);
      sub_21AEA79F0(v89);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    v96 = v213;
    v97 = v206;
    v98 = v204;
    v99 = objc_allocWithZone(AMLFeaturesDonationStatus);
    sub_21AEB398C();
    v212 = sub_21AEB3630(v100, v101, v102, v103, v104, v97, v98);
    (*(v202 + 8))(v96, v203);
    goto LABEL_46;
  }

  v64 = sub_21AEB3760(v48);
  v65 = sub_21AEB3B18();
  v66 = [v65 configurationId];

  result = sub_21AF097CC();
  v218 = MEMORY[0x277D837D0];
  *&v217 = result;
  *(&v217 + 1) = v68;
  if (!v64)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v218)
  {
    sub_21AEAF9F4(&v217, v216);
    swift_isUniquelyReferenced_nonNull_native();
    sub_21AEB3A94();
    result = sub_21AF05048();
    v64 = v215;
    v69 = 0xD000000000000012;
  }

  else
  {
    sub_21AEA7990(&v217, &qword_27CD3D330, &unk_21AF0C420);
    v105 = sub_21AED0594();
    v69 = 0xD000000000000012;
    if (v106)
    {
      v107 = v105;
      swift_isUniquelyReferenced_nonNull_native();
      v215 = v64;
      v108 = *(v64 + 24);
      sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
      sub_21AF09D0C();
      v64 = v215;
      v109 = *(*(v215 + 48) + 16 * v107 + 8);

      sub_21AEAF9F4((*(v64 + 56) + 32 * v107), v216);
      sub_21AF09D2C();
    }

    else
    {
      memset(v216, 0, sizeof(v216));
    }

    result = sub_21AEA7990(v216, &qword_27CD3D330, &unk_21AF0C420);
  }

  v218 = MEMORY[0x277D837D0];
  *&v217 = v211;
  *(&v217 + 1) = v47;
  if (!v64)
  {
    goto LABEL_48;
  }

  sub_21AEAF9F4(&v217, v216);

  swift_isUniquelyReferenced_nonNull_native();
  sub_21AEB3A94();
  result = sub_21AF05048();
  v110 = v215;
  if (!v62)
  {
    goto LABEL_33;
  }

  v218 = MEMORY[0x277D837D0];
  *&v217 = v60;
  *(&v217 + 1) = v62;
  if (v215)
  {
    sub_21AEAF9F4(&v217, v216);
    swift_isUniquelyReferenced_nonNull_native();
    v215 = v110;
    sub_21AF05048();
    v110 = v215;
LABEL_33:
    v111 = sub_21AEB3AD8();
    v112 = sub_21AF097CC();
    v114 = v113;

    objc_allocWithZone(AMLFeaturesDonationMetadata);

    v83 = sub_21AEE0BB4(v112, v114, v110);

    if (v83)
    {
      goto LABEL_34;
    }

    goto LABEL_20;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_21AEB20B8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v231 = a2;
  v213 = a4;
  v222 = a3;
  v400 = *MEMORY[0x277D85DE8];
  v249 = *(a1 + 16);
  if (!v249)
  {
    goto LABEL_47;
  }

  v4 = 0;
  p_aBlock = &aBlock;
  v258 = a1 + 32;
  v6 = MEMORY[0x277D84F98];
  while (2)
  {
    v276 = v4 + 1;
    sub_21AEEC9C0(*(v258 + 8 * v4), v395);
    v7 = v395[1];
    v285 = v395[0];
    v8 = v397;
    v9 = v398;
    v335 = v399;
    v267 = v396;
    v10 = (v396 + 64) >> 6;

    v11 = v7;
    for (i = v7; ; v11 = i)
    {
      v12 = v9;
      v13 = v8;
      if (!v9)
      {
        v14 = v8;
        while (1)
        {
          v13 = &v14->isa + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v13 >= v10)
          {
            v24 = 0;
            v20 = 0;
            v19 = 0;
            v21 = 0;
            v22 = 0uLL;
            v23 = 0uLL;
            goto LABEL_11;
          }

          v12 = *(v11 + 8 * v13);
          v14 = (v14 + 1);
          if (v12)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

LABEL_9:
      v15 = v10;
      v16 = v6;
      v17 = __clz(__rbit64(v12)) | (v13 << 6);
      v18 = (*(v285 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      sub_21AEA784C(*(v285 + 56) + 32 * v17, v389);
      if (__OFADD__(v335, 1))
      {
        __break(1u);
        goto LABEL_72;
      }

      v303 = v389[1];
      v320 = v389[0];
      v21 = (v12 - 1) & v12;

      v23 = v303;
      v22 = v320;
      v24 = v335++;
      v14 = v13;
      v10 = v15;
      p_aBlock = &aBlock;
LABEL_11:
      aBlock = v24;
      v391 = v20;
      v392 = v19;
      v393 = v22;
      v394 = v23;
      if (!v19)
      {
        break;
      }

      sub_21AEAF9F4(&v393, &v385);
      v388[0] = v20;
      v388[1] = v19;
      v25 = sub_21AEAF9F4(&v385, v389);
      sub_21AEB39E0(v25, v26, v27, v28, v29, v30, v31, v32, v213, v222, v231, v240, v249, v258, v267, v276, v285, i, v303, *(&v303 + 1), v320, *(&v320 + 1), v335, v344, v353, v362, v371, v380, *(&v380 + 1), v381, v382, v383, v384, v385, *(&v385 + 1), v386, v387, v388[0]);
      if (!v6[2])
      {

LABEL_29:
        v113 = sub_21AEB3A54(v35, v36, v37, v38, v39, v40, v41, v42, v214, v223, v232, v241, v250, v259, v268, v277, v286, v295, v304, v312, v321, v327, v336, v345, v354, v363, v372, v380);
        sub_21AEB39E0(v113, v114, v115, v116, v117, v118, v119, v120, v220, v229, v238, v247, v256, v265, v274, v283, v292, v301, v310, v318, v326, v333, v342, v351, v360, v369, v378, v380, *(&v380 + 1), v381, v382, v383, v384, v385, *(&v385 + 1), v386, v387, v388[0]);

        sub_21AEAC884();
        v62 = v121;
        v122 = *(v121 + 16);
        if (v122 >= *(v121 + 24) >> 1)
        {
          sub_21AEB39F8();
          v62 = v147;
        }

        *(v62 + 16) = v122 + 1;
        v123 = sub_21AEAF9F4(&v380, (v62 + 32 * v122 + 32));
        sub_21AEB39E0(v123, v124, v125, v126, v127, v128, v129, v130, v221, v230, v239, v248, v257, v266, v275, v284, v293, v302, v311, v319, v21, v334, v343, v352, v361, v370, v379, v380, *(&v380 + 1), v381, v382, v383, v384, v385, *(&v385 + 1), v386, v387, v388[0]);
        v88 = v377;
        swift_isUniquelyReferenced_nonNull_native();
        v131 = sub_21AEB39A4();
        sub_21AEB3A80(v131, v132);
        if (v93)
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          sub_21AEAFA7C();
          v186 = sub_21AF096CC();
          sub_21AEA7958(v186, qword_2812288F8);
          v187 = v246;
          v188 = v88;
          v189 = sub_21AF096AC();
          v190 = sub_21AF09A9C();

          if (os_log_type_enabled(v189, v190))
          {
            v191 = sub_21AEB3B54();
            v192 = swift_slowAlloc();
            aBlock = sub_21AEB39C8();
            *v191 = *(v21 + 1392);
            v193 = [v187 p_aBlock[117]];
            v194 = [v193 bundleIdentifier];

            v195 = sub_21AF097CC();
            v197 = v196;

            v198 = sub_21AECFFFC(v195, v197, &aBlock);

            *(v191 + 4) = v198;
            *(v191 + 12) = 2112;
            v199 = v88;
            v200 = _swift_stdlib_bridgeErrorToNSError();
            *(v191 + 14) = v200;
            *v192 = v200;
            _os_log_impl(&dword_21AE94000, v189, v190, "Error [bundle: %s] while translating feature dictionaries: %@", v191, 0x16u);
            sub_21AEA7990(v192, &qword_27CD3DF30, &qword_21AF0C0F0);
            sub_21AEAFB90();
            sub_21AEB3B38();
            sub_21AEAFB90();
            sub_21AEAFB90();
          }

          else
          {
          }

          v204 = dispatch_group_create();
          v205 = objc_allocWithZone(AMLFeaturesDonationStatus);
          v161 = sub_21AEB3630(1701736270, 0xE400000000000000, 1701736270, 0xE400000000000000, 1701736270, 0xE400000000000000, v204);
          goto LABEL_67;
        }

        v21 = v133;
        p_aBlock = v134;
        sub_21AEA7574(&qword_27CD3D848, &qword_21AF0C5B8);
        v135 = sub_21AEB3AF8();
        if (v135)
        {
          v135 = sub_21AED0594();
          if ((p_aBlock & 1) != (v136 & 1))
          {
LABEL_77:
            result = sub_21AF09E7C();
            __break(1u);
            return result;
          }

          v21 = v135;
        }

        if (p_aBlock)
        {
          goto LABEL_36;
        }

        sub_21AEB3924(v135, v136, v137, v138, v139, v140, v141, v142, v219, v228, v237, v246, v255, v264, v273, v282, v291, v300, v309, v317, v325, v332, v341, v350);
        v103 = sub_21AEA7990(v145, &qword_27CD3D840, &qword_21AF0C5B0);
        v146 = v6[2];
        v93 = __OFADD__(v146, 1);
        v112 = v146 + 1;
        if (v93)
        {
          goto LABEL_74;
        }

LABEL_38:
        v6[2] = v112;
LABEL_39:
        sub_21AEB3A54(v103, v104, v105, v106, v107, v108, v109, v110, v219, v228, v237, v246, v255, v264, v273, v282, v291, v300, v309, v317, v325, v332, v341, v350, v359, v368, v377, v380);
        p_aBlock = &aBlock;
        v21 = v320;
        goto LABEL_43;
      }

      sub_21AED0594();
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        goto LABEL_29;
      }

      v43 = sub_21AEB3A54(v35, v36, v37, v38, v39, v40, v41, v42, v214, v223, v232, v241, v250, v259, v268, v277, v286, v295, v304, v312, v321, v327, v336, v345, v354, v363, v372, v380);
      sub_21AEB39E0(v43, v44, v45, v46, v47, v48, v49, v50, v215, v224, v233, v242, v251, v260, v269, v278, v287, v296, v305, v313, v322, v328, v337, v346, v355, v364, v373, v380, *(&v380 + 1), v381, v382, v383, v384, v385, *(&v385 + 1), v386, v387, v388[0]);
      if (v6[2])
      {
        v51 = sub_21AED0594();
        v53 = v52;

        if (v53)
        {
          v62 = *(v6[7] + 8 * v51);

          v71 = sub_21AEB3A54(v63, v64, v65, v66, v67, v68, v69, v70, v216, v225, v234, v243, v252, v261, v270, v279, v288, v297, v306, v314, v323, v329, v338, v347, v356, v365, v374, v380);
          sub_21AEB39E0(v71, v72, v73, v74, v75, v76, v77, v78, v217, v226, v235, v244, v253, v262, v271, v280, v289, v298, v307, v315, v324, v330, v339, v348, v357, v366, v375, v380, *(&v380 + 1), v381, v382, v383, v384, v385, *(&v385 + 1), v386, v387, v388[0]);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v148 = *(v62 + 16);
            sub_21AEAC884();
            v62 = v149;
          }

          v79 = *(v62 + 16);
          if (v79 >= *(v62 + 24) >> 1)
          {
            sub_21AEB39F8();
            v62 = v150;
          }

          *(v62 + 16) = v79 + 1;
          v80 = sub_21AEAF9F4(&v380, (v62 + 32 * v79 + 32));
          sub_21AEB39E0(v80, v81, v82, v83, v84, v85, v86, v87, v218, v227, v236, v245, v254, v263, v272, v281, v290, v299, v308, v316, v21, v331, v340, v349, v358, v367, v376, v380, *(&v380 + 1), v381, v382, v383, v384, v385, *(&v385 + 1), v386, v387, v388[0]);
          v88 = v377;
          swift_isUniquelyReferenced_nonNull_native();
          v89 = sub_21AEB39A4();
          sub_21AEB3A80(v89, v90);
          if (v93)
          {
            goto LABEL_75;
          }

          v21 = v91;
          p_aBlock = v92;
          sub_21AEA7574(&qword_27CD3D848, &qword_21AF0C5B8);
          v94 = sub_21AEB3AF8();
          if (v94)
          {
            v94 = sub_21AED0594();
            if ((p_aBlock & 1) != (v95 & 1))
            {
              goto LABEL_77;
            }

            v21 = v94;
          }

          if ((p_aBlock & 1) == 0)
          {
            sub_21AEB3924(v94, v95, v96, v97, v98, v99, v100, v101, v219, v228, v237, v246, v255, v264, v273, v282, v291, v300, v309, v317, v325, v332, v341, v350);
            v103 = sub_21AEA7990(v102, &qword_27CD3D840, &qword_21AF0C5B0);
            v111 = v6[2];
            v93 = __OFADD__(v111, 1);
            v112 = v111 + 1;
            if (v93)
            {
              goto LABEL_76;
            }

            goto LABEL_38;
          }

LABEL_36:

          v6 = v350;
          v143 = *(v350 + 56);
          v144 = *(v143 + 8 * v21);
          *(v143 + 8 * v21) = v62;

          v103 = sub_21AEA7990(v388, &qword_27CD3D840, &qword_21AF0C5B0);
          goto LABEL_39;
        }
      }

      else
      {
      }

      sub_21AEB3A54(v54, v55, v56, v57, v58, v59, v60, v61, v216, v225, v234, v243, v252, v261, v270, v279, v288, v297, v306, v314, v323, v329, v338, v347, v356, v365, v374, v380);
      sub_21AEA7990(v388, &qword_27CD3D840, &qword_21AF0C5B0);
LABEL_43:
      v8 = v14;
      v9 = v21;
    }

    sub_21AE96764();
    v4 = v276;
    if (v276 != v249)
    {
      continue;
    }

    break;
  }

LABEL_47:
  v151 = objc_opt_self();

  sub_21AEA7574(&qword_27CD3D838, &qword_21AF0C5A8);
  v152 = sub_21AF0971C();

  v16 = [v151 isValidJSONObject_];

  if (!v16)
  {
    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C();
    }

    v166 = sub_21AF096CC();
    sub_21AEA7958(v166, qword_2812288F8);
    v8 = sub_21AF096AC();
    v16 = sub_21AF09A9C();
    if (os_log_type_enabled(v8, v16))
    {
      v167 = swift_slowAlloc();
      aBlock = sub_21AEB39C8();
      *v167 = 136315138;

      v168 = sub_21AF0973C();
      v170 = v169;

      v171 = sub_21AECFFFC(v168, v170, &aBlock);

      *(v167 + 4) = v171;
      _os_log_impl(&dword_21AE94000, v8, v16, "BatchDictionary was not valid: %s", v167, 0xCu);
      sub_21AEB3B38();
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    goto LABEL_59;
  }

  v153 = sub_21AF0971C();

  aBlock = 0;
  v154 = [v151 dataWithJSONObject:v153 options:0 error:&aBlock];

  v155 = aBlock;
  if (!v154)
  {
    v172 = v155;
    v9 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C();
    }

    v173 = sub_21AF096CC();
    sub_21AEA7958(v173, qword_2812288F8);
    v174 = v240;
    v175 = v9;
    v8 = sub_21AF096AC();
    v16 = sub_21AF09A9C();

    if (!os_log_type_enabled(v8, v16))
    {
LABEL_72:

LABEL_60:
      v185 = objc_allocWithZone(MEMORY[0x277CBFEB0]);

      v201 = sub_21AEB3540();
      v202 = [objc_allocWithZone(AMLArrayBatchProvider) initWithMLArrayBatchProvider_];
      if (v222)
      {
        *(&v393 + 1) = v222;
        *&v394 = v213;
        aBlock = MEMORY[0x277D85DD0];
        v391 = 1107296256;
        v392 = sub_21AEB2D0C;
        *&v393 = &unk_282C81340;
        v203 = _Block_copy(&aBlock);
        v16 = v394;
      }

      else
      {
        v203 = 0;
      }

      v210 = [v240 donateFeaturesBatch:v202 metadata:v231 completionBlock:{v203, v213}];
      v211 = sub_21AEB3ACC();
      _Block_release(v211);

      v212 = *MEMORY[0x277D85DE8];
      return v16;
    }

    sub_21AEB3B54();
    v176 = sub_21AEB3A1C();
    aBlock = sub_21AEB39C8();
    *v9 = 136315394;
    v177 = [v174 featuresConfiguration];
    v178 = [v177 bundleIdentifier];

    v179 = sub_21AF097CC();
    v181 = v180;

    v182 = sub_21AECFFFC(v179, v181, &aBlock);

    *(v9 + 1) = v182;
    *(v9 + 6) = 2112;
    v183 = v9;
    v184 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v184;
    *v176 = v184;
    _os_log_impl(&dword_21AE94000, v8, v16, "Encountered error from bundle: %s while serializing batch features donation: %@", v9, 0x16u);
    sub_21AEA7990(v176, &qword_27CD3DF30, &qword_21AF0C0F0);
    sub_21AEAFB90();
    sub_21AEB3B38();
    sub_21AEAFB90();
    sub_21AEAFB90();

LABEL_59:
    goto LABEL_60;
  }

  sub_21AF0932C();

  v156 = sub_21AEB3974();
  if (MEMORY[0x21CEE45A0](v156) < 1)
  {
    v208 = sub_21AEB3974();
    sub_21AEA7900(v208, v209);
    goto LABEL_60;
  }

  v157 = sub_21AEB3974();
  sub_21AEA78A8(v157, v158);
  v159 = sub_21AEB3974();
  v161 = sub_21AEB0D94(v159, v160, v231);
  v162 = sub_21AEB3974();
  sub_21AEA7900(v162, v163);
  v164 = sub_21AEB3974();
  sub_21AEA7900(v164, v165);
LABEL_67:

  v206 = *MEMORY[0x277D85DE8];
  return v161;
}

uint64_t sub_21AEB2D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

char *sub_21AEB2E88(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v7 = v5;
  v38[1] = *MEMORY[0x277D85DE8];
  v38[0] = 0;
  v9 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:0 error:v38];
  v10 = v38[0];
  if (v9)
  {
    sub_21AF0932C();

    v11 = sub_21AEB3AB4();
    if (MEMORY[0x21CEE45A0](v11) <= 0)
    {
      v12 = sub_21AEB3AB4();
      sub_21AEA7900(v12, v13);
    }
  }

  else
  {
    v14 = v10;
    v15 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C();
    }

    v16 = sub_21AF096CC();
    sub_21AEA7958(v16, qword_2812288F8);
    v17 = v7;
    v18 = v15;
    v19 = sub_21AF096AC();
    v20 = sub_21AF09A9C();

    if (os_log_type_enabled(v19, v20))
    {
      sub_21AEB3B54();
      v21 = sub_21AEB3A1C();
      v37 = sub_21AEB39C8();
      v38[0] = v37;
      *v15 = 136315394;
      v22 = [v17 featuresConfiguration];
      format = a5;
      v23 = [v22 bundleIdentifier];

      v24 = sub_21AF097CC();
      v26 = v25;

      sub_21AECFFFC(v24, v26, v38);
      sub_21AEB3ACC();

      *(v15 + 1) = v23;
      *(v15 + 6) = 2112;
      v27 = v15;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v28;
      *v21 = v28;
      _os_log_impl(&dword_21AE94000, v19, v20, format, v15, 0x16u);
      sub_21AEA7990(v21, &qword_27CD3DF30, &qword_21AF0C0F0);
      sub_21AEAFB90();
      sub_21AEA79F0(v37);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    else
    {
    }
  }

  v29 = sub_21AEB3AB4();
  v31 = sub_21AEB0D94(v29, v30, a2);
  v32 = sub_21AEB3AB4();
  sub_21AEB37D4(v32, v33);
  v34 = *MEMORY[0x277D85DE8];
  return v31;
}

unint64_t AMLFeaturesDonation.description.getter()
{
  sub_21AF09C5C();

  v1 = [v0 featuresConfiguration];
  v2 = [v1 description];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v3 = sub_21AEB3AA8();
  MEMORY[0x21CEE4A70](v3);

  return 0xD00000000000002ELL;
}

id sub_21AEB33BC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21AF097BC();

  return v5;
}

uint64_t AMLFeaturesDonationMetadata.description.getter()
{
  v1 = v0;
  sub_21AF09C5C();
  MEMORY[0x21CEE4A70](0xD00000000000002BLL, 0x800000021AF0F160);
  v2 = [v0 sessionId];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v3 = sub_21AEB3AA8();
  MEMORY[0x21CEE4A70](v3);

  MEMORY[0x21CEE4A70](0x646174654D09090ALL, 0xED0000203A617461);
  sub_21AEB3760(v1);
  sub_21AEA7574(&unk_27CD3D7E8, &qword_21AF0C590);
  v4 = sub_21AF097DC();
  MEMORY[0x21CEE4A70](v4);

  return 0;
}

id sub_21AEB3540()
{
  v6[1] = *MEMORY[0x277D85DE8];
  sub_21AEA7574(&qword_27CD3D838, &qword_21AF0C5A8);
  sub_21AF0971C();
  sub_21AEB3ACC();

  v6[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v6];

  v3 = v6[0];
  if (!v2)
  {
    sub_21AEB3ACC();
    sub_21AF0927C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

id sub_21AEB3630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_21AF097BC();

  v10 = sub_21AF097BC();

  v11 = sub_21AF097BC();

  v12 = [v7 initWithMetadataDonationId:v9 featuresDonationId:v10 configurationDonationId:v11 group:a7];

  return v12;
}

void sub_21AEB371C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_21AEB3760(void *a1)
{
  v1 = [a1 metadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21AF0972C();

  return v3;
}

uint64_t sub_21AEB37D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21AEA7900(a1, a2);
  }

  return a1;
}

unint64_t sub_21AEB37E8()
{
  result = qword_281228820;
  if (!qword_281228820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228820);
  }

  return result;
}

void sub_21AEB383C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

uint64_t sub_21AEB3880(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21AEB3898(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&qword_27CD3D840, &qword_21AF0C5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AEB3910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3 + 8);
  *v4 = a1;
  v4[1] = a2;
}

void sub_21AEB3924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(a24 + 8 * (v27 >> 6) + 64) |= 1 << v27;
  v28 = (*(a24 + 48) + 16 * v27);
  *v28 = v26;
  v28[1] = v24;
  *(*(a24 + 56) + 8 * v27) = v25;
}

uint64_t sub_21AEB3960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + a2);
  *(v2 + a2) = a1;
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_21AEB39A4()
{

  return sub_21AED0594();
}

uint64_t sub_21AEB39C8()
{

  return swift_slowAlloc();
}

uint64_t sub_21AEB39E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  return sub_21AEB3898(&a38, &a26);
}

void sub_21AEB39F8()
{

  sub_21AEAC884();
}

uint64_t sub_21AEB3A1C()
{

  return swift_slowAlloc();
}

uint64_t sub_21AEB3A38@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_21AEB3A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{

  return sub_21AEA79F0(&a28);
}

id sub_21AEB3AD8()
{
  v2 = *(v0 - 312);

  return [v2 sessionId];
}

uint64_t sub_21AEB3AF8()
{

  return sub_21AF09D0C();
}

id sub_21AEB3B18()
{
  v2 = *(v0 - 296);

  return [v2 featuresConfiguration];
}

uint64_t sub_21AEB3B54()
{

  return swift_slowAlloc();
}

uint64_t sub_21AEB3B6C()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_2812288E0);
  sub_21AEA7958(v0, qword_2812288E0);
  return sub_21AF096BC();
}

void sub_21AEB3BEC()
{
  sub_21AEC7AE8();
  sub_21AEC7874();
  v0 = sub_21AF094EC();
  v1 = sub_21AEA7C90(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_21AEC7504();
  v64 = v6;
  sub_21AEC76CC();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v63 - v9;
  MEMORY[0x28223BE20](v8);
  sub_21AEC774C();
  v67 = v11;
  sub_21AEAFBDC();
  v12 = sub_21AF0952C();
  v13 = sub_21AEA7C90(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_21AEC7554();
  v20 = v19 - v18;
  v21 = (sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618) - 8);
  v22 = *(*v21 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v23);
  v25 = &v63 - v24;
  sub_21AF0954C();
  (*(v15 + 16))(v25, v20, v12);
  v26 = v21[11];
  sub_21AEC5A18();
  sub_21AEC7BDC();
  sub_21AF099FC();
  (*(v15 + 8))(v20, v12);
  v68 = (v3 + 16);
  v66 = (v3 + 32);
  v69 = MEMORY[0x277D84F90];
  v65 = (v3 + 8);
  while (1)
  {
    sub_21AEC7BDC();
    sub_21AF09A1C();
    if (*&v25[v26] == v72[0])
    {
      break;
    }

    v27 = sub_21AF09A6C();
    v28 = v67;
    v29 = *v68;
    (*v68)(v67);
    v27(v72, 0);
    sub_21AF09A2C();
    (*v66)(v10, v28, v0);
    sub_21AEC7530();
    sub_21AEC7740();
    sub_21AF094FC();
    if (!v72[3])
    {
      sub_21AEC6E68(v72, &qword_27CD3D330, &unk_21AF0C420);
LABEL_13:
      v46 = v64;
      if (qword_27CD3D270 != -1)
      {
        sub_21AEC74B4();
        swift_once();
      }

      v47 = sub_21AF096CC();
      sub_21AEA7958(v47, qword_2812288E0);
      v29(v46, v10, v0);
      v48 = sub_21AF096AC();
      v49 = v0;
      v50 = sub_21AF09A9C();
      if (os_log_type_enabled(v48, v50))
      {
        sub_21AEC76E4();
        v51 = swift_slowAlloc();
        sub_21AEC76D8();
        v68 = swift_slowAlloc();
        v70 = v68;
        *v51 = 136315138;
        sub_21AEC7530();
        sub_21AEC7740();
        sub_21AF094FC();
        sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
        sub_21AEC7758();
        sub_21AF097DC();
        v53 = v52;
        v54 = v49;
        v55 = *v65;
        v56 = v46;
        v57 = v54;
        (*v65)(v56);
        v58 = sub_21AEC7A08();
        v60 = sub_21AECFFFC(v58, v53, v59);

        *(v51 + 4) = v60;
        _os_log_impl(&dword_21AE94000, v48, v50, "session is malformed, val: %s", v51, 0xCu);
        sub_21AEA79F0(v68);
        v61 = sub_21AEC75E8();
        MEMORY[0x21CEE5A20](v61);
        sub_21AEC765C();
        MEMORY[0x21CEE5A20]();

        (v55)(v10, v57);
      }

      else
      {

        v62 = *v65;
        (*v65)(v46, v49);
        (v62)(v10, v49);
      }

      break;
    }

    sub_21AEC78F8();
    v30 = swift_dynamicCast();
    if ((v30 & 1) == 0)
    {
      goto LABEL_13;
    }

    v32 = v70;
    v31 = v71;
    v72[0] = v70;
    v72[1] = v71;
    MEMORY[0x28223BE20](v30);
    sub_21AEC7544();
    *(v33 - 16) = v72;
    if (sub_21AEF6524(sub_21AEACF38, v34, v69))
    {
      v35 = sub_21AEC7D34();
      v36(v35);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = *(v69 + 16);
        sub_21AEAD04C();
        sub_21AEAC554();
        v69 = v44;
      }

      v38 = *(v69 + 16);
      v37 = *(v69 + 24);
      v63 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_21AEAD084(v37);
        sub_21AEAC554();
        v69 = v45;
      }

      v39 = sub_21AEC7D34();
      v40(v39);
      v41 = v69;
      *(v69 + 16) = v63;
      v42 = v41 + 16 * v38;
      *(v42 + 32) = v32;
      *(v42 + 40) = v31;
    }
  }

  sub_21AEC6E68(v25, &qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC79F0();
}

void sub_21AEB41A0()
{
  sub_21AEC7AE8();
  sub_21AEC7874();
  v0 = sub_21AF094EC();
  v1 = sub_21AEA7C90(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_21AEC7554();
  v8 = v7 - v6;
  v9 = sub_21AF0952C();
  v10 = sub_21AEA7C90(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_21AEC7554();
  v17 = v16 - v15;
  v18 = (sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618) - 8);
  v19 = *(*v18 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  v37 = MEMORY[0x277D84FA0];
  sub_21AF0954C();
  v23 = *(v12 + 16);
  v24 = sub_21AEC7924();
  v25(v24);
  v26 = v18[11];
  sub_21AEC5A18();
  sub_21AF099FC();
  (*(v12 + 8))(v17, v9);
  v27 = (v3 + 16);
  v28 = (v3 + 8);
  while (1)
  {
    sub_21AF09A1C();
    v29 = *&v22[v26];
    sub_21AEC79A4();
    if (v30)
    {
      sub_21AEC6E68(v22, &qword_27CD3D850, &qword_21AF0C618);
      sub_21AEEF554(v37);
      sub_21AEC79F0();
      return;
    }

    v31 = sub_21AF09A6C();
    (*v27)(v8);
    v32 = sub_21AEC7898();
    v31(v32);
    sub_21AF09A2C();
    sub_21AEC7564();
    sub_21AF094FC();
    (*v28)(v8, v0);
    if (!v35)
    {
      break;
    }

    sub_21AEAF9F4(&v34, &v36);
    swift_dynamicCast();
    sub_21AEF65D4();
  }

  __break(1u);
}

void sub_21AEB4470()
{
  sub_21AEC7AE8();
  v74 = v3;
  sub_21AEC7874();
  v81 = sub_21AF094EC();
  v4 = sub_21AEA7C90(v81);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_21AEAD074();
  sub_21AEC7718();
  MEMORY[0x28223BE20](v7);
  sub_21AEC7C0C();
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_21AEC7E70();
  v10 = sub_21AEA7C90(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_21AEC7554();
  sub_21AEC7AB0();
  v13 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  v14 = sub_21AEC7854(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_21AEC7504();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v17);
  sub_21AEC7B68();
  sub_21AF0954C();
  v18 = sub_21AEC77D0();
  v19(v18);
  v76 = v13;
  v20 = *(v13 + 36);
  sub_21AEC5A18();
  sub_21AEC77C4();
  sub_21AF099FC();
  v21 = sub_21AEC79B0();
  v22(v21);
  v23 = MEMORY[0x277D84F90];
  sub_21AEC7DA4();
  while (1)
  {
    sub_21AEC77C4();
    sub_21AF09A1C();
    v24 = *&v0[v20];
    sub_21AEC79A4();
    if (v25)
    {
      break;
    }

    sub_21AEC7CA4();
    v26 = sub_21AEC793C();
    v27(v26);
    (v0)(&v85, 0);
    sub_21AEC7E30();
    sub_21AEC7674();
    sub_21AF094FC();
    sub_21AEC7D98();
    v28 = sub_21AEB3AB4();
    v29(v28);
    if (!v84)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      __break(1u);
LABEL_38:

      __break(1u);
      return;
    }

    sub_21AEC7608();
    swift_dynamicCast();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = *(v23 + 16);
      v32 = sub_21AEAD04C();
      sub_21AEAC470(v32, v33, v34, v23);
      v23 = v35;
    }

    i = *(v23 + 16);
    v30 = *(v23 + 24);
    if (i >= v30 >> 1)
    {
      v36 = sub_21AEAD084(v30);
      sub_21AEAC470(v36, i + 1, 1, v23);
      v23 = v37;
    }

    *(v23 + 16) = i + 1;
    *(v23 + 8 * i + 32) = v82;
  }

  sub_21AEC6E68(v0, &qword_27CD3D850, &qword_21AF0C618);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_35:
    sub_21AED10F8(v23);
    v23 = v73;
  }

  v38 = sub_21AEC7904();
  sub_21AEC5C60(v38);
  v78 = v1;
  v1 = v77;
  sub_21AF0954C();
  v39 = sub_21AEC781C();
  v40(v39);
  v79 = *(v76 + 36);
  sub_21AEC77C4();
  sub_21AF099FC();
  v41 = sub_21AEB3AB4();
  v75(v41);
  v42 = i;
  for (i = MEMORY[0x277D84F98]; ; i = v85)
  {
    sub_21AEC77C4();
    sub_21AF09A1C();
    v43 = *(v42 + v79);
    sub_21AEC79A4();
    if (v25)
    {
      break;
    }

    sub_21AEC7ABC();
    v44 = sub_21AEC78D8();
    v45(v44);
    v46 = sub_21AEC7898();
    v42(v46);
    sub_21AEC7C64();
    v47 = sub_21AEC7A38();
    v48(v47);
    sub_21AEC7674();
    sub_21AF094FC();
    if (!v84)
    {
      goto LABEL_37;
    }

    sub_21AEC7608();
    swift_dynamicCast();
    sub_21AEC74C8();
    sub_21AF094FC();
    sub_21AEC7608();
    swift_dynamicCast();
    v49 = 0;
    v1 = v83;
    while (*(v23 + 16) != v49)
    {
      if (*(v20 + 8 * v49) == v82)
      {
        goto LABEL_18;
      }

      ++v49;
    }

    v49 = 1;
LABEL_18:
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v85 = i;
    sub_21AEC7924();
    sub_21AF05134();

    sub_21AEC7D98();
    v50(v80, v81);
  }

  sub_21AEC6E68(v42, &qword_27CD3D850, &qword_21AF0C618);
  v85 = sub_21AEFF1F8(i);
  v1 = v78;
  sub_21AEC5AF0(&v85);
  if (v78)
  {
    goto LABEL_38;
  }

  v51 = v85;
  v52 = v85[2];
  if (v52)
  {
    v53 = v85 + 5;
    v54 = MEMORY[0x277D84F90];
    v55 = v74;
    do
    {
      v57 = *(v53 - 1);
      v56 = *v53;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = *(v54 + 16);
        sub_21AEAD04C();
        sub_21AEAC554();
        v54 = v62;
      }

      v59 = *(v54 + 16);
      v58 = *(v54 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_21AEAD084(v58);
        sub_21AEAC554();
        v54 = v63;
      }

      *(v54 + 16) = v59 + 1;
      v60 = v54 + 16 * v59;
      *(v60 + 32) = v57;
      *(v60 + 40) = v56;
      v53 += 3;
      --v52;
    }

    while (v52);
  }

  else
  {
    v55 = v74;
  }

  if (v55)
  {
    sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
    v64 = sub_21AEC7C30();
    sub_21AEC7A14(v64, xmmword_21AF0C5D0);
    v85 = 0;
    v86 = v65;
    sub_21AF09C5C();

    sub_21AEC7BD0();
    v85 = 0xD00000000000001BLL;
    v86 = v66;
    v67 = sub_21AEA7574(&qword_27CD3D860, &unk_21AF0C620);
    v68 = MEMORY[0x21CEE4B10](v51, v67);
    v70 = v69;

    MEMORY[0x21CEE4A70](v68, v70);

    v71 = v85;
    v72 = v86;
    v64[3].n128_u64[1] = MEMORY[0x277D837D0];
    v64[2].n128_u64[0] = v71;
    v64[2].n128_u64[1] = v72;
    sub_21AEC76AC();
  }

  else
  {
  }

  sub_21AEC79F0();
}