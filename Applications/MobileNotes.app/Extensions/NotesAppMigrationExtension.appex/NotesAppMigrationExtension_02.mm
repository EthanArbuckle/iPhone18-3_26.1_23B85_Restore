id sub_10002C49C()
{
  v1 = v0;
  sub_100005740(&qword_1000A5C88, &qword_10008B890);
  v2 = *v0;
  v3 = sub_100085728();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_10002C608()
{
  v1 = v0;
  v34 = sub_1000847C8();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005740(&qword_1000A5CA8, &qword_10008CD30);
  v4 = *v0;
  v5 = sub_100085728();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = swift_errorRetain();
        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10002C888(uint64_t a1)
{
  v3 = sub_100005740(&qword_1000A5C68, &qword_10008B878);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for MarkdownStyle(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = sub_1000058F0(v6, &qword_1000A5C68, &qword_10008B878))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_100032EB8(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for MarkdownStyle);
      sub_10002E130(v12, v6);
      sub_100032F20(v12, type metadata accessor for MarkdownStyle);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_10002CA90(uint64_t a1, void *a2)
{
  v161 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  v4 = *(*(v161 - 8) + 64);
  v5 = __chkstk_darwin(v161);
  v7 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v153 = (&v128 - v8);
  v9 = sub_1000847C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v138 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v130 = &v128 - v15;
  __chkstk_darwin(v14);
  v136 = &v128 - v16;
  v17 = sub_100005740(&qword_1000A5C68, &qword_10008B878);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v140 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v128 - v21;
  v149 = type metadata accessor for MarkdownStyle(0);
  v23 = *(v149 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v149);
  v26 = __chkstk_darwin(v25);
  v159 = &v128 - v27;
  v28 = __chkstk_darwin(v26);
  v148 = &v128 - v29;
  v30 = __chkstk_darwin(v28);
  v158 = &v128 - v31;
  v32 = __chkstk_darwin(v30);
  v33 = __chkstk_darwin(v32);
  v160 = &v128 - v34;
  v35 = __chkstk_darwin(v33);
  v134 = &v128 - v36;
  __chkstk_darwin(v35);
  v154 = &v128 - v39;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v135 = v38;
  v132 = v22;
  v155 = v37;
  v164 = v9;
  v129 = 0;
  v41 = a1 + 56;
  v40 = *(a1 + 56);
  v42 = -1 << *(a1 + 32);
  v146 = ~v42;
  if (-v42 < 64)
  {
    v43 = ~(-1 << -v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & v40;
  v141 = (63 - v42) >> 6;
  v145 = (v23 + 56);
  v144 = (v23 + 48);
  v166 = (v10 + 48);
  v139 = (v10 + 32);
  v156 = (v10 + 8);
  v162 = a2 + 7;
  v147 = a1;

  v46 = 0;
  v47 = v158;
  v150 = a1 + 56;
  for (i = v23; ; v23 = i)
  {
    v48 = v44;
    v49 = v46;
    v165 = v44;
    if (v44)
    {
LABEL_15:
      v53 = (v48 - 1) & v48;
      v54 = v147;
      v55 = *(v147 + 48) + *(v23 + 72) * (__clz(__rbit64(v48)) | (v49 << 6));
      v56 = v132;
      sub_100032EB8(v55, v132, type metadata accessor for MarkdownStyle);
      v57 = 0;
      v51 = v49;
    }

    else
    {
      v50 = v141 <= v46 + 1 ? v46 + 1 : v141;
      v51 = v50 - 1;
      v52 = v46;
      while (1)
      {
        v49 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_123;
        }

        if (v49 >= v141)
        {
          break;
        }

        v48 = *(v41 + 8 * v49);
        ++v52;
        if (v48)
        {
          goto LABEL_15;
        }
      }

      v53 = 0;
      v57 = 1;
      v54 = v147;
      v56 = v132;
    }

    v58 = v149;
    v143 = *v145;
    v143(v56, v57, 1, v149);
    v167 = v54;
    v168 = v41;
    v169 = v146;
    v170 = v51;
    v157 = v53;
    v171 = v53;
    v142 = *v144;
    if (v142(v56, 1, v58) == 1)
    {
      sub_1000058F0(v56, &qword_1000A5C68, &qword_10008B878);
      goto LABEL_118;
    }

    v59 = v154;
    sub_100032CA4(v56, v154, type metadata accessor for MarkdownStyle);
    v60 = a2[5];
    sub_100085A08();
    v61 = v59;
    v62 = v134;
    sub_100032EB8(v61, v134, type metadata accessor for MarkdownStyle);
    v63 = v164;
    v165 = *v166;
    v64 = v165(v62, 6, v164);
    if (v64 <= 2)
    {
      if (!v64)
      {
        v66 = v136;
        (*v139)(v136, v134, v63);
        sub_100085A18(6uLL);
        sub_100031408(&qword_1000A5C70, &type metadata accessor for URL);
        sub_100085028();
        v67 = v66;
        v47 = v158;
        (*v156)(v67, v63);
        goto LABEL_30;
      }

      v65 = v64 != 1;
    }

    else if (v64 > 4)
    {
      v65 = v64 == 5 ? 4 : 5;
    }

    else
    {
      v65 = v64 == 3 ? 2 : 3;
    }

    sub_100085A18(v65);
LABEL_30:
    v68 = sub_100085A38();
    v69 = -1 << *(a2 + 32);
    v44 = v68 & ~v69;
    v70 = v44 >> 6;
    v23 = 1 << v44;
    if (((1 << v44) & v162[v44 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_100032F20(v154, type metadata accessor for MarkdownStyle);
    v46 = v51;
    v44 = v157;
  }

  v152 = ~v69;
  v163 = *(i + 72);
  while (1)
  {
    v151 = v70;
    v71 = v160;
    sub_100032EB8(a2[6] + v163 * v44, v160, type metadata accessor for MarkdownStyle);
    v72 = *(v161 + 48);
    v73 = v71;
    v74 = v153;
    sub_100032EB8(v73, v153, type metadata accessor for MarkdownStyle);
    sub_100032EB8(v154, v74 + v72, type metadata accessor for MarkdownStyle);
    v75 = v165(v74, 6, v164);
    if (v75 > 2)
    {
      if (v75 > 4)
      {
        if (v75 == 5)
        {
          sub_100032F20(v160, type metadata accessor for MarkdownStyle);
          if (v165(v74 + v72, 6, v164) == 5)
          {
            goto LABEL_57;
          }
        }

        else
        {
          sub_100032F20(v160, type metadata accessor for MarkdownStyle);
          if (v165(v74 + v72, 6, v164) == 6)
          {
            goto LABEL_57;
          }
        }
      }

      else if (v75 == 3)
      {
        sub_100032F20(v160, type metadata accessor for MarkdownStyle);
        if (v165(v74 + v72, 6, v164) == 3)
        {
          goto LABEL_57;
        }
      }

      else
      {
        sub_100032F20(v160, type metadata accessor for MarkdownStyle);
        if (v165(v74 + v72, 6, v164) == 4)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_52;
    }

    if (v75)
    {
      break;
    }

    v77 = v135;
    sub_100032EB8(v74, v135, type metadata accessor for MarkdownStyle);
    v78 = v164;
    if (v165(v74 + v72, 6, v164))
    {
      sub_100032F20(v160, type metadata accessor for MarkdownStyle);
      (*v156)(v77, v78);
      v41 = v150;
LABEL_52:
      sub_1000058F0(v74, &qword_1000A5C60, &qword_10008B870);
      goto LABEL_53;
    }

    v79 = v74 + v72;
    v80 = v130;
    (*v139)(v130, v79, v78);
    v131 = sub_100084758();
    v81 = v80;
    v82 = *v156;
    (*v156)(v81, v78);
    sub_100032F20(v160, type metadata accessor for MarkdownStyle);
    v82(v77, v78);
    v74 = v153;
    v41 = v150;
    if (v131)
    {
      goto LABEL_57;
    }

    sub_100032F20(v153, type metadata accessor for MarkdownStyle);
LABEL_53:
    v44 = (v44 + 1) & v152;
    v70 = v44 >> 6;
    v23 = 1 << v44;
    if ((v162[v44 >> 6] & (1 << v44)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v75 == 1)
  {
    sub_100032F20(v160, type metadata accessor for MarkdownStyle);
    v76 = v165(v74 + v72, 6, v164) == 1;
  }

  else
  {
    sub_100032F20(v160, type metadata accessor for MarkdownStyle);
    v76 = v165(v74 + v72, 6, v164) == 2;
  }

  if (!v76)
  {
    goto LABEL_52;
  }

LABEL_57:
  sub_100032F20(v74, type metadata accessor for MarkdownStyle);
  v83 = sub_100032F20(v154, type metadata accessor for MarkdownStyle);
  v84 = *(a2 + 32);
  v134 = ((1 << v84) + 63) >> 6;
  v45 = 8 * v134;
  v85 = v140;
  if ((v84 & 0x3Fu) > 0xD)
  {
    goto LABEL_124;
  }

  while (2)
  {
    v135 = &v128;
    __chkstk_darwin(v83);
    v87 = &v128 - ((v86 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v87, v162, v86);
    v88 = *&v87[8 * v151] & ~v23;
    v153 = v87;
    *&v87[8 * v151] = v88;
    v89 = a2[2] - 1;
    v23 = v147;
    v44 = v164;
    v90 = v141;
    v91 = v157;
    v137 = v7;
LABEL_59:
    v152 = v89;
    while (2)
    {
      if (v91)
      {
        v92 = v51;
LABEL_71:
        v95 = __clz(__rbit64(v91));
        v96 = (v91 - 1) & v91;
        sub_100032EB8(*(v23 + 48) + (v95 | (v92 << 6)) * v163, v85, type metadata accessor for MarkdownStyle);
        v97 = 0;
LABEL_72:
        v98 = v149;
        v143(v85, v97, 1, v149);
        v167 = v23;
        v168 = v41;
        v169 = v146;
        v170 = v51;
        v171 = v96;
        if (v142(v85, 1, v98) == 1)
        {
          sub_1000058F0(v85, &qword_1000A5C68, &qword_10008B878);
          a2 = sub_10002F274(v153, v134, v152, a2);
          goto LABEL_118;
        }

        sub_100032CA4(v85, v47, type metadata accessor for MarkdownStyle);
        v99 = a2[5];
        sub_100085A08();
        v100 = v47;
        v101 = v148;
        sub_100032EB8(v100, v148, type metadata accessor for MarkdownStyle);
        v102 = v165(v101, 6, v44);
        v157 = v96;
        if (v102 <= 2)
        {
          v103 = v159;
          if (v102)
          {
            sub_100085A18(v102 != 1);
          }

          else
          {
            v105 = v136;
            (*v139)(v136, v148, v44);
            sub_100085A18(6uLL);
            sub_100031408(&qword_1000A5C70, &type metadata accessor for URL);
            sub_100085028();
            v103 = v159;
            (*v156)(v105, v44);
          }

          v47 = v158;
        }

        else
        {
          v103 = v159;
          if (v102 > 4)
          {
            v47 = v158;
            if (v102 == 5)
            {
              v104 = 4;
            }

            else
            {
              v104 = 5;
            }
          }

          else
          {
            v47 = v158;
            if (v102 == 3)
            {
              v104 = 2;
            }

            else
            {
              v104 = 3;
            }
          }

          sub_100085A18(v104);
        }

        v106 = sub_100085A38();
        v107 = -1 << *(a2 + 32);
        v108 = v106 & ~v107;
        v109 = v108 >> 6;
        v110 = 1 << v108;
        if (((1 << v108) & v162[v108 >> 6]) == 0)
        {
LABEL_60:
          sub_100032F20(v47, type metadata accessor for MarkdownStyle);
          v23 = v147;
          v44 = v164;
          v41 = v150;
          v90 = v141;
          v91 = v157;
          v85 = v140;
          continue;
        }

        v160 = ~v107;
LABEL_89:
        v111 = a2;
        sub_100032EB8(a2[6] + v108 * v163, v103, type metadata accessor for MarkdownStyle);
        v112 = *(v161 + 48);
        sub_100032EB8(v103, v7, type metadata accessor for MarkdownStyle);
        sub_100032EB8(v47, &v7[v112], type metadata accessor for MarkdownStyle);
        v113 = v164;
        v114 = v165(v7, 6, v164);
        if (v114 <= 2)
        {
          if (v114)
          {
            if (v114 == 1)
            {
              sub_100032F20(v103, type metadata accessor for MarkdownStyle);
              if (v165(&v7[v112], 6, v113) == 1)
              {
                goto LABEL_113;
              }
            }

            else
            {
              sub_100032F20(v103, type metadata accessor for MarkdownStyle);
              if (v165(&v7[v112], 6, v113) == 2)
              {
                goto LABEL_113;
              }
            }

            goto LABEL_108;
          }

          v115 = v155;
          sub_100032EB8(v7, v155, type metadata accessor for MarkdownStyle);
          if (v165(&v7[v112], 6, v113))
          {
            v116 = v159;
            sub_100032F20(v159, type metadata accessor for MarkdownStyle);
            v117 = v115;
            v103 = v116;
            (*v156)(v117, v113);
            v47 = v158;
            goto LABEL_108;
          }

          v118 = v138;
          (*v139)(v138, &v7[v112], v113);
          LODWORD(v154) = sub_100084758();
          v119 = *v156;
          (*v156)(v118, v113);
          v120 = v159;
          sub_100032F20(v159, type metadata accessor for MarkdownStyle);
          v121 = v115;
          v103 = v120;
          v119(v121, v113);
          v7 = v137;
          v47 = v158;
          if (v154)
          {
LABEL_113:
            sub_100032F20(v7, type metadata accessor for MarkdownStyle);
            sub_100032F20(v47, type metadata accessor for MarkdownStyle);
            v122 = v153[v109];
            v153[v109] = v122 & ~v110;
            v76 = (v122 & v110) == 0;
            a2 = v111;
            v23 = v147;
            v44 = v164;
            v41 = v150;
            v90 = v141;
            v91 = v157;
            v85 = v140;
            if (!v76)
            {
              v89 = v152 - 1;
              if (__OFSUB__(v152, 1))
              {
                __break(1u);
              }

              if (v152 == 1)
              {

                a2 = &_swiftEmptySetSingleton;
                goto LABEL_118;
              }

              goto LABEL_59;
            }

            continue;
          }

          sub_100032F20(v137, type metadata accessor for MarkdownStyle);
        }

        else
        {
          if (v114 > 4)
          {
            if (v114 == 5)
            {
              sub_100032F20(v103, type metadata accessor for MarkdownStyle);
              if (v165(&v7[v112], 6, v113) == 5)
              {
                goto LABEL_113;
              }
            }

            else
            {
              sub_100032F20(v103, type metadata accessor for MarkdownStyle);
              if (v165(&v7[v112], 6, v113) == 6)
              {
                goto LABEL_113;
              }
            }
          }

          else if (v114 == 3)
          {
            sub_100032F20(v103, type metadata accessor for MarkdownStyle);
            if (v165(&v7[v112], 6, v113) == 3)
            {
              goto LABEL_113;
            }
          }

          else
          {
            sub_100032F20(v103, type metadata accessor for MarkdownStyle);
            if (v165(&v7[v112], 6, v113) == 4)
            {
              goto LABEL_113;
            }
          }

LABEL_108:
          sub_1000058F0(v7, &qword_1000A5C60, &qword_10008B870);
        }

        a2 = v111;
        v108 = (v108 + 1) & v160;
        v109 = v108 >> 6;
        v110 = 1 << v108;
        if ((v162[v108 >> 6] & (1 << v108)) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_89;
      }

      break;
    }

    if (v90 <= v51 + 1)
    {
      v93 = v51 + 1;
    }

    else
    {
      v93 = v90;
    }

    v94 = v93 - 1;
    while (1)
    {
      v92 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v92 >= v90)
      {
        v96 = 0;
        v97 = 1;
        v51 = v94;
        goto LABEL_72;
      }

      v91 = *(v41 + 8 * v92);
      ++v51;
      if (v91)
      {
        v51 = v92;
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    v124 = v45;

    if (swift_stdlib_isStackAllocationSafe())
    {

      v85 = v140;
      continue;
    }

    break;
  }

  v125 = swift_slowAlloc();
  memcpy(v125, v162, v124);
  v126 = v129;
  v127 = sub_10002E7D0(v125, v134, a2, v44, &v167);

  if (v126)
  {

    __break(1u);
  }

  else
  {

    a2 = v127;
LABEL_118:
    sub_100010FF4();
    return a2;
  }

  return result;
}

uint64_t sub_10002E130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000847C8();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  __chkstk_darwin(v5);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  v8 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v10 = &v44 - v9;
  v11 = type metadata accessor for MarkdownStyle(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v53 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v44 - v16;
  v18 = v2;
  v19 = *v2;
  v20 = *(*v2 + 40);
  sub_100085A08();
  v57 = a1;
  sub_10002656C();
  v21 = sub_100085A38();
  v22 = v19 + 56;
  v23 = -1 << *(v19 + 32);
  v24 = v21 & ~v23;
  if (((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    v37 = 1;
    return (*(v12 + 56))(a2, v37, 1, v11);
  }

  v47 = v11;
  v44 = v18;
  v48 = a2;
  v54 = ~v23;
  v46 = v12;
  v55 = *(v12 + 72);
  v25 = v50;
  v26 = (v50 + 48);
  v50 += 32;
  v51 = (v25 + 8);
  v52 = v19;
  while (1)
  {
    v27 = v55 * v24;
    sub_100032EB8(*(v19 + 48) + v55 * v24, v17, type metadata accessor for MarkdownStyle);
    v28 = *(v56 + 48);
    sub_100032EB8(v17, v10, type metadata accessor for MarkdownStyle);
    sub_100032EB8(v57, &v10[v28], type metadata accessor for MarkdownStyle);
    v29 = *v26;
    v30 = (*v26)(v10, 6, v5);
    if (v30 > 2)
    {
      if (v30 > 4)
      {
        if (v30 == 5)
        {
          sub_100032F20(v17, type metadata accessor for MarkdownStyle);
          if (v29(&v10[v28], 6, v5) == 5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_100032F20(v17, type metadata accessor for MarkdownStyle);
          if (v29(&v10[v28], 6, v5) == 6)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v30 == 3)
      {
        sub_100032F20(v17, type metadata accessor for MarkdownStyle);
        if (v29(&v10[v28], 6, v5) == 3)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_100032F20(v17, type metadata accessor for MarkdownStyle);
        if (v29(&v10[v28], 6, v5) == 4)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    v31 = v22;
    v32 = v53;
    if (v30)
    {
      break;
    }

    sub_100032EB8(v10, v53, type metadata accessor for MarkdownStyle);
    if (v29(&v10[v28], 6, v5))
    {
      sub_100032F20(v17, type metadata accessor for MarkdownStyle);
      (*v51)(v32, v5);
      v22 = v31;
      v19 = v52;
LABEL_23:
      sub_1000058F0(v10, &qword_1000A5C60, &qword_10008B870);
      goto LABEL_24;
    }

    v34 = v49;
    (*v50)(v49, &v10[v28], v5);
    v45 = sub_100084758();
    v35 = v34;
    v36 = *v51;
    (*v51)(v35, v5);
    sub_100032F20(v17, type metadata accessor for MarkdownStyle);
    v36(v32, v5);
    v22 = v31;
    v19 = v52;
    if (v45)
    {
      goto LABEL_29;
    }

    sub_100032F20(v10, type metadata accessor for MarkdownStyle);
LABEL_24:
    v24 = (v24 + 1) & v54;
    if (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      v37 = 1;
      a2 = v48;
      goto LABEL_32;
    }
  }

  if (v30 == 1)
  {
    sub_100032F20(v17, type metadata accessor for MarkdownStyle);
    v33 = v29(&v10[v28], 6, v5) == 1;
  }

  else
  {
    sub_100032F20(v17, type metadata accessor for MarkdownStyle);
    v33 = v29(&v10[v28], 6, v5) == 2;
  }

  v22 = v31;
  v19 = v52;
  if (!v33)
  {
    goto LABEL_23;
  }

LABEL_29:
  sub_100032F20(v10, type metadata accessor for MarkdownStyle);
  v38 = v44;
  v39 = *v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v38;
  v58 = *v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100078DB4();
    v41 = v58;
  }

  v42 = *(v41 + 48) + v27;
  a2 = v48;
  sub_100032CA4(v42, v48, type metadata accessor for MarkdownStyle);
  sub_10002F734(v24);
  v37 = 0;
  *v38 = v58;
LABEL_32:
  v12 = v46;
  v11 = v47;
  return (*(v12 + 56))(a2, v37, 1, v11);
}

void *sub_10002E7D0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v72[0] = a2;
  v88 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  v9 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v11 = v72 - v10;
  v92 = sub_1000847C8();
  v12 = *(v92 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v92);
  v76 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = v72 - v16;
  v17 = sub_100005740(&qword_1000A5C68, &qword_10008B878);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v79 = v72 - v19;
  v82 = type metadata accessor for MarkdownStyle(0);
  v20 = *(*(v82 - 8) + 64);
  v21 = __chkstk_darwin(v82);
  v23 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = v72 - v25;
  v27 = __chkstk_darwin(v24);
  v84 = v72 - v28;
  result = __chkstk_darwin(v27);
  v93 = v72 - v30;
  v31 = *(a3 + 16);
  v32 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v33 = *(a1 + v32) & ((-1 << a4) - 1);
  v75 = a1;
  *(a1 + v32) = v33;
  v34 = v31 - 1;
  v81 = (v35 + 56);
  v85 = v35;
  v80 = (v35 + 48);
  v95 = (v12 + 48);
  v77 = (v12 + 32);
  v86 = (v12 + 8);
  v94 = a3;
  v91 = a3 + 56;
  v78 = a5;
  v87 = v23;
LABEL_2:
  v73 = v34;
LABEL_4:
  while (2)
  {
    v37 = *a5;
    v36 = a5[1];
    v39 = a5[2];
    v38 = a5[3];
    v40 = a5[4];
    v90 = v39;
    if (v40)
    {
      v41 = v38;
LABEL_13:
      v45 = (v40 - 1) & v40;
      v46 = v79;
      sub_100032EB8(*(v37 + 48) + *(v85 + 72) * (__clz(__rbit64(v40)) | (v41 << 6)), v79, type metadata accessor for MarkdownStyle);
      v47 = 0;
      v44 = v41;
LABEL_14:
      v48 = v82;
      (*v81)(v46, v47, 1, v82);
      *a5 = v37;
      a5[1] = v36;
      a5[2] = v90;
      a5[3] = v44;
      a5[4] = v45;
      if ((*v80)(v46, 1, v48) == 1)
      {
        sub_1000058F0(v46, &qword_1000A5C68, &qword_10008B878);
        v71 = v94;

        return sub_10002F274(v75, v72[0], v73, v71);
      }

      v49 = v93;
      sub_100032CA4(v46, v93, type metadata accessor for MarkdownStyle);
      v50 = *(v94 + 40);
      sub_100085A08();
      v51 = v49;
      v52 = v84;
      sub_100032EB8(v51, v84, type metadata accessor for MarkdownStyle);
      v53 = *v95;
      v54 = v92;
      v55 = (*v95)(v52, 6, v92);
      if (v55 <= 2)
      {
        v56 = v87;
        if (!v55)
        {
          v58 = v74;
          (*v77)(v74, v84, v54);
          sub_100085A18(6uLL);
          sub_100031408(&qword_1000A5C70, &type metadata accessor for URL);
          sub_100085028();
          (*v86)(v58, v54);
LABEL_28:
          v59 = sub_100085A38();
          v60 = -1 << *(v94 + 32);
          v61 = v59 & ~v60;
          v62 = v61 >> 6;
          v63 = 1 << v61;
          if (((1 << v61) & *(v91 + 8 * (v61 >> 6))) == 0)
          {
LABEL_3:
            result = sub_100032F20(v93, type metadata accessor for MarkdownStyle);
            a5 = v78;
            continue;
          }

          v89 = ~v60;
          v90 = *(v85 + 72);
          while (1)
          {
            sub_100032EB8(*(v94 + 48) + v90 * v61, v26, type metadata accessor for MarkdownStyle);
            v64 = *(v88 + 48);
            sub_100032EB8(v26, v11, type metadata accessor for MarkdownStyle);
            sub_100032EB8(v93, &v11[v64], type metadata accessor for MarkdownStyle);
            v65 = v92;
            v66 = v53(v11, 6, v92);
            if (v66 > 2)
            {
              if (v66 > 4)
              {
                if (v66 == 5)
                {
                  sub_100032F20(v26, type metadata accessor for MarkdownStyle);
                  if (v53(&v11[v64], 6, v65) == 5)
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  sub_100032F20(v26, type metadata accessor for MarkdownStyle);
                  if (v53(&v11[v64], 6, v65) == 6)
                  {
                    goto LABEL_54;
                  }
                }
              }

              else if (v66 == 3)
              {
                sub_100032F20(v26, type metadata accessor for MarkdownStyle);
                if (v53(&v11[v64], 6, v65) == 3)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                sub_100032F20(v26, type metadata accessor for MarkdownStyle);
                if (v53(&v11[v64], 6, v65) == 4)
                {
                  goto LABEL_54;
                }
              }

              goto LABEL_49;
            }

            if (v66)
            {
              break;
            }

            sub_100032EB8(v11, v56, type metadata accessor for MarkdownStyle);
            if (v53(&v11[v64], 6, v65))
            {
              sub_100032F20(v26, type metadata accessor for MarkdownStyle);
              (*v86)(v56, v65);
LABEL_49:
              sub_1000058F0(v11, &qword_1000A5C60, &qword_10008B870);
              goto LABEL_50;
            }

            v67 = v76;
            (*v77)(v76, &v11[v64], v65);
            v83 = sub_100084758();
            v68 = *v86;
            v69 = v67;
            v56 = v87;
            (*v86)(v69, v65);
            sub_100032F20(v26, type metadata accessor for MarkdownStyle);
            v68(v56, v92);
            if (v83)
            {
LABEL_54:
              sub_100032F20(v11, type metadata accessor for MarkdownStyle);
              result = sub_100032F20(v93, type metadata accessor for MarkdownStyle);
              v70 = v75[v62];
              v75[v62] = v70 & ~v63;
              a5 = v78;
              if ((v70 & v63) != 0)
              {
                v34 = v73 - 1;
                if (__OFSUB__(v73, 1))
                {
                  goto LABEL_60;
                }

                if (v73 == 1)
                {
                  return &_swiftEmptySetSingleton;
                }

                goto LABEL_2;
              }

              goto LABEL_4;
            }

            sub_100032F20(v11, type metadata accessor for MarkdownStyle);
LABEL_50:
            v61 = (v61 + 1) & v89;
            v62 = v61 >> 6;
            v63 = 1 << v61;
            if ((*(v91 + 8 * (v61 >> 6)) & (1 << v61)) == 0)
            {
              goto LABEL_3;
            }
          }

          if (v66 == 1)
          {
            sub_100032F20(v26, type metadata accessor for MarkdownStyle);
            if (v53(&v11[v64], 6, v65) == 1)
            {
              goto LABEL_54;
            }
          }

          else
          {
            sub_100032F20(v26, type metadata accessor for MarkdownStyle);
            if (v53(&v11[v64], 6, v65) == 2)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_49;
        }

        v57 = v55 != 1;
      }

      else
      {
        v56 = v87;
        if (v55 > 4)
        {
          if (v55 == 5)
          {
            v57 = 4;
          }

          else
          {
            v57 = 5;
          }
        }

        else if (v55 == 3)
        {
          v57 = 2;
        }

        else
        {
          v57 = 3;
        }
      }

      sub_100085A18(v57);
      goto LABEL_28;
    }

    break;
  }

  v42 = (v39 + 64) >> 6;
  if (v42 <= v38 + 1)
  {
    v43 = v38 + 1;
  }

  else
  {
    v43 = (v39 + 64) >> 6;
  }

  v44 = v43 - 1;
  while (1)
  {
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v41 >= v42)
    {
      v45 = 0;
      v47 = 1;
      v46 = v79;
      goto LABEL_14;
    }

    v40 = *(v36 + 8 * v41);
    ++v38;
    if (v40)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_10002F274(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = sub_1000847C8();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v51);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MarkdownStyle(0);
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v50 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100005740(&qword_1000A5C78, &unk_10008B880);
  result = sub_100085618();
  v18 = result;
  v45 = v11;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46 = a4;
  v47 = (v8 + 48);
  v43 = (v8 + 8);
  v44 = (v8 + 32);
  v22 = result + 56;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
LABEL_16:
    v26 = *(a4 + 48);
    v49 = *(v48 + 72);
    sub_100032EB8(v26 + v49 * (v23 | (v21 << 6)), v17, type metadata accessor for MarkdownStyle);
    v27 = *(v18 + 40);
    sub_100085A08();
    v28 = v17;
    v29 = v17;
    v30 = v50;
    sub_100032EB8(v29, v50, type metadata accessor for MarkdownStyle);
    v31 = (*v47)(v30, 6, v51);
    if (v31 <= 2)
    {
      if (!v31)
      {
        (*v44)(v45, v50, v51);
        sub_100085A18(6uLL);
        sub_100031408(&qword_1000A5C70, &type metadata accessor for URL);
        v33 = v51;
        sub_100085028();
        (*v43)(v45, v33);
        v17 = v28;
        goto LABEL_28;
      }

      v17 = v28;
      v32 = v31 != 1;
    }

    else if (v31 > 4)
    {
      v17 = v28;
      if (v31 == 5)
      {
        v32 = 4;
      }

      else
      {
        v32 = 5;
      }
    }

    else
    {
      v17 = v28;
      if (v31 == 3)
      {
        v32 = 2;
      }

      else
      {
        v32 = 3;
      }
    }

    sub_100085A18(v32);
LABEL_28:
    result = sub_100085A38();
    v34 = -1 << *(v18 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v22 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_38;
        }
      }

      goto LABEL_43;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_38:
    *(v22 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    result = sub_100032CA4(v17, *(v18 + 48) + v37 * v49, type metadata accessor for MarkdownStyle);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_44;
    }

    a4 = v46;
    if (!a3)
    {
LABEL_40:

      return v18;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      goto LABEL_40;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v20 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_10002F734(unint64_t a1)
{
  v43 = sub_1000847C8();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for MarkdownStyle(0);
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v39);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v44 = &v36 - v11;
  v12 = *v1;
  v13 = -1 << *(*v1 + 32);
  v14 = (a1 + 1) & ~v13;
  v41 = *v1 + 56;
  if (((1 << v14) & *(v41 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = v41;
    v17 = sub_100085558();
    if ((*(v16 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v18 = (v17 + 1) & v15;
      v19 = *(v6 + 72);
      v40 = (v3 + 48);
      v36 = (v3 + 8);
      v37 = (v3 + 32);
      while (1)
      {
        v20 = v15;
        v21 = v19;
        v22 = v19 * v14;
        v23 = v44;
        sub_100032EB8(*(v12 + 48) + v19 * v14, v44, type metadata accessor for MarkdownStyle);
        v24 = *(v12 + 40);
        sub_100085A08();
        v25 = v42;
        sub_100032EB8(v23, v42, type metadata accessor for MarkdownStyle);
        v26 = (*v40)(v25, 6, v43);
        if (v26 <= 2)
        {
          if (v26)
          {
            sub_100085A18(v26 != 1);
          }

          else
          {
            v28 = v38;
            v29 = v43;
            (*v37)(v38, v42, v43);
            sub_100085A18(6uLL);
            sub_100031408(&qword_1000A5C70, &type metadata accessor for URL);
            sub_100085028();
            (*v36)(v28, v29);
          }

          v15 = v20;
        }

        else
        {
          if (v26 > 4)
          {
            v15 = v20;
            v27 = v26 == 5 ? 4 : 5;
          }

          else
          {
            v15 = v20;
            v27 = v26 == 3 ? 2 : 3;
          }

          sub_100085A18(v27);
        }

        v30 = sub_100085A38();
        sub_100032F20(v44, type metadata accessor for MarkdownStyle);
        v31 = v30 & v15;
        if (a1 >= v18)
        {
          break;
        }

        v19 = v21;
        if (v31 < v18)
        {
          goto LABEL_24;
        }

LABEL_25:
        v32 = v19 * a1;
        if ((v19 * a1) < v22 || *(v12 + 48) + v19 * a1 >= *(v12 + 48) + v22 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v14;
          if (v32 == v22)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v14;
LABEL_6:
        v14 = (v14 + 1) & v15;
        if (((*(v41 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v19 = v21;
      if (v31 < v18)
      {
        goto LABEL_6;
      }

LABEL_24:
      if (a1 < v31)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_29:

    *(v41 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v41 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v12 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v35;
    ++*(v12 + 36);
  }

  return result;
}

uint64_t sub_10002FBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000847C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MarkdownStyle(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_100032EB8(a1, &v24 - v16, type metadata accessor for MarkdownStyle);
  sub_100032EB8(a2, &v17[v18], type metadata accessor for MarkdownStyle);
  v19 = *(v5 + 48);
  v20 = v19(v17, 6, v4);
  if (v20 <= 2)
  {
    if (!v20)
    {
      sub_100032EB8(v17, v12, type metadata accessor for MarkdownStyle);
      if (!v19(&v17[v18], 6, v4))
      {
        (*(v5 + 32))(v8, &v17[v18], v4);
        v21 = sub_100084758();
        v23 = *(v5 + 8);
        v23(v8, v4);
        v23(v12, v4);
        sub_100032F20(v17, type metadata accessor for MarkdownStyle);
        return v21 & 1;
      }

      (*(v5 + 8))(v12, v4);
      goto LABEL_20;
    }

    if (v20 == 1)
    {
      if (v19(&v17[v18], 6, v4) != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v19(&v17[v18], 6, v4) == 2)
    {
      goto LABEL_16;
    }

LABEL_20:
    sub_1000058F0(v17, &qword_1000A5C60, &qword_10008B870);
    v21 = 0;
    return v21 & 1;
  }

  if (v20 > 4)
  {
    if (v20 == 5)
    {
      if (v19(&v17[v18], 6, v4) != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v19(&v17[v18], 6, v4) == 6)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v20 == 3)
  {
    if (v19(&v17[v18], 6, v4) != 3)
    {
      goto LABEL_20;
    }
  }

  else if (v19(&v17[v18], 6, v4) != 4)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_100032F20(v17, type metadata accessor for MarkdownStyle);
  v21 = 1;
  return v21 & 1;
}

id sub_10002FF98(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 57);
  result = [a1 attributedString];
  v8 = result;
  v44 = a2;
  if (v6)
  {
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    [result ic_range];

    v8 = sub_1000854A8();
    v9 = [a2 managedObjectContext];
    v10 = *(a3 + 60);
    v53 = _swiftEmptyArrayStorage;
    v11 = [v8 string];
    v12 = sub_100085098();
    v14 = v13;

    v51 = v12;
    v52 = v14;
    v15 = [v8 ic_range];
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = &v51;
    *(v18 + 24) = v9;
    *(v18 + 32) = v10;
    a2 = swift_allocObject();
    a2[2] = sub_100035CD4;
    a2[3] = v18;
    v49 = sub_100035C90;
    v50 = a2;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_10001EF40;
    v48 = &unk_10009EFD0;
    v19 = _Block_copy(&aBlock);
    v20 = v9;

    [v8 enumerateAttributesInRange:v15 options:v17 usingBlock:{0, v19}];
    sub_100030518(a3);

    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_7:
      v43 = v51;

      return v43;
    }

    __break(1u);
  }

  if (v8)
  {
    v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v8];

    v23 = ICTTAttributeNameReplicaID;
    v24 = v22;
    v25 = [v24 ic_range];
    [v24 removeAttribute:v23 range:{v25, v26}];

    v27 = ICTTAttributeNameTimestamp;
    v28 = [v24 ic_range];
    [v24 removeAttribute:v27 range:{v28, v29}];

    v30 = [a2 managedObjectContext];
    v31 = *(a3 + 60);
    v53 = _swiftEmptyArrayStorage;
    v32 = [v24 string];
    v33 = sub_100085098();
    v35 = v34;

    v51 = v33;
    v52 = v35;
    v36 = [v24 ic_range];
    v38 = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = &v51;
    *(v39 + 24) = v30;
    *(v39 + 32) = v31;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1000304BC;
    *(v40 + 24) = v39;
    v49 = sub_1000304D8;
    v50 = v40;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_10001EF40;
    v48 = &unk_10009EF58;
    v41 = _Block_copy(&aBlock);
    v42 = v30;

    [v24 enumerateAttributesInRange:v36 options:v38 usingBlock:{0, v41}];
    sub_100030518(a3);

    _Block_release(v41);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if ((v41 & 1) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100030484()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000304D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100030500(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000305CC(void *a1, char a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10003E50C(_swiftEmptyArrayStorage);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v26 = ICTTAttributeNameParagraphStyle;
  v10 = [a1 ic_range];
  v24 = v11;
  v25 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = a1;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  *(v12 + 48) = v7;
  *(v12 + 56) = a2;
  *(v12 + 64) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100031274;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1000312B4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002A6AC;
  aBlock[3] = &unk_10009F0C0;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  v16 = a3;

  [v15 enumerateAttribute:v26 inRange:v25 options:v24 usingBlock:{0, v14}];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v19 = *(v6 + 16);
    v20 = *(v6 + 24);
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v22 = *(v6 + 24);
    }

    else
    {
      v23 = [v15 string];
      v19 = sub_100085098();
    }

    return v19;
  }

  return result;
}

uint64_t sub_1000308DC(void *a1, id a2, uint64_t a3)
{
  v5 = [a2 managedObjectContext];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 attributedString];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v7];

      v10 = ICTTAttributeNameReplicaID;
      v11 = v9;
      v12 = [v11 ic_range];
      [v11 removeAttribute:v10 range:{v12, v13}];

      v14 = ICTTAttributeNameTimestamp;
      v15 = [v11 ic_range];
      [v11 removeAttribute:v14 range:{v15, v16}];

      v17 = sub_1000305CC(v11, *(a3 + 1), v6);
      return v17;
    }

    __break(1u);
  }

  if (qword_1000A5400 != -1)
  {
    swift_once();
  }

  v19 = sub_100084FB8();
  sub_10000B614(v19, qword_1000A5BF8);
  v20 = sub_100084FA8();
  v21 = sub_100085378();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "no context found for markdown export of note", v22, 2u);
  }

  result = sub_100085708();
  __break(1u);
  return result;
}

uint64_t sub_100030B30(CGColor *a1)
{
  v2 = CGColorGetColorSpace(a1);
  if (v2)
  {
    v3 = v2;
    v4 = CGColorSpaceCopyName(v2);

    if (v4)
    {
      v5 = sub_100085328();
      if (v5)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
          v26 = _swiftEmptyArrayStorage;
          v7 = v5;
          sub_10003BE2C(0, v6, 0);
          v8 = v7;
          v9 = _swiftEmptyArrayStorage;
          v10 = _swiftEmptyArrayStorage[2];
          v11 = 32;
          do
          {
            v12 = *(v8 + v11);
            v26 = v9;
            v13 = v9[3];
            if (v10 >= v13 >> 1)
            {
              sub_10003BE2C((v13 > 1), v10 + 1, 1);
              v8 = v7;
              v9 = v26;
            }

            v9[2] = v10 + 1;
            v9[v10 + 4] = v12;
            v11 += 8;
            ++v10;
            --v6;
          }

          while (v6);
        }

        v25 = sub_100085098();

        return v25;
      }
    }
  }

  if (qword_1000A5400 != -1)
  {
    swift_once();
  }

  v14 = sub_100084FB8();
  sub_10000B614(v14, qword_1000A5BF8);
  v15 = a1;
  v16 = sub_100084FA8();
  v17 = sub_100085378();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    type metadata accessor for CGColor(0);
    v20 = v15;
    v21 = sub_1000850D8();
    v23 = sub_100038A4C(v21, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cannot create color from CGColor — returning nil {cgColor: %s}", v18, 0xCu);
    sub_100006304(v19);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100030DD0(uint64_t result)
{
  if (result > 4)
  {
    if (result <= 100)
    {
      if (result == 5)
      {
        return 4;
      }

      if (result == 100)
      {
        return 6;
      }
    }

    else
    {
      switch(result)
      {
        case 'e':
          return 7;
        case 'f':
          return 8;
        case 'g':
          return 9;
      }
    }
  }

  else
  {
    if (result > 1)
    {
      if (result != 2 && result != 3)
      {
        return 5;
      }

      return result;
    }

    if (result <= 1)
    {
      return result;
    }
  }

  if (qword_1000A5400 != -1)
  {
    swift_once();
  }

  v1 = sub_100084FB8();
  sub_10000B614(v1, qword_1000A5BF8);
  v2 = sub_100084FA8();
  v3 = sub_100085388();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unknown named paragraph style — returning nil", v4, 2u);
  }

  return 10;
}

unint64_t sub_100030F48(unint64_t result)
{
  if (result >= 5)
  {
    if (qword_1000A5400 != -1)
    {
      swift_once();
    }

    v1 = sub_100084FB8();
    sub_10000B614(v1, qword_1000A5BF8);
    v2 = sub_100084FA8();
    v3 = sub_100085388();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unknown text alignment — returning nil", v4, 2u);
    }

    return 5;
  }

  return result;
}

unint64_t sub_100031030(unint64_t a1)
{
  if (a1 < 6)
  {
    return 0x40302010005uLL >> (8 * a1);
  }

  if (qword_1000A5400 != -1)
  {
    swift_once();
  }

  v2 = sub_100084FB8();
  sub_10000B614(v2, qword_1000A5BF8);
  v3 = sub_100084FA8();
  v4 = sub_100085388();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown emphasis color type — returning nil", v5, 2u);
  }

  return 5;
}

uint64_t sub_100031130(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100031194()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000311CC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031214()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000312B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000312DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100031394()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100031408(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100031450(uint64_t *a1)
{
  v3 = sub_100005740(&qword_1000A61C0, &qword_10008C0E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100034C48();
  sub_100085A68();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1000857E8();
    sub_100005740(&qword_1000A61D0, &qword_10008C0E8);
    v10[15] = 1;
    sub_100034C9C(&qword_1000A61D8, &qword_1000A61E0);
    sub_100085828();
    (*(v4 + 8))(v7, v3);
  }

  sub_100006304(a1);
  return v8;
}

uint64_t sub_10003168C(uint64_t *a1)
{
  v3 = sub_100005740(&qword_1000A62A8, &qword_10008C898);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100035954();
  sub_100085A68();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1000857E8();
    sub_100005740(&qword_1000A62B8, &qword_10008C8A0);
    v10[15] = 1;
    sub_1000359A8(&qword_1000A62C0);
    sub_100085828();
    (*(v4 + 8))(v7, v3);
  }

  sub_100006304(a1);
  return v8;
}

uint64_t sub_1000318B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A6953746E696F70 && a2 == 0xE900000000000065 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C6F427369 && a2 == 0xE600000000000000 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63696C6174497369 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C7265646E557369 && a2 == 0xEB00000000656E69 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656B697274537369 && a2 == 0xEF6867756F726874 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7263737265707573 && a2 == 0xEB00000000747069 || (sub_100085948() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100031B58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100005740(&qword_1000A6078, &qword_10008C090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v72 = 1;
  v69 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v44 = a1;
  sub_10000626C(a1, v10);
  sub_100034454();
  sub_100085A68();
  if (v2)
  {
    v73 = v2;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 2;
    v17 = 2;
    v18 = 2;
    v19 = 2;
LABEL_4:
    sub_100006304(v44);
    *&v53 = v15;
    *(&v53 + 1) = v14;
    v54 = v13;
    v55 = v72;
    v56 = v19;
    v57 = v18;
    v58 = v17;
    v59 = v16;
    v60 = v70;
    v61 = v71;
    v62 = v12;
    v63 = v69;
    *v64 = *v68;
    *&v64[3] = *&v68[3];
    v65 = 0;
    v66 = 0;
    v67 = 0;
    return sub_1000344A8(&v53);
  }

  LOBYTE(v53) = 0;
  *&v43 = sub_100085798();
  *(&v43 + 1) = v21;
  LOBYTE(v53) = 1;
  v42 = sub_1000857B8();
  v72 = v22 & 1;
  LOBYTE(v53) = 2;
  v41 = sub_1000857A8();
  LOBYTE(v53) = 3;
  v40 = sub_1000857A8();
  LOBYTE(v53) = 4;
  v39 = sub_1000857A8();
  LOBYTE(v53) = 5;
  v16 = sub_1000857A8();
  LOBYTE(v53) = 6;
  v23 = sub_1000857C8();
  v73 = 0;
  v12 = v23;
  v69 = v24 & 1;
  v50 = 7;
  sub_1000344D8();
  v25 = v73;
  sub_1000857D8();
  v73 = v25;
  if (v25)
  {
    (*(v6 + 8))(v9, v5);
    v14 = *(&v43 + 1);
    v15 = v43;
    v13 = v42;
    v19 = v41;
    v18 = v40;
    v17 = v39;
    goto LABEL_4;
  }

  (*(v6 + 8))(v9, v5);
  v36 = *(&v51 + 1);
  v37 = v51;
  v35 = v52;
  v26 = v43;
  v45 = v43;
  v27 = v42;
  *&v46 = v42;
  v38 = v72;
  BYTE8(v46) = v72;
  v28 = v41;
  BYTE9(v46) = v41;
  v29 = v40;
  BYTE10(v46) = v40;
  v30 = v39;
  BYTE11(v46) = v39;
  BYTE12(v46) = v16;
  *&v47 = v12;
  v31 = v69;
  BYTE8(v47) = v69;
  v48 = v51;
  v49 = v52;
  sub_10003452C(&v45, &v53);
  sub_100006304(v44);
  v53 = __PAIR128__(*(&v43 + 1), v26);
  v54 = v27;
  v55 = v38;
  v56 = v28;
  v57 = v29;
  v58 = v30;
  v59 = v16;
  v62 = v12;
  v63 = v31;
  v65 = v37;
  v66 = v36;
  v67 = v35;
  result = sub_1000344A8(&v53);
  v32 = v48;
  *(a2 + 32) = v47;
  *(a2 + 48) = v32;
  *(a2 + 64) = v49;
  v33 = v46;
  *a2 = v45;
  *(a2 + 16) = v33;
  return result;
}

uint64_t sub_1000321AC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009DD40;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000321F8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009DDD8;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100032244(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009DEE8;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100032290(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65646E69 && a2 == 0xE600000000000000 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100086CC0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73696C6B63656863 && a2 == 0xED00006D65744974 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F75516B636F6C62 && a2 == 0xEF6C6576654C6574 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1000324F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009DF80;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100032540(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000100086CE0 == a2;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100086D00 == a2 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74786554746C61 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10003270C(uint64_t *a1)
{
  v2 = sub_100005740(&qword_1000A61A8, &qword_10008C0D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100034BF4();
  sub_100085A68();
  v10[15] = 0;
  v8 = sub_100085818();
  v10[14] = 1;
  sub_100085818();
  (*(v3 + 8))(v6, v2);
  sub_100006304(a1);
  return v8;
}

uint64_t sub_1000328B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100086D20 == a2 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953394534 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7061726761726170 && a2 == 0xEE00656C79745368 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7369736168706D65 && a2 == 0xED0000656C797453 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100086D40 == a2 || (sub_100085948() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100086D60 == a2 || (sub_100085948() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100086D80 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_100032C00(uint64_t result)
{
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2._countAndFlagsBits = 0;
    v3 = 0xE000000000000000;
    v4 = 1;
    while (1)
    {
      v2._object = v3;
      sub_100085158(v2);

      v2._countAndFlagsBits = 62;
      v3 = 0xE100000000000000;
      if (v1 == v4)
      {
        break;
      }

      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        break;
      }
    }

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    sub_100085158(v6);
    return 62;
  }

  return result;
}

uint64_t sub_100032CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032D0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100032D60()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100032DD4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100032E44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100032E74()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100032EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_100032F80(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100032FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000847C8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100033078(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000847C8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000330FC()
{
  v0 = sub_1000847C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_100033168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100084918();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100033248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100084918();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100033300()
{
  result = sub_100084918();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100033374(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10003338C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000333B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10003340C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100033494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *(a1 + 1);
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100005740(&qword_1000A5C50, &qword_10008B860);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000335DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *(result + 1) = a2 + 4;
  }

  else
  {
    v8 = sub_100005740(&qword_1000A5C50, &qword_10008B860);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100033714()
{
  sub_1000341B8(319, &qword_1000A5E50);
  if (v0 <= 0x3F)
  {
    sub_10003381C(319, &qword_1000A5E58, _s16AttributedStringV13ChecklistItemVMa);
    if (v1 <= 0x3F)
    {
      sub_10003381C(319, &unk_1000A5E60, &type metadata accessor for UUID);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003381C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000854E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000338B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100033984(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100033A34()
{
  sub_1000341B8(319, &qword_1000A5538);
  if (v0 <= 0x3F)
  {
    sub_10003381C(319, &qword_1000A5518, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100033B10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = sub_100005740(&qword_1000A5C18, &unk_10008B830);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_9;
  }

  v12 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[10];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[12] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_100005740(&qword_1000A5C10, &unk_10008B820);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[13];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100033D70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  v12 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_100005740(&qword_1000A5C18, &unk_10008B830);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  result = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[12] + 8) = a2;
  }

  else
  {
    v16 = sub_100005740(&qword_1000A5C10, &unk_10008B820);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[13];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

void sub_100033FB0()
{
  sub_10003381C(319, &unk_1000A5E60, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    sub_10003381C(319, &qword_1000A5518, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      sub_1000341B8(319, &qword_1000A5FB0);
      if (v2 <= 0x3F)
      {
        sub_10003381C(319, &qword_1000A5FB8, _s16AttributedStringV14ParagraphStyleVMa);
        if (v3 <= 0x3F)
        {
          sub_1000341B8(319, &qword_1000A5FC0);
          if (v4 <= 0x3F)
          {
            sub_10003381C(319, &qword_1000A5FC8, &type metadata accessor for URL);
            if (v5 <= 0x3F)
            {
              sub_1000341B8(319, &qword_1000A5FD0);
              if (v6 <= 0x3F)
              {
                sub_1000341B8(319, &qword_1000A5538);
                if (v7 <= 0x3F)
                {
                  sub_10003381C(319, &unk_1000A5FD8, _s16AttributedStringV16InlineAttachmentVMa);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000341B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000854E8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 sub_100034234(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_10003425C()
{
  result = qword_1000A6028;
  if (!qword_1000A6028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6028);
  }

  return result;
}

unint64_t sub_1000342B4()
{
  result = qword_1000A6030;
  if (!qword_1000A6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6030);
  }

  return result;
}

unint64_t sub_10003430C()
{
  result = qword_1000A6038;
  if (!qword_1000A6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6038);
  }

  return result;
}

unint64_t sub_100034364()
{
  result = qword_1000A6040;
  if (!qword_1000A6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6040);
  }

  return result;
}

unint64_t sub_100034400()
{
  result = qword_1000A6058;
  if (!qword_1000A6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6058);
  }

  return result;
}

unint64_t sub_100034454()
{
  result = qword_1000A6080;
  if (!qword_1000A6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6080);
  }

  return result;
}

unint64_t sub_1000344D8()
{
  result = qword_1000A6088;
  if (!qword_1000A6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6088);
  }

  return result;
}

unint64_t sub_100034564()
{
  result = qword_1000A6098;
  if (!qword_1000A6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6098);
  }

  return result;
}

unint64_t sub_1000345B8()
{
  result = qword_1000A60A8;
  if (!qword_1000A60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60A8);
  }

  return result;
}

unint64_t sub_10003460C()
{
  result = qword_1000A60B0;
  if (!qword_1000A60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60B0);
  }

  return result;
}

unint64_t sub_100034660()
{
  result = qword_1000A60B8;
  if (!qword_1000A60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60B8);
  }

  return result;
}

unint64_t sub_1000346B4()
{
  result = qword_1000A60D0;
  if (!qword_1000A60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60D0);
  }

  return result;
}

unint64_t sub_100034708()
{
  result = qword_1000A60D8;
  if (!qword_1000A60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60D8);
  }

  return result;
}

unint64_t sub_10003475C()
{
  result = qword_1000A60E8;
  if (!qword_1000A60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60E8);
  }

  return result;
}

unint64_t sub_1000347B0()
{
  result = qword_1000A60F0;
  if (!qword_1000A60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60F0);
  }

  return result;
}

unint64_t sub_100034804()
{
  result = qword_1000A6100;
  if (!qword_1000A6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6100);
  }

  return result;
}

unint64_t sub_100034858()
{
  result = qword_1000A6118;
  if (!qword_1000A6118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6118);
  }

  return result;
}

unint64_t sub_1000348AC()
{
  result = qword_1000A6120;
  if (!qword_1000A6120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6120);
  }

  return result;
}

unint64_t sub_100034900()
{
  result = qword_1000A6128;
  if (!qword_1000A6128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6128);
  }

  return result;
}

unint64_t sub_100034954()
{
  result = qword_1000A6138;
  if (!qword_1000A6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6138);
  }

  return result;
}

unint64_t sub_1000349A8()
{
  result = qword_1000A6148;
  if (!qword_1000A6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6148);
  }

  return result;
}

unint64_t sub_1000349FC()
{
  result = qword_1000A6160;
  if (!qword_1000A6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6160);
  }

  return result;
}

unint64_t sub_100034A50()
{
  result = qword_1000A6168;
  if (!qword_1000A6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6168);
  }

  return result;
}

unint64_t sub_100034AA4()
{
  result = qword_1000A6178;
  if (!qword_1000A6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6178);
  }

  return result;
}

unint64_t sub_100034AF8()
{
  result = qword_1000A6188;
  if (!qword_1000A6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6188);
  }

  return result;
}

unint64_t sub_100034B4C()
{
  result = qword_1000A6198;
  if (!qword_1000A6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6198);
  }

  return result;
}

unint64_t sub_100034BA0()
{
  result = qword_1000A61A0;
  if (!qword_1000A61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A61A0);
  }

  return result;
}

unint64_t sub_100034BF4()
{
  result = qword_1000A61B0;
  if (!qword_1000A61B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A61B0);
  }

  return result;
}

unint64_t sub_100034C48()
{
  result = qword_1000A61C8;
  if (!qword_1000A61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A61C8);
  }

  return result;
}

uint64_t sub_100034C9C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A61D0, &qword_10008C0E8);
    sub_100031408(a2, _s16AttributedStringV9AttributeVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100034D6C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100034DFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICArchiveModels(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICArchiveModels(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s16AttributedStringV14ParagraphStyleV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16AttributedStringV14ParagraphStyleV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100035180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000351CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100035220()
{
  result = qword_1000A6200;
  if (!qword_1000A6200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6200);
  }

  return result;
}

unint64_t sub_100035278()
{
  result = qword_1000A6208;
  if (!qword_1000A6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6208);
  }

  return result;
}

unint64_t sub_1000352D0()
{
  result = qword_1000A6210;
  if (!qword_1000A6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6210);
  }

  return result;
}

unint64_t sub_100035328()
{
  result = qword_1000A6218;
  if (!qword_1000A6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6218);
  }

  return result;
}

unint64_t sub_100035380()
{
  result = qword_1000A6220;
  if (!qword_1000A6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6220);
  }

  return result;
}

unint64_t sub_1000353D8()
{
  result = qword_1000A6228;
  if (!qword_1000A6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6228);
  }

  return result;
}

unint64_t sub_100035430()
{
  result = qword_1000A6230;
  if (!qword_1000A6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6230);
  }

  return result;
}

unint64_t sub_100035488()
{
  result = qword_1000A6238;
  if (!qword_1000A6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6238);
  }

  return result;
}

unint64_t sub_1000354E0()
{
  result = qword_1000A6240;
  if (!qword_1000A6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6240);
  }

  return result;
}

unint64_t sub_100035538()
{
  result = qword_1000A6248;
  if (!qword_1000A6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6248);
  }

  return result;
}

unint64_t sub_100035590()
{
  result = qword_1000A6250;
  if (!qword_1000A6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6250);
  }

  return result;
}

unint64_t sub_1000355E8()
{
  result = qword_1000A6258;
  if (!qword_1000A6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6258);
  }

  return result;
}

unint64_t sub_100035640()
{
  result = qword_1000A6260;
  if (!qword_1000A6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6260);
  }

  return result;
}

unint64_t sub_100035698()
{
  result = qword_1000A6268;
  if (!qword_1000A6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6268);
  }

  return result;
}

unint64_t sub_1000356F0()
{
  result = qword_1000A6270;
  if (!qword_1000A6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6270);
  }

  return result;
}

unint64_t sub_100035748()
{
  result = qword_1000A6278;
  if (!qword_1000A6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6278);
  }

  return result;
}

unint64_t sub_1000357A0()
{
  result = qword_1000A6280;
  if (!qword_1000A6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6280);
  }

  return result;
}

unint64_t sub_1000357F8()
{
  result = qword_1000A6288;
  if (!qword_1000A6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6288);
  }

  return result;
}

unint64_t sub_100035850()
{
  result = qword_1000A6290;
  if (!qword_1000A6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6290);
  }

  return result;
}

unint64_t sub_1000358A8()
{
  result = qword_1000A6298;
  if (!qword_1000A6298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6298);
  }

  return result;
}

unint64_t sub_100035900()
{
  result = qword_1000A62A0;
  if (!qword_1000A62A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A62A0);
  }

  return result;
}

unint64_t sub_100035954()
{
  result = qword_1000A62B0;
  if (!qword_1000A62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A62B0);
  }

  return result;
}

uint64_t sub_1000359A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A62B8, &qword_10008C8A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICAccountArchiveModel.Types(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICAccountArchiveModel.Types(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100035B68()
{
  result = qword_1000A62D8;
  if (!qword_1000A62D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A62D8);
  }

  return result;
}

unint64_t sub_100035BC0()
{
  result = qword_1000A62E0;
  if (!qword_1000A62E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A62E0);
  }

  return result;
}

unint64_t sub_100035C18()
{
  result = qword_1000A62E8;
  if (!qword_1000A62E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A62E8);
  }

  return result;
}

uint64_t ICArchivePreviewer.__allocating_init(forArchiveAt:)(void (**a1)(char *, uint64_t))
{
  v2 = swift_allocObject();
  ICArchivePreviewer.init(forArchiveAt:)(a1);
  return v2;
}

id ICArchivePreviewer.startPreviewing(_:completion:)(uint64_t *a1, void (*a2)(void *, uint64_t), void *a3)
{
  v4 = v3;
  v76 = a2;
  v77 = a3;
  v6 = sub_1000847C8();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  __chkstk_darwin(v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v73 - v16;
  __chkstk_darwin(v15);
  v19 = &v73 - v18;
  swift_beginAccess();
  v20 = *(v3 + 24);
  if (*(v20 + 16) && (v21 = sub_100039054(a1), (v22 & 1) != 0))
  {
    v73 = a1;
    v23 = *(v20 + 56) + 24 * v21;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    swift_endAccess();
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        swift_errorRetain();
        v76(v25, 1);
        v46 = [objc_allocWithZone(NSProgress) init];
        sub_10003B050(v25, v24, 2);
        return v46;
      }

      else
      {
        v51 = [objc_opt_self() progressWithTotalUnitCount:1];
        sub_100005740(&qword_1000A5A70, &qword_10008B590);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_10008B5D0;
        v53 = swift_allocObject();
        v54 = v77;
        *(v53 + 16) = v76;
        *(v53 + 24) = v54;
        *(v52 + 32) = sub_100039134;
        *(v52 + 40) = v53;
        swift_beginAccess();

        v77 = v51;
        v55 = *(v4 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = *(v4 + 24);
        *(v4 + 24) = 0x8000000000000000;
        v57 = v73;
        sub_10003AE34(v51, v52, 0, v73, isUniquelyReferenced_nonNull_native);
        *(v4 + 24) = v79;
        swift_endAccess();
        v58 = v11;
        v59 = *(v11 + 16);
        v59(v19, v57, v10);
        v60 = *(v58 + 80);
        v61 = swift_allocObject();
        *(v61 + 16) = v4;
        v74 = *(v58 + 32);
        v75 = v61;
        v62 = v19;
        v63 = v10;
        (v74)(v61 + ((v60 + 24) & ~v60), v62, v10);
        v76 = *(v4 + 16);
        v59(v17, v73, v10);
        v64 = (v60 + 16) & ~v60;
        v65 = (v12 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
        v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
        v67 = swift_allocObject();
        (v74)(v67 + v64, v17, v63);
        v68 = v77;
        *(v67 + v65) = v77;
        *(v67 + v66) = v4;
        v69 = (v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8));
        v70 = v75;
        *v69 = sub_10003B030;
        v69[1] = v70;
        aBlock[4] = sub_10003B034;
        aBlock[5] = v67;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000389E4;
        aBlock[3] = &unk_10009FD58;
        v71 = _Block_copy(aBlock);
        swift_retain_n();
        v72 = v68;

        [v76 performBackgroundTask:v71];
        _Block_release(v71);

        return v72;
      }
    }

    else if (v26)
    {
      v47 = objc_opt_self();
      v48 = v25;
      v49 = [v47 progressWithTotalUnitCount:1];
      [v49 setCompletedUnitCount:{objc_msgSend(v49, "totalUnitCount")}];
      v50 = v48;
      v76(v25, 0);
      sub_10003B050(v25, v24, 1);
      sub_10003B050(v25, v24, 1);
      return v49;
    }

    else
    {
      sub_100005740(&qword_1000A5A70, &qword_10008B590);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10008B5D0;
      v28 = swift_allocObject();
      v29 = v77;
      *(v28 + 16) = v76;
      *(v28 + 24) = v29;
      *(inited + 32) = sub_10003F0AC;
      *(inited + 40) = v28;
      aBlock[0] = v24;
      sub_1000112CC(v25, v24, 0);
      v30 = v25;

      sub_10003935C(inited);
      v31 = aBlock[0];
      swift_beginAccess();
      v32 = *(v4 + 24);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v79 = *(v4 + 24);
      *(v4 + 24) = 0x8000000000000000;
      sub_10003AE34(v25, v31, 0, v73, v33);
      *(v4 + 24) = v79;
      swift_endAccess();
      return v30;
    }
  }

  else
  {
    swift_endAccess();
    if (qword_1000A5408 != -1)
    {
      swift_once();
    }

    v35 = sub_100084FB8();
    sub_10000B614(v35, qword_1000A62F0);
    v36 = v11;
    (*(v11 + 16))(v14, a1, v10);
    v37 = sub_100084FA8();
    v38 = sub_100085388();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock[0] = v73;
      *v39 = 136315138;
      sub_100084A78();
      sub_10003EB7C(&qword_1000A5AD8, &type metadata accessor for URL);
      v40 = v75;
      v41 = sub_100085908();
      v43 = v42;
      (*(v74 + 8))(v9, v40);
      (*(v36 + 8))(v14, v10);
      v44 = sub_100038A4C(v41, v43, aBlock);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Object to be previewed does not exist {url: %s}", v39, 0xCu);
      sub_100006304(v73);
    }

    else
    {

      (*(v36 + 8))(v14, v10);
    }

    sub_1000081FC();
    swift_allocError();
    *v45 = 4;
    (v76)();

    return [objc_allocWithZone(NSProgress) init];
  }
}

void ICArchivePreviewer.stopPreviewing(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000847C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v41 - v12);
  swift_beginAccess();
  v14 = v1[3];
  if (!*(v14 + 16) || (v15 = sub_100039054(a1), (v16 & 1) == 0))
  {
    v44 = v5;
    swift_endAccess();
    if (qword_1000A5408 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  v17 = *(v14 + 56) + 24 * v15;
  v18 = *v17;
  v4 = *(v17 + 8);
  v19 = *(v17 + 16);
  swift_endAccess();
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      swift_beginAccess();
      v38 = v2[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v2[3];
      v2[3] = 0x8000000000000000;
      v36 = v18;
      v37 = v4;
      goto LABEL_15;
    }

LABEL_14:
    swift_beginAccess();
    v34 = v2[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v2[3];
    v2[3] = 0x8000000000000000;
    v36 = 0;
    v37 = 0;
LABEL_15:
    sub_10003AE34(v36, v37, 3, a1, isUniquelyReferenced_nonNull_native);
    v2[3] = v45;
    swift_endAccess();
    return;
  }

  if (!v19)
  {
    v9 = v18;

    [v9 cancel];
    swift_beginAccess();
    v20 = v2[3];
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v2[3];
    v2[3] = 0x8000000000000000;
    sub_10003AE34(0, 0, 3, a1, v21);
    v2[3] = v45;
    swift_endAccess();
    v2 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v10 = *(v4 + 16);
    if (!v10)
    {
LABEL_9:

      return;
    }

    v8 = 0;
    v13 = (v4 + 40);
    while (v8 < *(v4 + 16))
    {
      ++v8;
      v23 = *(v13 - 1);
      v22 = *v13;
      v46 = v2;
      v47 = 1;

      v23(&v46);

      v13 += 2;
      if (v10 == v8)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
LABEL_11:
    v24 = sub_100084FB8();
    sub_10000B614(v24, qword_1000A62F0);
    (*(v10 + 16))(v13, a1, v9);
    v25 = sub_100084FA8();
    v26 = sub_100085388();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v43 = a1;
      v28 = v27;
      v42 = swift_slowAlloc();
      v46 = v42;
      *v28 = 136315138;
      sub_100084A78();
      sub_10003EB7C(&qword_1000A5AD8, &type metadata accessor for URL);
      v29 = sub_100085908();
      v30 = v4;
      v32 = v31;
      (*(v44 + 8))(v8, v30);
      (*(v10 + 8))(v13, v9);
      v33 = sub_100038A4C(v29, v32, &v46);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "Object to be previewed does not exist {url: %s}", v28, 0xCu);
      sub_100006304(v42);

      a1 = v43;
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    goto LABEL_14;
  }

  [v18 setMarkedForDeletion:1];
  swift_beginAccess();
  v39 = v2[3];
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v45 = v2[3];
  v2[3] = 0x8000000000000000;
  sub_10003AE34(0, 0, 3, a1, v40);
  v2[3] = v45;
  swift_endAccess();
  sub_10003B050(v18, v4, 1);
}

uint64_t sub_100036C04()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A62F0);
  sub_10000B614(v0, qword_1000A62F0);
  return sub_100084F98();
}

uint64_t ICArchivePreviewer.init(forArchiveAt:)(void (**a1)(char *, uint64_t))
{
  v3 = v1;
  v5 = *v1;
  v78 = sub_100005740(&qword_1000A6308, &unk_10008CA10);
  v83 = *(v78 - 8);
  v6 = *(v83 + 64);
  __chkstk_darwin(v78);
  v8 = v70 - v7;
  v87 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v84 = *(v87 - 8);
  v9 = *(v84 + 64);
  __chkstk_darwin(v87);
  v82 = v70 - v10;
  v1[3] = sub_10003D2D8(&_swiftEmptyArrayStorage);
  v11 = (v1 + 3);
  v12 = [objc_opt_self() sharedContext];
  if (!v12 || (v13 = v12, v14 = [v12 persistentContainer], v13, !v14))
  {
    if (qword_1000A5408 != -1)
    {
      goto LABEL_45;
    }

    goto LABEL_6;
  }

  v75 = v8;
  v76 = v11;
  v3[2] = v14;
  v77 = v14;
  v15 = [v77 viewContext];
  v16 = type metadata accessor for ICArchiveImporter();
  v81 = objc_allocWithZone(v16);
  ObjectType = swift_getObjectType();
  v17 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v79 = v2;
  v19 = IsAlexandriaDemoModeEnabled;
  v20 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v21 = objc_allocWithZone(v16);
  v21[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting] = 0;
  v22 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  *&v21[v22] = sub_10003D4E0(&_swiftEmptyArrayStorage);
  *&v21[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_saveBatchSize] = 32;
  v21[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v23 = &v21[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v23 = 0u;
  v23[1] = 0u;
  *&v21[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context] = v15;
  v24 = &v21[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
  *v24 = v19;
  v24[1] = v20;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 1) = 0;
  *(v24 + 16) = 2;
  v25 = &v21[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  *v25 = v17;
  v25[1] = &protocol witness table for NSFileManager;
  v86.receiver = v21;
  v86.super_class = v16;
  v26 = v15;
  v27 = objc_msgSendSuper2(&v86, "init");
  sub_100044760();

  swift_deallocPartialClassInstance();
  v28 = v79;
  v29 = ICArchiveImporter.objects(forArchiveAt:)();
  if (v28)
  {
    v30 = sub_1000847C8();
    (*(*(v30 - 8) + 8))(a1, v30);

    return v3;
  }

  v71 = v27;
  v72 = 0;
  v38 = v29[2];
  v73 = a1;
  v74 = v3;
  if (v38)
  {
    v39 = *(v84 + 16);
    v40 = *(v84 + 80);
    v70[1] = v29;
    v79 = (v40 + 32) & ~v40;
    ObjectType = v39;
    v41 = v29 + v79;
    v3 = *(v84 + 72);
    v81 = (v84 + 16);
    a1 = (v84 + 8);
    v42 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v43 = v82;
      v44 = v87;
      ObjectType(v82, v41, v87);
      v45 = sub_100084A88();
      (*a1)(v43, v44);
      v46 = *(v45 + 16);
      v47 = v42[2];
      v48 = v47 + v46;
      if (__OFADD__(v47, v46))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        swift_once();
LABEL_6:
        v31 = sub_100084FB8();
        sub_10000B614(v31, qword_1000A62F0);
        v32 = sub_100084FA8();
        v33 = sub_100085388();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "No shared note context has been set up", v34, 2u);
        }

        [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:134060 userInfo:0];
        swift_willThrow();
        v35 = sub_1000847C8();
        (*(*(v35 - 8) + 8))(a1, v35);
        v36 = v3[3];

        swift_deallocPartialClassInstance();
        return v3;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v48 <= v42[3] >> 1)
      {
        if (*(v45 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v47 <= v48)
        {
          v50 = v47 + v46;
        }

        else
        {
          v50 = v47;
        }

        v42 = sub_10000ED28(isUniquelyReferenced_nonNull_native, v50, 1, v42);
        if (*(v45 + 16))
        {
LABEL_23:
          if ((v42[3] >> 1) - v42[2] < v46)
          {
            goto LABEL_43;
          }

          swift_arrayInitWithCopy();

          if (v46)
          {
            v51 = v42[2];
            v52 = __OFADD__(v51, v46);
            v53 = v51 + v46;
            if (v52)
            {
              goto LABEL_44;
            }

            v42[2] = v53;
          }

          goto LABEL_13;
        }
      }

      if (v46)
      {
        goto LABEL_42;
      }

LABEL_13:
      v41 = v3 + v41;
      if (!--v38)
      {

        a1 = v73;
        v3 = v74;
        goto LABEL_29;
      }
    }
  }

  v42 = &_swiftEmptyArrayStorage;
LABEL_29:
  v54 = v42[2];
  v55 = v75;
  if (v54)
  {
    v85 = &_swiftEmptyArrayStorage;
    sub_10003BC80(0, v54, 0);
    v56 = v85;
    v82 = *(v84 + 16);
    v57 = v42 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v84 += 16;
    v58 = *(v84 + 56);
    v59 = v78;
    do
    {
      (v82)(v55, v57, v87);
      v60 = v55 + *(v59 + 48);
      *v60 = 0;
      *(v60 + 8) = 0;
      *(v60 + 16) = 3;
      v85 = v56;
      v62 = v56[2];
      v61 = v56[3];
      if (v62 >= v61 >> 1)
      {
        sub_10003BC80(v61 > 1, v62 + 1, 1);
        v59 = v78;
        v56 = v85;
      }

      v56[2] = v62 + 1;
      sub_10003D6C8(v55, v56 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v62);
      v57 += v58;
      --v54;
    }

    while (v54);

    a1 = v73;
    v3 = v74;
  }

  else
  {

    v56 = &_swiftEmptyArrayStorage;
  }

  v63 = v72;
  if (v56[2])
  {
    sub_100005740(&qword_1000A5CB0, &unk_10008B8B8);
    v64 = sub_100085748();
  }

  else
  {
    v64 = &_swiftEmptyDictionarySingleton;
  }

  v65 = v77;
  v85 = v64;
  sub_10003CAE4(v56, 1, &v85);
  if (!v63)
  {
    v66 = sub_1000847C8();
    (*(*(v66 - 8) + 8))(a1, v66);

    v67 = v85;
    v68 = v76;
    swift_beginAccess();
    v69 = *v68;
    *v68 = v67;

    return v3;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t ICArchivePreviewer.deinit()
{
  v1 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - v4;
  swift_beginAccess();
  v6 = *(v0 + 24);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v17 = v2 + 16;
  swift_bridgeObjectRetain_n();

  for (i = 0; v9; result = (*(v2 + 8))(v5, v1))
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v2 + 16))(v5, *(v6 + 48) + *(v2 + 72) * (v14 | (v13 << 6)), v1);
    ICArchivePreviewer.stopPreviewing(_:)(v5);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v15 = *(v0 + 24);
      *(v0 + 24) = &_swiftEmptyDictionarySingleton;

      v16 = *(v0 + 24);

      return v0;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ICArchivePreviewer.__deallocating_deinit()
{
  ICArchivePreviewer.deinit();

  return swift_deallocClassInstance();
}

uint64_t ICArchivePreviewer.Errors.errorDescription.getter(uint64_t a1)
{
  if (a1)
  {
    result = sub_100085958();
    __break(1u);
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = sub_100085068();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];

    v4 = sub_100085098();
    return v4;
  }

  return result;
}

Swift::Int sub_100037834()
{
  v2 = *v0;
  sub_100085A08();
  sub_100085028();
  return sub_100085A38();
}

uint64_t sub_100037898(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003E5E8();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000378E4()
{
  v2 = *v0;
  sub_100085A08();
  sub_100085028();
  return sub_100085A38();
}

void *sub_100037944@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_10003797C(uint64_t a1)
{
  v2 = sub_10003E5E8();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1000379B8(uint64_t a1)
{
  v2 = sub_10003E5E8();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1000379FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003E5E8();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t ICArchivePreviewer.objects.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

void sub_100037A88(void *a1, char a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000847C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v57 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = (&v51 - v17);
  swift_beginAccess();
  v19 = *(a3 + 24);
  v20 = *(v19 + 16);
  v54 = v9;
  v55 = v8;
  v60 = a4;
  if (v20 && (v21 = sub_100039054(a4), (v22 & 1) != 0))
  {
    v23 = *(v19 + 56) + 24 * v21;
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    v58 = *v23;
    v59 = v25;
    sub_1000112CC(v58, v24, v25);
  }

  else
  {
    v58 = 0;
    v24 = 0;
    v59 = 255;
  }

  swift_endAccess();
  v56 = *(v13 + 16);
  v56(v18, v60, v12);
  swift_beginAccess();
  v26 = v13;
  v27 = v12;
  if (a2)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  sub_10003ECD4(a1, a2 & 1);
  v29 = *(a3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(a3 + 24);
  *(a3 + 24) = 0x8000000000000000;
  v31 = v28;
  v32 = v27;
  sub_10003AE34(a1, 0, v31, v18, isUniquelyReferenced_nonNull_native);
  v33 = *(v26 + 8);
  v33(v18, v27);
  *(a3 + 24) = v61;
  swift_endAccess();
  LOBYTE(v18) = v59;
  if (v59)
  {
    v52 = v33;
    if (qword_1000A5408 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v46 = v58;
    sub_1000112CC(v58, v24, 0);

    v47 = *(v24 + 16);
    if (!v47)
    {
LABEL_16:
      sub_10003ECE0(v46, v24, 0);

      return;
    }

    v48 = 0;
    v49 = (v24 + 40);
    while (v48 < *(v24 + 16))
    {
      ++v48;
      v18 = *(v49 - 1);
      v50 = *v49;
      v62 = a1;
      v63 = a2 & 1;

      v18(&v62);

      v49 += 2;
      if (v47 == v48)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_10:
  v34 = sub_100084FB8();
  sub_10000B614(v34, qword_1000A62F0);
  v35 = v57;
  v56(v57, v60, v32);
  v36 = sub_100084FA8();
  v37 = sub_100085388();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62 = v60;
    *v38 = 136315138;
    v39 = v53;
    LODWORD(v56) = v37;
    sub_100084A78();
    sub_10003EB7C(&qword_1000A5AD8, &type metadata accessor for URL);
    v40 = v55;
    v41 = sub_100085908();
    v42 = v32;
    v44 = v43;
    (*(v54 + 8))(v39, v40);
    v52(v35, v42);
    v45 = sub_100038A4C(v41, v44, &v62);

    *(v38 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v36, v56, "Preview object is in unexpected state {url: %s}", v38, 0xCu);
    sub_100006304(v60);

    sub_10003ECE0(v58, v24, v59);
  }

  else
  {
    sub_10003ECE0(v58, v24, v18);

    v52(v35, v32);
  }
}

uint64_t sub_100037FD4(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v66 = a5;
  v67 = a6;
  v63 = a4;
  v64 = a2;
  v8 = sub_100084FC8();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  __chkstk_darwin(v8);
  v70 = &v58[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100084FE8();
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  __chkstk_darwin(v11);
  v65 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for ICArchiveImporter();
  v15 = objc_allocWithZone(v14);
  swift_getObjectType();
  v16 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v18 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v19 = objc_allocWithZone(v14);
  v19[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting] = 0;
  v20 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  v21 = a1;
  *&v19[v20] = sub_10003D4E0(_swiftEmptyArrayStorage);
  v22 = a3;
  *&v19[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_saveBatchSize] = 32;
  v19[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v23 = &v19[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v23 = 0u;
  v23[1] = 0u;
  *&v19[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context] = v21;
  v24 = &v19[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
  *v24 = IsAlexandriaDemoModeEnabled;
  v24[1] = v18;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 1) = 0;
  *(v24 + 16) = 2;
  v25 = &v19[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  *v25 = v16;
  v25[1] = &protocol witness table for NSFileManager;
  v79.receiver = v19;
  v79.super_class = v14;
  v26 = v21;
  v27 = objc_msgSendSuper2(&v79, "init");
  sub_100044760();

  swift_deallocPartialClassInstance();
  v28 = [objc_opt_self() inMemoryAccountInContext:v26];
  v29 = [v28 defaultFolder];
  v30 = sub_100042D18(v64, v29, &off_10009E9B0, a3);
  v32 = v31;
  v33 = v30;
  v62 = v34;
  v64 = v35;
  v36 = v63;

  aBlock = 0;
  v37 = [v26 save:&aBlock];
  v38 = aBlock;
  if (v37)
  {
    sub_100008250(0, &qword_1000A6498, OS_dispatch_queue_ptr);
    v39 = v38;
    v61 = sub_1000853B8();
    v40 = swift_allocObject();
    v60 = v33;
    v41 = v62;
    *(v40 + 16) = v33;
    *(v40 + 24) = v41;
    v42 = v64;
    *(v40 + 32) = v64;
    v43 = v32 & 1;
    *(v40 + 40) = v43;
    v59 = v43;
    *(v40 + 48) = v36;
    *(v40 + 56) = v22;
    v44 = v67;
    *(v40 + 64) = v66;
    *(v40 + 72) = v44;
    v77 = sub_10003EC6C;
    v78 = v40;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_1000389A0;
    v76 = &unk_10009FED0;
    v66 = _Block_copy(&aBlock);
    sub_10003EC84(v33, v41, v42, v43);

    v45 = v22;

    v46 = v65;
    sub_100084FD8();
    aBlock = _swiftEmptyArrayStorage;
    sub_10003EB7C(&qword_1000A64A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005740(&qword_1000A64A8, &unk_10008CD70);
    sub_10003ECF4(&qword_1000A64B0, &qword_1000A64A8, &unk_10008CD70);
    v47 = v70;
    v48 = v72;
    sub_100085538();
    v49 = v66;
    v50 = v61;
    sub_1000853C8();
    _Block_release(v49);

    sub_10003EBC4(v60, v62, v64, v59);
  }

  else
  {
    v51 = aBlock;
    v52 = sub_100084688();

    swift_willThrow();
    sub_10003EBC4(v33, v62, v64, v32 & 1);
    v48 = v72;
    v46 = v65;

    sub_100008250(0, &qword_1000A6498, OS_dispatch_queue_ptr);
    v53 = sub_1000853B8();
    v54 = swift_allocObject();
    v55 = v67;
    v54[2] = v66;
    v54[3] = v55;
    v54[4] = v52;
    v77 = sub_10003EB48;
    v78 = v54;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_1000389A0;
    v76 = &unk_10009FE80;
    v56 = _Block_copy(&aBlock);

    swift_errorRetain();

    sub_100084FD8();
    aBlock = _swiftEmptyArrayStorage;
    sub_10003EB7C(&qword_1000A64A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005740(&qword_1000A64A8, &unk_10008CD70);
    sub_10003ECF4(&qword_1000A64B0, &qword_1000A64A8, &unk_10008CD70);
    v47 = v70;
    sub_100085538();
    sub_1000853C8();

    _Block_release(v56);
  }

  (*(v71 + 8))(v47, v48);
  return (*(v68 + 8))(v46, v69);
}

void sub_10003878C(void *a1, uint64_t a2, void *a3, char a4, uint64_t a5, void *a6, void (*a7)(void *, uint64_t))
{
  v9 = a1;
  if (a4)
  {
    swift_errorRetain();
    v10 = 1;
  }

  else
  {
    v14[0] = a1;
    v14[1] = a2;
    v14[2] = a3;

    v13 = a3;
    sub_100038878(v14, a5, &v15);

    v9 = v15;
    v10 = v16;
  }

  [a6 setCompletedUnitCount:{objc_msgSend(a6, "totalUnitCount")}];
  a7(v9, v10);

  sub_1000117F8(v9, v10);
}

void sub_100038878(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = [*(a2 + 16) viewContext];
  v6 = [v4 objectID];
  v7 = [v5 objectWithID:v6];

  v14[3] = sub_100008250(0, &qword_1000A64B8, NSManagedObject_ptr);
  v14[0] = v7;
  v8 = v7;
  v9 = sub_10000DD3C(v14);
  sub_100006304(v14);
  v10 = [v9 isPasswordProtected];
  v11 = v10;
  if (v10)
  {
    sub_10003D794();
    v12 = swift_allocError();
    *v13 = 0;

    v9 = v12;
  }

  *a3 = v9;
  *(a3 + 8) = v11;
}

uint64_t sub_1000389A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1000389E4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100038A4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100038B18(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000056E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006304(v11);
  return v7;
}

unint64_t sub_100038B18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100038C24(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100085658();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100038C24(uint64_t a1, unint64_t a2)
{
  v4 = sub_100038C70(a1, a2);
  sub_100038DA0(&off_10009DC70);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100038C70(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10004CF5C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100085658();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100085168();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10004CF5C(v10, 0);
        result = sub_100085628();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100038DA0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100038E8C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100038E8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005740(&qword_1000A64C0, &qword_10008D370);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100038F80(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000847C8();
  sub_10003EB7C(&qword_1000A5C70, &type metadata accessor for URL);
  v5 = sub_100085018();
  return sub_10003B9DC(a1, v5, &type metadata accessor for URL, &qword_1000A6460, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_100039054(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  sub_10003ECF4(&qword_1000A6480, &qword_1000A58E8, &qword_10008B8B0);
  v5 = sub_100085018();

  return sub_10003B6F4(a1, v5);
}

uint64_t sub_1000390FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100039138(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100085A08();
  sub_100085118();
  v6 = sub_100085A38();

  return sub_10003B8B8(a1, a2, v6);
}

unint64_t sub_1000391B0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1000859F8();

  return sub_10003B970(a1, v4);
}

unint64_t sub_1000391F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100084918();
  sub_10003EB7C(&qword_1000A6418, &type metadata accessor for UUID);
  v5 = sub_100085018();
  return sub_10003B9DC(a1, v5, &type metadata accessor for UUID, &qword_1000A6420, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_1000392C8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_100085098();
  sub_100085A08();
  sub_100085118();
  v4 = sub_100085A38();

  return sub_10003BB7C(a1, v4);
}

void *sub_10003935C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000ED4C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100005740(&qword_1000A5A78, &qword_10008B598);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100039460(uint64_t a1)
{
  v69 = _s3TagVMa();
  v4 = *(v69 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v69);
  v67 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005740(&qword_1000A63E8, &qword_10008CCA8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v66 = &v56 - v13;
  result = __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v17 = *(a1 + 16);
  v18 = *v2;
  v19 = *(*v2 + 16);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  v21 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v11;
  if (!isUniquelyReferenced_nonNull_native || (v23 = v18[3] >> 1, v23 < v20))
  {
    if (v19 <= v20)
    {
      v24 = v19 + v17;
    }

    else
    {
      v24 = v19;
    }

    v18 = sub_10000EE80(isUniquelyReferenced_nonNull_native, v24, 1, v18);
    v23 = v18[3] >> 1;
  }

  v25 = v18[2];
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v26 = v23 - v25;
  result = sub_100010FFC(&v70, v18 + v20 + v19 * v25, v23 - v25, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = v18[2];
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    v18[2] = v30;
  }

  if (result != v26)
  {
    result = sub_100010FF4();
LABEL_14:
    *v2 = v18;
    return result;
  }

LABEL_17:
  v65 = v18[2];
  v27 = v71;
  v58 = v71;
  v59 = v70;
  v30 = v73;
  v56 = v72;
  v31 = v74;
  if (v74)
  {
    v32 = v73;
LABEL_27:
    v36 = (v31 - 1) & v31;
    sub_10001172C(*(v59 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v16);
    v61 = *(v1 + 56);
    v61(v16, 0, 1, v69);
    v35 = v32;
    while (1)
    {
      v37 = v66;
      sub_100005888(v16, v66, &qword_1000A63E8, &qword_10008CCA8);
      v38 = *(v1 + 48);
      v1 += 48;
      v64 = v38;
      if (v38(v37, 1, v69) == 1)
      {
        break;
      }

      v57 = (v56 + 64) >> 6;
      v60 = v4 + 56;
      v39 = v65;
      while (1)
      {
        sub_10003DA60(v37);
        v43 = v18[3];
        v44 = v43 >> 1;
        v65 = v39;
        if ((v43 >> 1) < v39 + 1)
        {
          v18 = sub_10000EE80(v43 > 1, v39 + 1, 1, v18);
          v44 = v18[3] >> 1;
        }

        v45 = v68;
        sub_100005888(v16, v68, &qword_1000A63E8, &qword_10008CCA8);
        if (v64(v45, 1, v69) != 1)
        {
          break;
        }

        v46 = v35;
        v47 = v68;
LABEL_37:
        sub_10003DA60(v47);
        v40 = v65;
        v35 = v46;
LABEL_32:
        v41 = v69;
        v18[2] = v40;
        v37 = v66;
        sub_100005888(v16, v66, &qword_1000A63E8, &qword_10008CCA8);
        v42 = v64(v37, 1, v41);
        v39 = v65;
        if (v42 == 1)
        {
          goto LABEL_29;
        }
      }

      v62 = v18 + v20;
      v48 = v65;
      if (v65 <= v44)
      {
        v48 = v44;
      }

      v63 = v48;
      v47 = v68;
      while (1)
      {
        v52 = v67;
        sub_10003DAC8(v47, v67);
        if (v65 == v63)
        {
          sub_10003DB2C(v52);
          v40 = v63;
          v65 = v63;
          goto LABEL_32;
        }

        v4 = v65;
        sub_10003DA60(v16);
        sub_10003DAC8(v52, &v62[v4 * v19]);
        if (!v36)
        {
          break;
        }

        v53 = v35;
LABEL_52:
        v55 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
        sub_10001172C(*(v59 + 48) + (v55 | (v53 << 6)) * v19, v16);
        v49 = 0;
        v35 = v53;
LABEL_42:
        v65 = v4 + 1;
        v50 = v69;
        v61(v16, v49, 1, v69);
        v47 = v68;
        sub_100005888(v16, v68, &qword_1000A63E8, &qword_10008CCA8);
        v51 = v64(v47, 1, v50);
        v46 = v35;
        if (v51 == 1)
        {
          goto LABEL_37;
        }
      }

      if (v57 <= (v35 + 1))
      {
        v54 = v35 + 1;
      }

      else
      {
        v54 = v57;
      }

      while (1)
      {
        v53 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v53 >= v57)
        {
          v36 = 0;
          v49 = 1;
          v35 = v54 - 1;
          goto LABEL_42;
        }

        v36 = *(v58 + 8 * v53);
        ++v35;
        if (v36)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_54:
      v61 = *(v1 + 56);
      v61(v16, 1, 1, v69);
      v36 = 0;
    }

LABEL_29:
    sub_10003DA60(v16);
    sub_100010FF4();
    result = sub_10003DA60(v37);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (v56 + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = (v56 + 64) >> 6;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_54;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100039A50(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v50 = &v44 - v9;
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_100005740(&qword_1000A5CB0, &unk_10008B8B8);
  v49 = a2;
  result = sub_100085738();
  v13 = result;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v45 = v2;
    v46 = (v7 + 16);
    v47 = v10;
    v48 = v7;
    v51 = (v7 + 32);
    v20 = result + 64;
    v55 = v6;
    v21 = v50;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v48 + 72) * v28;
      v30 = 24 * v28;
      v53 = *(v48 + 72);
      v54 = v25;
      if (v49)
      {
        (*v51)(v21, v29, v55);
        v31 = *(v10 + 56) + v30;
        v32 = *(v31 + 8);
        v52 = *v31;
        v33 = *(v31 + 16);
      }

      else
      {
        (*v46)(v21, v29, v55);
        v34 = *(v10 + 56) + v30;
        v32 = *(v34 + 8);
        v33 = *(v34 + 16);
        v52 = *v34;
        sub_1000112CC(v52, v32, v33);
      }

      v35 = *(v13 + 40);
      sub_10003ECF4(&qword_1000A6480, &qword_1000A58E8, &qword_10008B8B0);
      result = sub_100085018();
      v36 = -1 << *(v13 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v20 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v21 = v50;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v20 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v20 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v21 = v50;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v51)(*(v13 + 48) + v53 * v22, v21, v55);
      v23 = *(v13 + 56) + 24 * v22;
      *v23 = v52;
      *(v23 + 8) = v32;
      *(v23 + 16) = v33;
      ++*(v13 + 16);
      v10 = v47;
      v18 = v54;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v43 = 1 << *(v10 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v15, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v43;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_100039E64(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_100084918();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100005740(&qword_1000A5C80, &qword_10008F8A0);
  v48 = a2;
  result = sub_100085738();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      sub_10003EB7C(&qword_1000A6418, &type metadata accessor for UUID);
      result = sub_100085018();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10003A24C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005740(&qword_1000A5CA0, &unk_10008B8A0);
  v37 = a2;
  result = sub_100085738();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_10001C864(v23, v38);
      }

      else
      {
        sub_1000056E4(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_100085098();
      sub_100085A08();
      sub_100085118();
      v26 = sub_100085A38();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_10001C864(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10003A51C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005740(&qword_1000A5C58, &qword_10008B868);
  result = sub_100085738();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_1000859F8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10003A7BC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100005740(a3, a4);
  v41 = a2;
  result = sub_100085738();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_100085A08();
      sub_100085118();
      result = sub_100085A38();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_10003AA58(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000847C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100005740(&qword_1000A5CA8, &qword_10008CD30);
  v43 = a2;
  result = sub_100085738();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
        swift_errorRetain();
      }

      v29 = *(v14 + 40);
      sub_10003EB7C(&qword_1000A5C70, &type metadata accessor for URL);
      result = sub_100085018();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

void sub_10003AE34(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v32 = a1;
  v33 = a2;
  v10 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = *v5;
  v17 = sub_100039054(a4);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      sub_10002BC9C();
      goto LABEL_9;
    }

    sub_100039A50(v20, a5 & 1);
    v23 = *v6;
    v24 = sub_100039054(a4);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    sub_100085978();
    __break(1u);
    return;
  }

LABEL_9:
  v26 = v33;
  v27 = *v6;
  if (v21)
  {
    v28 = v27[7] + 24 * v17;
    v29 = *v28;
    v30 = *(v28 + 8);
    *v28 = v32;
    *(v28 + 8) = v26;
    v31 = *(v28 + 16);
    *(v28 + 16) = a3;

    sub_10003B050(v29, v30, v31);
  }

  else
  {
    (*(v11 + 16))(v14, a4, v10);
    sub_10003B4F4(v17, v14, v32, v26, a3, v27);
  }
}

uint64_t sub_10003B038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10003B050(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

_OWORD *sub_10003B0C4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000392C8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10002C1D0();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10003A24C(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1000392C8(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_100085978();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_100006304(v20);

    return sub_10001C864(a1, v20);
  }

  else
  {
    sub_10003B5D4(v8, a2, a1, v19);

    return a2;
  }
}

unint64_t sub_10003B204(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000391B0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_10002C350();
    result = v17;
    goto LABEL_8;
  }

  sub_10003A51C(v14, a3 & 1);
  v18 = *v4;
  result = sub_1000391B0(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_100085978();
  __break(1u);
  return result;
}

uint64_t sub_10003B328(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000847C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100038F80(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10002C608();
      goto LABEL_7;
    }

    sub_10003AA58(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_100038F80(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10003B63C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_100085978();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_10003B4F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = a6[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

_OWORD *sub_10003B5D4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10001C864(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_10003B63C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000847C8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10003B6F4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v18 - v7;
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10003ECF4(&qword_1000A64C8, &qword_1000A58E8, &qword_10008B8B0);
      v16 = sub_100085058();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10003B8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100085948())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10003B970(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10003B9DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_10003EB7C(v24, v25);
      v20 = sub_100085058();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_10003BB7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100085098();
      v9 = v8;
      if (v7 == sub_100085098() && v9 == v10)
      {
        break;
      }

      v12 = sub_100085948();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

size_t sub_10003BC80(size_t a1, int64_t a2, char a3)
{
  result = sub_10003C168(a1, a2, a3, *v3, &qword_1000A6488, &qword_10008CD58, &qword_1000A6308, &unk_10008CA10);
  *v3 = result;
  return result;
}

char *sub_10003BCC0(char *a1, int64_t a2, char a3)
{
  result = sub_10003BF58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10003BCE0(size_t a1, int64_t a2, char a3)
{
  result = sub_10003C908(a1, a2, a3, *v3, &qword_1000A59E0, &qword_10008B500, _s3TagVMa);
  *v3 = result;
  return result;
}

size_t sub_10003BD24(size_t a1, int64_t a2, char a3)
{
  result = sub_10003C908(a1, a2, a3, *v3, &qword_1000A6408, &unk_10008CCD0, _s14AudioRecordingV8FragmentVMa);
  *v3 = result;
  return result;
}

size_t sub_10003BD68(size_t a1, int64_t a2, char a3)
{
  result = sub_10003C908(a1, a2, a3, *v3, &qword_1000A6410, &unk_10008CCE0, _s8ActivityVMa);
  *v3 = result;
  return result;
}

char *sub_10003BDAC(char *a1, int64_t a2, char a3)
{
  result = sub_10003C064(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10003BDCC(size_t a1, int64_t a2, char a3)
{
  result = sub_10003C168(a1, a2, a3, *v3, &qword_1000A59E8, &qword_10008B508, &qword_1000A59F0, &qword_10008B510);
  *v3 = result;
  return result;
}

void *sub_10003BE0C(void *a1, int64_t a2, char a3)
{
  result = sub_10003C350(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003BE2C(char *a1, int64_t a2, char a3)
{
  result = sub_10003C484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003BE4C(char *a1, int64_t a2, char a3)
{
  result = sub_10003C588(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003BE6C(void *a1, int64_t a2, char a3)
{
  result = sub_10003C68C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003BE8C(void *a1, int64_t a2, char a3)
{
  result = sub_10003C7D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10003BEAC(size_t a1, int64_t a2, char a3)
{
  result = sub_10003C908(a1, a2, a3, *v3, &qword_1000A5A50, &qword_10008B570, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

size_t sub_10003BEF0(size_t a1, int64_t a2, char a3)
{
  result = sub_10003C908(a1, a2, a3, *v3, &qword_1000A6400, &qword_10008CCC8, _s14AudioRecordingV17TranscriptSegmentVMa);
  *v3 = result;
  return result;
}

char *sub_10003BF58(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005740(&qword_1000A59D8, &qword_10008CCA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003C064(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005740(&qword_1000A6478, &unk_10008CD48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_10003C168(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005740(a5, a6);
  v16 = *(sub_100005740(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100005740(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_10003C350(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005740(&qword_1000A63F0, &unk_10008CCB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005740(&qword_1000A5AD0, &unk_10008B5E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003C484(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005740(&qword_1000A63F8, &qword_10008CCC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10003C588(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005740(&qword_1000A6448, &unk_10008CD08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10003C68C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005740(&qword_1000A6430, &qword_10008CCF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005740(&qword_1000A6438, &qword_10008CCF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003C7D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005740(&qword_1000A6468, &qword_10008CD38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005740(&qword_1000A6470, &qword_10008CD40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10003C908(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005740(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10003CAE4(uint64_t a1, char a2, uint64_t *a3)
{
  v71 = a3;
  v6 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  __chkstk_darwin(v6);
  v72 = &v63 - v8;
  v9 = sub_100005740(&qword_1000A6308, &unk_10008CA10);
  v68 = *(v9 - 8);
  v10 = *(v68 + 64);
  v11 = __chkstk_darwin(v9);
  v67 = &v63 - v12;
  v65 = *(a1 + 16);
  if (!v65)
  {
  }

  v63 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v67;
  v14 = v67 + *(v11 + 48);
  v15 = *(v68 + 80);
  v66 = a1;
  v16 = (v69 + 32);
  v64 = a1 + ((v15 + 32) & ~v15);
  sub_100005888(v64, v67, &qword_1000A6308, &unk_10008CA10);
  v17 = *v16;
  v18 = v72;
  (*v16)(v72, v13, v70);
  v20 = *v14;
  v19 = *(v14 + 8);
  v21 = *(v14 + 16);
  v22 = *v71;
  v24 = sub_100039054(v18);
  v25 = *(v22 + 16);
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = v23;
  if (*(v22 + 24) >= v27)
  {
    if (a2)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v35 = v24;
      sub_10002BC9C();
      v24 = v35;
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  v29 = v71;
  sub_100039A50(v27, a2 & 1);
  v30 = *v29;
  v31 = sub_100039054(v72);
  if ((v28 & 1) == (v32 & 1))
  {
    v24 = v31;
    if ((v28 & 1) == 0)
    {
LABEL_14:
      v36 = v72;
      v37 = *v71;
      v38 = v24;
      *(*v71 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      v17(v37[6] + *(v69 + 72) * v24, v36, v70);
      v39 = v37[7] + 24 * v38;
      *v39 = v20;
      *(v39 + 8) = v19;
      *(v39 + 16) = v21;
      v40 = v37[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v37[2] = v42;
      if (v65 != 1)
      {
        v43 = 1;
        while (v43 < *(v66 + 16))
        {
          v44 = v67;
          sub_100005888(v64 + *(v68 + 72) * v43, v67, &qword_1000A6308, &unk_10008CA10);
          v45 = *v16;
          v46 = v72;
          (*v16)(v72, v44, v70);
          v20 = *v14;
          v19 = *(v14 + 8);
          v21 = *(v14 + 16);
          v47 = *v71;
          v48 = sub_100039054(v46);
          v50 = *(v47 + 16);
          v51 = (v49 & 1) == 0;
          v41 = __OFADD__(v50, v51);
          v52 = v50 + v51;
          if (v41)
          {
            goto LABEL_26;
          }

          v53 = v49;
          if (*(v47 + 24) < v52)
          {
            v54 = v71;
            sub_100039A50(v52, 1);
            v55 = *v54;
            v48 = sub_100039054(v72);
            if ((v53 & 1) != (v56 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v53)
          {
            goto LABEL_11;
          }

          v57 = v72;
          v58 = *v71;
          *(*v71 + 8 * (v48 >> 6) + 64) |= 1 << v48;
          v59 = v48;
          v45(v58[6] + *(v69 + 72) * v48, v57, v70);
          v60 = v58[7] + 24 * v59;
          *v60 = v20;
          *(v60 + 8) = v19;
          *(v60 + 16) = v21;
          v61 = v58[2];
          v41 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v41)
          {
            goto LABEL_27;
          }

          ++v43;
          v58[2] = v62;
          if (v65 == v43)
          {
          }
        }

        goto LABEL_25;
      }
    }

LABEL_11:
    v33 = swift_allocError();
    swift_willThrow();

    v75 = v33;
    swift_errorRetain();
    sub_100005740(&qword_1000A5B98, &unk_10008B760);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_10003B050(v20, v19, v21);
      (*(v69 + 8))(v72, v70);
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_100085978();
  __break(1u);
LABEL_29:
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_100085638(30);
  v76._object = 0x8000000100086ED0;
  v76._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100085158(v76);
  sub_1000856F8();
  v77._countAndFlagsBits = 39;
  v77._object = 0xE100000000000000;
  sub_100085158(v77);
  result = sub_100085708();
  __break(1u);
  return result;
}

id sub_10003D07C(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  v10 = a4;
  v11 = type metadata accessor for ICArchiveImporter();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting] = 0;
  v13 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  *&v12[v13] = sub_10003D4E0(_swiftEmptyArrayStorage);
  *&v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_saveBatchSize] = 32;
  v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v14 = &v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v14 = 0u;
  v14[1] = 0u;
  *&v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context] = a1;
  if (v10 == 2 || (a4 & 1) == 0)
  {
    v23 = &v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
    v24 = *a2;
    v25 = *(a2 + 16);
    *(v23 + 16) = *(a2 + 32);
    *v23 = v24;
    *(v23 + 1) = v25;
    v26 = a1;
    sub_10003EA58(a2, v31);
  }

  else
  {
    v15 = a1;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v17 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v18 = &v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
    *v18 = IsAlexandriaDemoModeEnabled;
    v18[1] = v17;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = 0;
    v18[32] = 1;
    v18[33] = a5;
    if (qword_1000A5418 != -1)
    {
      swift_once();
    }

    v19 = sub_100084FB8();
    sub_10000B614(v19, qword_1000A6608);
    v20 = sub_100084FA8();
    v21 = sub_100085368();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "archiver init", v22, 2u);
    }
  }

  v27 = &v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  *v27 = a3;
  v27[1] = &protocol witness table for NSFileManager;
  v30.receiver = v12;
  v30.super_class = v11;
  v28 = objc_msgSendSuper2(&v30, "init");
  sub_100044760();
  sub_10003EAB4(a2);

  return v28;
}

unint64_t sub_10003D2D8(uint64_t a1)
{
  v2 = sub_100005740(&qword_1000A6308, &unk_10008CA10);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100005740(&qword_1000A5CB0, &unk_10008B8B8);
    v8 = sub_100085748();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005888(v10, v6, &qword_1000A6308, &unk_10008CA10);
      result = sub_100039054(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 24 * v14;
      v18 = v9[16];
      *v17 = *v9;
      *(v17 + 16) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003D4E0(uint64_t a1)
{
  v2 = sub_100005740(&qword_1000A6490, &unk_10008CD60);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100005740(&qword_1000A5CA8, &qword_10008CD30);
    v8 = sub_100085748();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005888(v10, v6, &qword_1000A6490, &unk_10008CD60);
      result = sub_100038F80(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1000847C8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10003D6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A6308, &unk_10008CA10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003D73C()
{
  result = qword_1000A6310;
  if (!qword_1000A6310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6310);
  }

  return result;
}

unint64_t sub_10003D794()
{
  result = qword_1000A6318;
  if (!qword_1000A6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6318);
  }

  return result;
}

unint64_t sub_10003D7EC()
{
  result = qword_1000A6320;
  if (!qword_1000A6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6320);
  }

  return result;
}

unint64_t sub_10003D844()
{
  result = qword_1000A6328;
  if (!qword_1000A6328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6328);
  }

  return result;
}

unint64_t sub_10003D89C()
{
  result = qword_1000A6330;
  if (!qword_1000A6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6330);
  }

  return result;
}

unint64_t sub_10003D8F4()
{
  result = qword_1000A6338;
  if (!qword_1000A6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6338);
  }

  return result;
}

uint64_t sub_10003D97C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10003D998(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003D9AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003D9F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10003DA38(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}