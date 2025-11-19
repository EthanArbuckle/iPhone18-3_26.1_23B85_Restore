uint64_t sub_100001958@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100014118();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_100014128();
  v5 = sub_1000140E8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_1000140F8();
  sub_100001F74(&qword_100021580, &qword_100015030);
  v8 = *(sub_100014078() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100014F00;
  sub_100001FBC(&qword_100021588, &type metadata accessor for PRRenderingConfiguration);

  sub_100014068();
  sub_100001FBC(&qword_100021590, &type metadata accessor for PREditingConfiguration);

  sub_100014068();

  *a1 = v11;
  return result;
}

id sub_100001BB4(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100001BF8()
{
  [objc_allocWithZone(type metadata accessor for EmojiAssetUpdater()) init];
  v0 = sub_100001F74(&qword_100021560, &qword_100014F10);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_100014108();
  sub_1000020FC(&qword_100021578);
  sub_1000140A8();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001D5C();
  sub_1000020FC(&qword_100021558);
  sub_100014088();
  return 0;
}

unint64_t sub_100001D5C()
{
  result = qword_100021550;
  if (!qword_100021550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021550);
  }

  return result;
}

uint64_t sub_100001DB0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001E98(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return a2();
}

void *sub_100001F18@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001F74(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001FBC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100002010(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002020(uint64_t a1, int a2)
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

uint64_t sub_100002040(uint64_t result, int a2, int a3)
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

void sub_10000207C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000020FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100001DB0(&qword_100021560, &qword_100014F10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id EmojiAssetUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmojiAssetUpdater.init()()
{
  sub_1000140C8();
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_maxDescriptorCount] = 20;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_currentVersion] = 6;
  v1 = OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_configurationProvider;
  v2 = sub_100014008();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *&v0[v1] = sub_100013FF8();
  v5 = OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_serializer;
  v6 = sub_100013D08();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&v0[v5] = sub_100013CF8();

  sub_100013CD8();

  v10.receiver = v0;
  v10.super_class = type metadata accessor for EmojiAssetUpdater();
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t type metadata accessor for EmojiAssetUpdater()
{
  result = qword_100021640;
  if (!qword_100021640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void EmojiAssetUpdater.updateDescriptors(_:completion:)(uint64_t a1, void (*a2)(void *, void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_100001F74(&qword_1000215B0, qword_100015070);
  v186 = *(v8 - 8);
  v187 = v8;
  v9 = *(v186 + 64);
  v10 = (__chkstk_darwin)();
  v185 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v190 = &v165 - v13;
  __chkstk_darwin(v12);
  v184 = &v165 - v14;
  v192 = sub_100013F18();
  v15 = *(v192 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v192);
  v175 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v165 - v20;
  v22 = __chkstk_darwin(v19);
  *&v174 = &v165 - v23;
  v24 = __chkstk_darwin(v22);
  v191 = &v165 - v25;
  v26 = __chkstk_darwin(v24);
  v181 = &v165 - v27;
  __chkstk_darwin(v26);
  v29 = &v165 - v28;
  v176 = OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_logger;
  v30 = sub_1000140B8();
  v31 = sub_100014288();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Updating descriptors...", v32, 2u);
  }

  v195 = &_swiftEmptyArrayStorage;
  v196 = &_swiftEmptySetSingleton;
  v169 = *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_configurationProvider);
  v182 = sub_100013FD8();
  LODWORD(v183) = _UISolariumEnabled();
  v33 = *(a1 + 16);
  v188 = a1;
  v189 = v4;
  v173 = v21;
  v166 = a2;
  v165 = a3;
  if (v33)
  {
    v34 = sub_100005208(1869768040, 0xE400000000000000);
    if (v35)
    {
      v168 = *(*(a1 + 56) + 8 * v34);
      v36 = v168;
      v37 = sub_100003A64(v36);
      if (v37)
      {
        v38 = v37;
        if (!*(v37 + 16) || (v39 = sub_100005208(0x6E6F6973726576, 0xE700000000000000), (v40 & 1) == 0) || (v194 = *(*(v38 + 56) + 8 * v39), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0) || v193 != 6)
        {

LABEL_23:
          v52 = v168;
          goto LABEL_24;
        }

        if (*(v38 + 16) && (v41 = sub_100005208(0x6F7265486163696DLL, 0xE800000000000000), (v42 & 1) != 0))
        {
          v43 = *(*(v38 + 56) + 8 * v41);
          swift_unknownObjectRetain();

          v194 = v43;
          if ((swift_dynamicCast() & 1) != 0 && v183 == v193)
          {
            v44 = sub_1000140B8();
            v45 = sub_1000142A8();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              *v46 = 0;
              _os_log_impl(&_mh_execute_header, v44, v45, "Hero descriptor unchanged", v46, 2u);
            }

            v4 = v36;
            sub_1000141E8();
            if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v164 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_100014208();
            }

            sub_100014218();
            v178 = v195;
            v47 = [v4 identifier];
            v48 = sub_100014188();
            v50 = v49;

            sub_1000052C4(&v194, v48, v50);

            goto LABEL_42;
          }
        }

        else
        {
        }
      }

      goto LABEL_23;
    }
  }

  v52 = 0;
LABEL_24:
  v53 = v52;
  v54 = sub_1000140B8();
  v55 = sub_1000142A8();

  v56 = os_log_type_enabled(v54, v55);
  v168 = v52;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v194 = v58;
    *v57 = 136315138;
    if (v52)
    {
      v59 = 0x4E4943414C504552;
    }

    else
    {
      v59 = 0x676E69646C697542;
    }

    if (v52)
    {
      v60 = 0xE900000000000047;
    }

    else
    {
      v60 = 0xE800000000000000;
    }

    v61 = sub_100004C50(v59, v60, &v194);
    a1 = v188;

    *(v57 + 4) = v61;
    v4 = v189;
    _os_log_impl(&_mh_execute_header, v54, v55, "%s hero descriptor", v57, 0xCu);
    sub_100006320(v58);
  }

  v62 = v29;
  sub_100013FC8();
  v63 = sub_100005D08(1869768040, 0xE400000000000000, 0, 1);
  v64 = sub_100004200(1869768040, 0xE400000000000000, v62, v63);
  if (v64)
  {
    v65 = v64;
    v66 = objc_allocWithZone(PRPosterDescriptorGalleryAssetLookupInfo);
    if (v183)
    {
      v67 = sub_100014178();
      v68 = &selRef_initWithMicaAssetIdentifier_;
    }

    else
    {
      v67 = sub_100014178();
      v68 = &selRef_initWithAssetCatalogIdentifier_;
    }

    v4 = [v66 *v68];

    v79 = [objc_opt_self() galleryOptionsWithAssetLookupInfo:v4];
    [v65 setPreferredGalleryOptions:v79];

    isa = sub_100014228().super.super.isa;
    v81 = sub_100014178();
    [v65 setObject:isa forUserInfoKey:v81];

    v50 = v65;
    sub_1000141E8();
    if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_120;
    }

    goto LABEL_39;
  }

  v183 = v63;
  v69 = v181;
  v70 = v192;
  (*(v15 + 16))(v181, v62, v192);
  v50 = sub_1000140B8();
  v71 = sub_100014298();
  if (os_log_type_enabled(v50, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v194 = v73;
    *v72 = 136315138;
    v74 = sub_100013EB8();
    v4 = v75;
    v180 = v62;
    v76 = v69;
    v77 = *(v15 + 8);
    v77(v76, v70);
    v78 = sub_100004C50(v74, v4, &v194);

    *(v72 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v50, v71, "Couldn't create hero descriptor, configuration %s, skipping it", v72, 0xCu);
    sub_100006320(v73);

    v77(v180, v70);
  }

  else
  {

    v86 = *(v15 + 8);
    v86(v69, v70);
    v86(v62, v70);
  }

  v178 = &_swiftEmptyArrayStorage;
  a1 = v188;
LABEL_42:
  v62 = v191;
  v87 = v182;
  v181 = *(v182 + 16);
  if (v181)
  {
    v63 = 0;
    v179 = (v182 + ((*(v15 + 80) + 32) & ~*(v15 + 80)));
    v183 = (v15 + 16);
    v180 = (v15 + 8);
    *&v51 = 136315138;
    v167 = v51;
    v177 = v15;
    do
    {
      if (v63 >= *(v87 + 16))
      {
        goto LABEL_119;
      }

      v88 = *(v15 + 16);
      v88(v62, &v179[*(v15 + 72) * v63], v192);
      v50 = sub_100013EB8();
      v90 = v89;
      v91 = v196;
      if (v196[2])
      {
        v92 = v196[5];
        sub_100014418();
        sub_1000141B8();
        v93 = sub_100014428();
        v94 = -1 << *(v91 + 32);
        v4 = v93 & ~v94;
        if ((*(v91 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4))
        {
          v95 = ~v94;
          while (1)
          {
            v96 = (v91[6] + 16 * v4);
            v97 = *v96 == v50 && v96[1] == v90;
            if (v97 || (sub_1000143D8() & 1) != 0)
            {
              break;
            }

            v4 = (v4 + 1) & v95;
            if (((*(v91 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4) & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          v62 = v191;
          (*v180)(v191, v192);

          goto LABEL_45;
        }
      }

LABEL_57:
      if (*(a1 + 16))
      {
        v98 = sub_100005208(v50, v90);
        if (v99)
        {
          v100 = *(*(a1 + 56) + 8 * v98);
          v101 = sub_100003A64(v100);
          if (v101)
          {
            v102 = v101;
            if (*(v101 + 16) && (v103 = sub_100005208(0x6E6F6973726576, 0xE700000000000000), (v104 & 1) != 0))
            {
              v105 = *(*(v102 + 56) + 8 * v103);
              swift_unknownObjectRetain();

              v194 = v105;
              if ((swift_dynamicCast() & 1) != 0 && v193 == 6)
              {
                v4 = v100;
                sub_1000141E8();
                if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v120 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_100014208();
                }

                sub_100014218();
                v106 = v195;
                sub_1000052C4(&v194, v50, v90);

                goto LABEL_73;
              }
            }

            else
            {
            }
          }
        }
      }

      v4 = sub_100005D08(v50, v90, 0, 1);

      v62 = v191;
      v107 = sub_100004200(v50, v90, v191, v4);

      if (!v107)
      {

        v110 = v174;
        v111 = v192;
        v88(v174, v62, v192);
        v50 = sub_1000140B8();
        v112 = sub_100014298();
        if (os_log_type_enabled(v50, v112))
        {
          v113 = v110;
          v114 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v194 = v171;
          *v114 = v167;
          v170 = sub_100013EB8();
          v116 = v115;
          v172 = *v180;
          v172(v113, v111);
          v117 = sub_100004C50(v170, v116, &v194);

          *(v114 + 4) = v117;
          _os_log_impl(&_mh_execute_header, v50, v112, "Couldn't create descriptor for configuration %s, skipping it", v114, 0xCu);
          sub_100006320(v171);
          v118 = v188;

          v172(v62, v192);
          a1 = v118;
        }

        else
        {

          v4 = v180;
          v119 = *v180;
          (*v180)(v110, v111);
          v119(v62, v111);
        }

LABEL_45:
        v15 = v177;
        v87 = v182;
        goto LABEL_46;
      }

      v108 = v107;
      sub_1000141E8();
      if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100014208();
      }

      sub_100014218();
      v106 = v195;
      sub_1000052C4(&v194, v50, v90);

      a1 = v188;
LABEL_73:
      v15 = v177;
      v62 = v191;
      v87 = v182;
      v178 = v106;
      if (v106 >> 62)
      {
        v109 = sub_100014388();
      }

      else
      {
        v109 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      (*v180)(v62, v192);
      if (v109 == 20)
      {
        break;
      }

LABEL_46:
      ++v63;
    }

    while (v63 != v181);
  }

  v121 = sub_100013FE8();
  a1 = v192;
  v183 = *(v121 + 16);
  if (v183)
  {
    v63 = 0;
    v181 = *(v187 + 48);
    v180 = (v121 + ((*(v186 + 80) + 32) & ~*(v186 + 80)));
    v179 = (v15 + 32);
    v191 = (v15 + 8);
    v177 = (v15 + 16);
    *&v122 = 136315138;
    v174 = v122;
    v15 = v173;
    v182 = v121;
    while (1)
    {
      if (v63 >= *(v121 + 16))
      {
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        sub_100014208();
LABEL_39:
        sub_100014218();
        v178 = v195;
        v82 = [v50 identifier];
        v83 = sub_100014188();
        v85 = v84;

        sub_1000052C4(&v194, v83, v85);

        (*(v15 + 8))(v62, v192);
        goto LABEL_42;
      }

      v123 = v184;
      sub_1000062B0(&v180[*(v186 + 72) * v63], v184);
      v124 = *(v123 + v181);
      v125 = v187;
      v126 = *(v187 + 48);
      v127 = *v179;
      v128 = v190;
      (*v179)(v190, v123, a1);
      *(v128 + v126) = v124;
      v129 = v185;
      sub_1000062B0(v128, v185);
      v127(v15, v129, a1);
      sub_1000062B0(v128, v129);
      v4 = *(v129 + *(v125 + 48));
      v62 = *v191;
      (*v191)(v129, a1);
      v50 = sub_100013EB8();
      v131 = v130;
      v132 = v196;
      if (v196[2])
      {
        v133 = v196[5];
        sub_100014418();
        sub_1000141B8();
        v134 = sub_100014428();
        v135 = -1 << *(v132 + 32);
        v136 = v134 & ~v135;
        if ((*(v132 + ((v136 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v136))
        {
          v137 = ~v135;
          do
          {
            v138 = (v132[6] + 16 * v136);
            v139 = *v138 == v50 && v138[1] == v131;
            if (v139 || (sub_1000143D8() & 1) != 0)
            {
              goto LABEL_113;
            }

            v136 = (v136 + 1) & v137;
          }

          while (((*(v132 + ((v136 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v136) & 1) != 0);
        }
      }

      v140 = v188;
      if (*(v188 + 16))
      {
        v141 = sub_100005208(v50, v131);
        if (v142)
        {
          v143 = *(*(v140 + 56) + 8 * v141);
          v144 = sub_100003A64(v143);
          if (v144)
          {
            v145 = v144;
            if (*(v144 + 16) && (v146 = sub_100005208(0x6E6F6973726576, 0xE700000000000000), (v147 & 1) != 0))
            {
              v148 = *(*(v145 + 56) + 8 * v146);
              swift_unknownObjectRetain();

              v194 = v148;
              if ((swift_dynamicCast() & 1) != 0 && v193 == 6)
              {
                v4 = v143;
                sub_1000141E8();
                if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v163 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_100014208();
                }

                sub_100014218();
                v178 = v195;
                sub_1000052C4(&v194, v50, v131);
                goto LABEL_112;
              }
            }

            else
            {
            }
          }
        }
      }

      v4 = sub_100005D08(v50, v131, v4, 0);

      v149 = sub_100004200(v50, v131, v15, v4);

      if (v149)
      {
        break;
      }

      v152 = v175;
      a1 = v192;
      (*v177)(v175, v15, v192);
      v50 = sub_1000140B8();
      v153 = sub_100014298();
      if (os_log_type_enabled(v50, v153))
      {
        v154 = v152;
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v194 = v156;
        *v155 = v174;
        v157 = sub_100013EB8();
        v159 = v158;
        (v62)(v154, v192);
        v160 = v157;
        v15 = v173;
        v161 = sub_100004C50(v160, v159, &v194);

        *(v155 + 4) = v161;
        _os_log_impl(&_mh_execute_header, v50, v153, "Couldn't create descriptor for configuration %s, skipping it", v155, 0xCu);
        sub_100006320(v156);
        a1 = v192;

        v151 = v15;
        goto LABEL_114;
      }

      (v62)(v152, a1);
      (v62)(v15, a1);
LABEL_84:
      sub_100007CF4(v190, &qword_1000215B0, qword_100015070);
      v121 = v182;
      if (++v63 == v183)
      {
        goto LABEL_117;
      }
    }

    v150 = v149;
    sub_1000141E8();
    if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v162 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100014208();
    }

    sub_100014218();
    v178 = v195;
    sub_1000052C4(&v194, v50, v131);

LABEL_112:
LABEL_113:

    v151 = v15;
    a1 = v192;
LABEL_114:
    (v62)(v151, a1);
    goto LABEL_84;
  }

LABEL_117:

  v166(v178, 0);
}

unint64_t sub_100003A64(void *a1)
{
  v20 = 0;
  v2 = [a1 loadUserInfoWithError:&v20];
  v3 = v20;
  if (v2)
  {
    v4 = v2;
    v5 = sub_100014148();
    v6 = v3;

    v7 = sub_100003C70(v5);
  }

  else
  {
    v8 = v20;
    sub_100013D18();

    swift_willThrow();
    v9 = a1;
    v10 = sub_1000140B8();
    v11 = sub_100014298();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v14 = [v9 identifier];
      v15 = sub_100014188();
      v17 = v16;

      v18 = sub_100004C50(v15, v17, &v20);

      *(v12 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to fetch user info for descriptor %s", v12, 0xCu);
      sub_100006320(v13);
    }

    return 0;
  }

  return v7;
}

unint64_t sub_100003C70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001F74(&qword_100021688, &qword_1000150D0);
    v2 = sub_1000143B8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        sub_100006424(*(a1 + 48) + 40 * v15, v27);
        sub_100007C98(*(a1 + 56) + 32 * v15, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100006424(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_100007CF4(v24, &qword_100021690, &qword_1000150D8);

          goto LABEL_23;
        }

        sub_100007C98(v25 + 8, v23);
        sub_100007CF4(v24, &qword_100021690, &qword_1000150D8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_100005208(v21, v22);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v21;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_100003F40(void *a1, uint64_t a2)
{
  v17 = 0;
  v3 = [a1 storeGalleryOptions:a2 error:&v17];
  if (v3)
  {
    v4 = v17;
  }

  else
  {
    v5 = v17;
    sub_100013D18();

    swift_willThrow();
    v6 = a1;
    v7 = sub_1000140B8();
    v8 = sub_100014298();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      v11 = [v6 identifier];
      v12 = sub_100014188();
      v14 = v13;

      v15 = sub_100004C50(v12, v14, &v17);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error storing poster gallery options to descriptor %s", v9, 0xCu);
      sub_100006320(v10);
    }
  }

  return v3;
}

uint64_t sub_100004110()
{
  v1 = *(v0 + OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_serializer);
  sub_100013F18();
  sub_100006528();
  return sub_100013CE8();
}

id sub_100004200(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v45 = a4;
  v42 = a1;
  v43 = a2;
  v44 = sub_100013F18();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100013F38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100013FB8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004110();
  if (v20 >> 60 == 15)
  {
    v21 = v44;
    (*(v5 + 16))(v8, a3, v44);
    v22 = sub_1000140B8();
    v23 = sub_100014298();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46 = v25;
      *v24 = 136315138;
      v26 = sub_100013EB8();
      v28 = v27;
      (*(v5 + 8))(v8, v21);
      v29 = sub_100004C50(v26, v28, &v46);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Couldn't encode configuration %s", v24, 0xCu);
      sub_100006320(v25);
    }

    else
    {

      (*(v5 + 8))(v8, v21);
    }

    return 0;
  }

  else
  {
    v44 = v20;
    v30 = v19;
    sub_100013EA8();
    sub_100013F68();
    (*(v15 + 8))(v18, v14);
    isa = sub_100013F28().super.isa;
    (*(v10 + 8))(v13, v9);
    sub_1000142D8();
    v33 = v32;

    if (v43)
    {
      v34 = v43;
      v35 = v42;
    }

    else
    {
      v35 = sub_100013EB8();
      v34 = v37;
    }

    v38 = v35;
    v39 = v44;
    v40 = sub_1000045E8(v33, v38, v34, v30, v44, v45);

    sub_100007D58(v30, v39);
    return v40;
  }
}

id sub_1000045E8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v10 = sub_100014178();
  v11 = [objc_opt_self() mutableDescriptorWithIdentifier:v10];

  v12 = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:PRTimeFontIdentifierRounded];
  sub_100001F74(&unk_100021650, &qword_1000150B8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100015060;
  *(v13 + 32) = [objc_opt_self() vibrantMonochromeColor];
  sub_100006580(0, &qword_100021870, PRPosterColor_ptr);
  isa = sub_1000141F8().super.isa;

  [v11 setPreferredTitleColors:isa];

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100015060;
  *(v15 + 32) = v12;
  sub_100006580(0, &qword_100021660, PRTimeFontConfiguration_ptr);
  v16 = v12;
  v17 = sub_1000141F8().super.isa;

  [v11 setPreferredTimeFontConfigurations:v17];

  [v11 setLuminance:a1];
  sub_100001F74(&qword_100021668, &unk_1000150C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100014F00;
  sub_100014328();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = a4;
  *(inited + 80) = a5;
  v27[1] = 0xE700000000000000;
  sub_1000064D4(a4, a5);
  sub_100014328();
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = 6;
  sub_100011040(inited);
  swift_setDeallocating();
  sub_100001F74(&unk_100021670, &qword_100015240);
  swift_arrayDestroy();
  v19 = sub_100014138().super.isa;

  v27[0] = 0;
  LODWORD(inited) = [v11 storeUserInfo:v19 error:v27];

  if (inited)
  {
    v20 = v27[0];
    if (a6)
    {
      v21 = a6;
      sub_100003F40(v11, v21);
    }
  }

  else
  {
    v22 = v27[0];
    sub_100013D18();

    swift_willThrow();
    v23 = sub_1000140B8();
    v24 = sub_100014298();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error storing user info", v25, 2u);
    }

    return 0;
  }

  return v11;
}

id EmojiAssetUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiAssetUpdater();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004B80(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100004BF4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100004C50(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100004C50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004D1C(v11, 0, 0, 1, a1, a2);
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
    sub_100007C98(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006320(v11);
  return v7;
}

unint64_t sub_100004D1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004E28(a5, a6);
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
    result = sub_100014378();
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

char *sub_100004E28(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004E74(a1, a2);
  sub_100004FA4(&off_10001CAB0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004E74(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005090(v5, 0);
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

  result = sub_100014378();
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
        v10 = sub_1000141D8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005090(v10, 0);
        result = sub_100014358();
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

uint64_t sub_100004FA4(uint64_t result)
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

  result = sub_100005104(result, v12, 1, v3);
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

void *sub_100005090(uint64_t a1, uint64_t a2)
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

  sub_100001F74(&unk_1000216A0, &unk_1000150E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005104(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F74(&unk_1000216A0, &unk_1000150E8);
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

_BYTE **sub_1000051F8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_100005208(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100014418();
  sub_1000141B8();
  v6 = sub_100014428();

  return sub_100005B88(a1, a2, v6);
}

unint64_t sub_100005280(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100014308(*(v2 + 40));

  return sub_100005C40(a1, v4);
}

uint64_t sub_1000052C4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100014418();
  sub_1000141B8();
  v9 = sub_100014428();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1000143D8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100005674(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100005414(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001F74(&qword_100021698, &qword_1000150E0);
  result = sub_100014348();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_100014418();
      sub_1000141B8();
      result = sub_100014428();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100005674(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100005414(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000057F4();
      goto LABEL_16;
    }

    sub_100005950(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_100014418();
  sub_1000141B8();
  result = sub_100014428();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000143D8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000143E8();
  __break(1u);
  return result;
}

void *sub_1000057F4()
{
  v1 = v0;
  sub_100001F74(&qword_100021698, &qword_1000150E0);
  v2 = *v0;
  v3 = sub_100014338();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100005950(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001F74(&qword_100021698, &qword_1000150E0);
  result = sub_100014348();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_100014418();

      sub_1000141B8();
      result = sub_100014428();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_100005B88(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000143D8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005C40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100006424(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100014318();
      sub_100006480(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_100005D08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a1 == 1869768040 && a2 == 0xE400000000000000;
  if (v6 || (sub_1000143D8() & 1) != 0)
  {
    v9 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
    [v9 setHero:1];
    if (a4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((a1 != 0x6F6C436568546E69 || a2 != 0xEB00000000736475) && (sub_1000143D8() & 1) == 0 && (a1 != 0x7963697073 || a2 != 0xE500000000000000) && (sub_1000143D8() & 1) == 0 && (a1 != 0x65727574616ELL || a2 != 0xE600000000000000) && (sub_1000143D8() & 1) == 0 && (a1 != 0x73696E6E6574 || a2 != 0xE600000000000000) && (sub_1000143D8() & 1) == 0 && (a1 != 0x77696B7265746177 || a2 != 0xEB000000006F6769) && (sub_1000143D8() & 1) == 0 && (a1 != 0x7361666B61657262 || a2 != 0xE900000000000074) && (sub_1000143D8() & 1) == 0)
  {
    v9 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
    if (a4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
  v10 = objc_allocWithZone(ATXComplication);
  v11 = sub_100014178();
  v12 = sub_100014178();
  v13 = sub_100014178();
  v14 = [v10 initWithExtensionBundleIdentifier:v11 kind:v12 containerBundleIdentifier:v13 widgetFamily:12 intent:0 source:5];

  [v9 setInlineComplication:v14];
  if ((a4 & 1) == 0)
  {
LABEL_12:
    [v9 setFocus:a3];
    [v9 setOnlyEligibleForMadeForFocusSection:1];
  }

LABEL_13:
  [v9 setAllowsSystemSuggestedComplications:0];
  return v9;
}

uint64_t sub_1000062B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F74(&qword_1000215B0, qword_100015070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006320(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006374()
{
  result = sub_1000140D8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000064D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100006528()
{
  result = qword_100021890;
  if (!qword_100021890)
  {
    sub_100013F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021890);
  }

  return result;
}

uint64_t sub_100006580(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_1000065C8(uint64_t a1, char *a2, uint64_t a3)
{
  v169 = a3;
  v5 = sub_100001F74(&qword_1000215B0, qword_100015070);
  v186 = *(v5 - 8);
  v187 = v5;
  v6 = *(v186 + 64);
  v7 = __chkstk_darwin(v5);
  v185 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v192 = &v169 - v10;
  __chkstk_darwin(v9);
  v184 = &v169 - v11;
  v12 = sub_100013F18();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = (&v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v15);
  v174 = &v169 - v19;
  v20 = __chkstk_darwin(v18);
  v176 = &v169 - v21;
  v22 = __chkstk_darwin(v20);
  v189 = &v169 - v23;
  v24 = __chkstk_darwin(v22);
  v181 = &v169 - v25;
  __chkstk_darwin(v24);
  v191 = &v169 - v26;
  v177 = OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_logger;
  v188 = a2;
  v27 = sub_1000140B8();
  v28 = sub_100014288();
  v29 = os_log_type_enabled(v27, v28);
  v190 = a1;
  if (v29)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Updating descriptors...", v30, 2u);
    a1 = v190;
  }

  v196 = &_swiftEmptyArrayStorage;
  v197 = &_swiftEmptySetSingleton;
  v31 = *&v188[OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_configurationProvider];
  v182 = sub_100013FD8();
  v32 = _UISolariumEnabled();
  v33 = *(a1 + 16);
  v193 = v12;
  v183 = v13;
  v175 = v17;
  v170 = v31;
  if (v33)
  {
    v34 = sub_100005208(1869768040, 0xE400000000000000);
    if (v35)
    {
      v172 = *(*(a1 + 56) + 8 * v34);
      v36 = v172;
      v37 = sub_100003A64(v36);
      if (v37)
      {
        v38 = v37;
        if (!*(v37 + 16) || (v39 = sub_100005208(0x6E6F6973726576, 0xE700000000000000), (v40 & 1) == 0) || (v195 = *(*(v38 + 56) + 8 * v39), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0) || v194 != 6)
        {

LABEL_23:
          v53 = v172;
          goto LABEL_24;
        }

        if (*(v38 + 16) && (v41 = sub_100005208(0x6F7265486163696DLL, 0xE800000000000000), (v42 & 1) != 0))
        {
          v43 = *(*(v38 + 56) + 8 * v41);
          swift_unknownObjectRetain();

          v195 = v43;
          if ((swift_dynamicCast() & 1) != 0 && v32 == v194)
          {
            v44 = sub_1000140B8();
            v45 = sub_1000142A8();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              *v46 = 0;
              _os_log_impl(&_mh_execute_header, v44, v45, "Hero descriptor unchanged", v46, 2u);
            }

            v47 = v36;
            sub_1000141E8();
            if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v168 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_100014208();
            }

            sub_100014218();
            v178 = v196;
            v48 = [v47 identifier];
            v49 = sub_100014188();
            v51 = v50;

            sub_1000052C4(&v195, v49, v51);

            goto LABEL_42;
          }
        }

        else
        {
        }
      }

      goto LABEL_23;
    }
  }

  v53 = 0;
LABEL_24:
  v54 = v53;
  v55 = sub_1000140B8();
  v56 = sub_1000142A8();

  v57 = os_log_type_enabled(v55, v56);
  v172 = v53;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v195 = v59;
    *v58 = 136315138;
    if (v53)
    {
      v60 = 0x4E4943414C504552;
    }

    else
    {
      v60 = 0x676E69646C697542;
    }

    if (v53)
    {
      v61 = 0xE900000000000047;
    }

    else
    {
      v61 = 0xE800000000000000;
    }

    v62 = sub_100004C50(v60, v61, &v195);
    v12 = v193;

    *(v58 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v55, v56, "%s hero descriptor", v58, 0xCu);
    sub_100006320(v59);

    v13 = v183;
  }

  v47 = v191;
  sub_100013FC8();
  v63 = sub_100005D08(1869768040, 0xE400000000000000, 0, 1);
  v64 = sub_100004200(1869768040, 0xE400000000000000, v47, v63);
  if (v64)
  {
    v65 = v64;
    v66 = objc_allocWithZone(PRPosterDescriptorGalleryAssetLookupInfo);
    v67 = sub_100014178();
    if (v32)
    {
      v68 = &selRef_initWithMicaAssetIdentifier_;
    }

    else
    {
      v68 = &selRef_initWithAssetCatalogIdentifier_;
    }

    v47 = [v66 *v68];

    v79 = [objc_opt_self() galleryOptionsWithAssetLookupInfo:v47];
    [v65 setPreferredGalleryOptions:v79];

    isa = sub_100014228().super.super.isa;
    v81 = sub_100014178();
    [v65 setObject:isa forUserInfoKey:v81];

    v49 = v65;
    sub_1000141E8();
    if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_118;
    }

    goto LABEL_39;
  }

  v69 = v181;
  (*(v13 + 16))(v181, v47, v12);
  v49 = sub_1000140B8();
  v70 = v12;
  v71 = sub_100014298();
  if (os_log_type_enabled(v49, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v195 = v73;
    *v72 = 136315138;
    v74 = sub_100013EB8();
    v47 = v75;
    v76 = v69;
    v77 = *(v183 + 8);
    v77(v76, v70);
    v78 = sub_100004C50(v74, v47, &v195);

    *(v72 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v49, v71, "Couldn't create hero descriptor, configuration %s, skipping it", v72, 0xCu);
    sub_100006320(v73);

    v13 = v183;

    v77(v191, v70);
  }

  else
  {

    v86 = *(v13 + 8);
    v86(v69, v70);
    v86(v47, v70);
  }

  v178 = &_swiftEmptyArrayStorage;
  v12 = v70;
LABEL_42:
  v87 = v174;
  v88 = v182;
  v63 = v188;
  v181 = *(v182 + 16);
  if (v181)
  {
    v89 = 0;
    v179 = (v182 + ((*(v13 + 80) + 32) & ~*(v13 + 80)));
    v191 = (v13 + 16);
    v180 = (v13 + 8);
    *&v52 = 136315138;
    v171 = v52;
    do
    {
      if (v89 >= *(v88 + 16))
      {
        goto LABEL_117;
      }

      v90 = *(v13 + 16);
      v90(v87, v179 + *(v13 + 72) * v89, v12);
      v49 = sub_100013EB8();
      v92 = v91;
      v93 = v197;
      if (v197[2])
      {
        v94 = v197[5];
        sub_100014418();
        sub_1000141B8();
        v95 = sub_100014428();
        v96 = -1 << *(v93 + 32);
        v47 = v95 & ~v96;
        if ((*(v93 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v47))
        {
          v97 = ~v96;
          while (1)
          {
            v98 = (v93[6] + 16 * v47);
            v99 = *v98 == v49 && v98[1] == v92;
            if (v99 || (sub_1000143D8() & 1) != 0)
            {
              break;
            }

            v47 = (v47 + 1) & v97;
            if (((*(v93 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v47) & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          v12 = v193;
          (*v180)(v87, v193);

          v13 = v183;
          goto LABEL_45;
        }
      }

LABEL_57:
      if (*(v190 + 16))
      {
        v100 = sub_100005208(v49, v92);
        if (v101)
        {
          v102 = *(*(v190 + 56) + 8 * v100);
          v103 = sub_100003A64(v102);
          if (v103)
          {
            v104 = v103;
            if (*(v103 + 16) && (v105 = sub_100005208(0x6E6F6973726576, 0xE700000000000000), (v106 & 1) != 0))
            {
              v107 = *(*(v104 + 56) + 8 * v105);
              swift_unknownObjectRetain();

              v195 = v107;
              if ((swift_dynamicCast() & 1) != 0 && v194 == 6)
              {
                v47 = v102;
                sub_1000141E8();
                if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v124 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_100014208();
                }

                sub_100014218();
                v108 = v196;
                sub_1000052C4(&v195, v49, v92);
                goto LABEL_73;
              }
            }

            else
            {
            }
          }
        }
      }

      v47 = sub_100005D08(v49, v92, 0, 1);

      v109 = sub_100004200(v49, v92, v87, v47);

      if (!v109)
      {

        v112 = v63;
        v113 = v175;
        v12 = v193;
        v90(v175, v87, v193);
        v114 = v112;
        v49 = sub_1000140B8();
        v115 = sub_100014298();
        if (os_log_type_enabled(v49, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v195 = v117;
          *v116 = v171;
          *&v173 = sub_100013EB8();
          v119 = v118;
          v120 = *v180;
          (*v180)(v113, v193);
          v121 = sub_100004C50(v173, v119, &v195);
          v12 = v193;

          *(v116 + 4) = v121;
          _os_log_impl(&_mh_execute_header, v49, v115, "Couldn't create descriptor for configuration %s, skipping it", v116, 0xCu);
          sub_100006320(v117);

          v122 = v174;
          v120(v174, v12);
          v63 = v188;
          v13 = v183;
          v87 = v122;
        }

        else
        {

          v123 = *v180;
          (*v180)(v113, v12);
          v123(v87, v12);
          v13 = v183;
          v63 = v114;
        }

LABEL_45:
        v88 = v182;
        goto LABEL_46;
      }

      v110 = v109;
      sub_1000141E8();
      if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100014208();
      }

      sub_100014218();
      v108 = v196;
      sub_1000052C4(&v195, v49, v92);

LABEL_73:

      v12 = v193;
      v88 = v182;
      v13 = v183;
      v178 = v108;
      if (v108 >> 62)
      {
        v111 = sub_100014388();
      }

      else
      {
        v111 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      (*v180)(v87, v12);
      if (v111 == 20)
      {
        break;
      }

LABEL_46:
      ++v89;
    }

    while (v89 != v181);
  }

  v125 = sub_100013FE8();
  v183 = *(v125 + 16);
  if (v183)
  {
    v127 = 0;
    v181 = *(v187 + 48);
    v180 = (v125 + ((*(v186 + 80) + 32) & ~*(v186 + 80)));
    v179 = (v13 + 32);
    v191 = (v13 + 8);
    v175 = (v13 + 16);
    *&v126 = 136315138;
    v173 = v126;
    v63 = v189;
    v182 = v125;
    while (1)
    {
      if (v127 >= *(v125 + 16))
      {
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        sub_100014208();
LABEL_39:
        sub_100014218();
        v178 = v196;
        v82 = [v49 identifier];
        v83 = sub_100014188();
        v85 = v84;

        sub_1000052C4(&v195, v83, v85);

        v13 = v183;
        (*(v183 + 8))(v191, v12);
        goto LABEL_42;
      }

      v128 = v184;
      sub_1000062B0(v180 + *(v186 + 72) * v127, v184);
      v129 = *&v181[v128];
      v130 = v187;
      v131 = *(v187 + 48);
      v132 = *v179;
      v133 = v192;
      (*v179)(v192, v128, v12);
      *(v133 + v131) = v129;
      v134 = v185;
      sub_1000062B0(v133, v185);
      v132(v63, v134, v12);
      sub_1000062B0(v133, v134);
      v47 = *(v134 + *(v130 + 48));
      v135 = *v191;
      (*v191)(v134, v12);
      v49 = sub_100013EB8();
      v137 = v136;
      v138 = v197;
      if (v197[2])
      {
        v139 = v197[5];
        sub_100014418();
        sub_1000141B8();
        v140 = sub_100014428();
        v141 = -1 << *(v138 + 32);
        v142 = v140 & ~v141;
        if ((*(v138 + ((v142 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v142))
        {
          v143 = ~v141;
          do
          {
            v144 = (v138[6] + 16 * v142);
            v145 = *v144 == v49 && v144[1] == v137;
            if (v145 || (sub_1000143D8() & 1) != 0)
            {
              goto LABEL_83;
            }

            v142 = (v142 + 1) & v143;
          }

          while (((*(v138 + ((v142 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v142) & 1) != 0);
        }
      }

      v146 = v190;
      if (!*(v190 + 16))
      {
        goto LABEL_107;
      }

      v147 = sub_100005208(v49, v137);
      if ((v148 & 1) == 0)
      {
        goto LABEL_107;
      }

      v149 = *(*(v146 + 56) + 8 * v147);
      v150 = sub_100003A64(v149);
      if (!v150)
      {
        goto LABEL_106;
      }

      v151 = v150;
      if (!*(v150 + 16))
      {
        break;
      }

      v152 = sub_100005208(0x6E6F6973726576, 0xE700000000000000);
      if ((v153 & 1) == 0)
      {
        break;
      }

      v154 = *(*(v151 + 56) + 8 * v152);
      swift_unknownObjectRetain();

      v195 = v154;
      if ((swift_dynamicCast() & 1) == 0 || v194 != 6)
      {
        goto LABEL_106;
      }

      v47 = v149;
      sub_1000141E8();
      if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v166 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100014208();
      }

      sub_100014218();
      v178 = v196;
      sub_1000052C4(&v195, v49, v137);
LABEL_111:

LABEL_83:

      v63 = v189;
      v12 = v193;
      v135(v189, v193);
LABEL_84:
      sub_100007CF4(v192, &qword_1000215B0, qword_100015070);
      v125 = v182;
      if (++v127 == v183)
      {
        goto LABEL_115;
      }
    }

LABEL_106:

LABEL_107:
    v47 = sub_100005D08(v49, v137, v47, 0);

    v63 = v189;
    v155 = sub_100004200(v49, v137, v189, v47);

    if (!v155)
    {

      v157 = v176;
      v12 = v193;
      (*v175)(v176, v63, v193);
      v49 = sub_1000140B8();
      v158 = sub_100014298();
      if (os_log_type_enabled(v49, v158))
      {
        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v195 = v160;
        *v159 = v173;
        v161 = sub_100013EB8();
        v162 = v157;
        v164 = v163;
        v174 = v135;
        v135(v162, v193);
        v165 = sub_100004C50(v161, v164, &v195);

        *(v159 + 4) = v165;
        _os_log_impl(&_mh_execute_header, v49, v158, "Couldn't create descriptor for configuration %s, skipping it", v159, 0xCu);
        sub_100006320(v160);
        v12 = v193;

        (v174)(v63, v12);
      }

      else
      {

        v135(v157, v12);
        v135(v63, v12);
      }

      goto LABEL_84;
    }

    v156 = v155;
    sub_1000141E8();
    if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100014208();
    }

    sub_100014218();
    v178 = v196;
    sub_1000052C4(&v195, v49, v137);

    goto LABEL_111;
  }

LABEL_115:

  sub_100006580(0, &qword_100021680, PRPosterDescriptor_ptr);
  v167 = sub_1000141F8().super.isa;
  (*(v169 + 16))(v169, v167, 0);
}

uint64_t sub_100007C98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007CF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001F74(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007D58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100007D6C(a1, a2);
  }

  return a1;
}

uint64_t sub_100007D6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100007DC0()
{
  v1 = v0;
  v2 = sub_100013FB8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100001F74(&qword_100021850, &unk_100015220);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_configuration;
  swift_beginAccess();
  sub_1000139C0(v1 + v12, v10, &qword_100021850, &unk_100015220);
  v13 = v11;
  sub_100013DF8();

  v14 = *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController);
  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000139C0(v1 + v12, v8, &qword_100021850, &unk_100015220);
  v15 = sub_100013F18();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) != 1)
  {
    v17 = v14;
    sub_100013EA8();
    (*(v16 + 8))(v8, v15);
    sub_100014038();

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100007FDC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100001F74(&qword_100021850, &unk_100015220);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_renderer);
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_renderer) = a1;
  v14 = a1;

  v15 = sub_100013E68();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_100013E58();
  v19 = *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emojiRenderer);
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emojiRenderer) = v18;

  v20 = objc_allocWithZone(sub_100013E38());
  v21 = sub_100013E08();
  v22 = *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController) = v21;

  sub_100014048();
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController);
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController) = v23;

  swift_getObjectType();
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_currentDeviceInterfaceOrientation) = sub_100010FE8();
  sub_1000082AC(a2, v12);
  v25 = sub_100013F18();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v12, 0, 1, v25);
  v27 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_configuration;
  swift_beginAccess();
  sub_100013BD0(v12, v3 + v27);
  swift_endAccess();
  sub_100007DC0();
  sub_100007CF4(v12, &qword_100021850, &unk_100015220);
  sub_1000139C0(v3 + v27, v10, &qword_100021850, &unk_100015220);
  result = (*(v26 + 48))(v10, 1, v25);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1000087A0(v10, v14, a2);
    return (*(v26 + 8))(v10, v25);
  }

  return result;
}

uint64_t sub_1000082AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100013F18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 contents];
  v34[0] = 0;
  v10 = [v9 loadUserInfoWithError:v34];
  v11 = v34[0];
  if (v10)
  {
    v12 = v10;
    v13 = sub_100014148();
    *&v33[0] = 0xD000000000000012;
    *(&v33[0] + 1) = 0x8000000100015650;
    v14 = v11;
    sub_100014328();
    if (!*(v13 + 16) || (v15 = sub_100005280(v34), (v16 & 1) == 0))
    {

      __break(1u);
    }

    v17 = v15;
    swift_unknownObjectRelease();

    sub_100007C98(*(v13 + 56) + 32 * v17, v33);

    sub_100006480(v34);
    sub_10001117C(v33, &v35);
    swift_dynamicCast();
    v18 = v32[2];
    v19 = v32[3];
    v20 = sub_100013CC8();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_100013CB8();
    sub_1000109B0(&qword_1000218A0, &type metadata accessor for EmojiPosterConfiguration);
    sub_100013CA8();

    sub_100007D6C(v18, v19);
    return (*(v5 + 32))(a2, v8, v4);
  }

  else
  {
    v23 = v34[0];
    swift_unknownObjectRelease();
    sub_100013D18();

    swift_willThrow();
    v24 = sub_1000140B8();
    v25 = sub_100014298();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Error loading user info contents", v26, 2u);
    }

    v27 = sub_100014008();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_100013FF8();
    v30 = sub_100013FD8();

    if (*(v30 + 16))
    {
      (*(v5 + 16))(a2, v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
    }

    else
    {

      __break(1u);
    }
  }

  return result;
}

void sub_1000087A0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v65 = a3;
  v7 = sub_100001F74(&qword_100021850, &unk_100015220);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v65 - v9;
  v11 = sub_100013F18();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_configuration;
  swift_beginAccess();
  sub_100013BD0(v10, v4 + v13);
  swift_endAccess();
  sub_100007DC0();
  sub_100007CF4(v10, &qword_100021850, &unk_100015220);
  v14 = [a2 backgroundView];
  v15 = [v14 window];

  v16 = &EmojiAssetUpdater;
  if (v15 && (v17 = [v15 rootViewController], v15, v17))
  {
    v18 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController;
    if (!*(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    [v17 addChildViewController:?];
    v19 = [a2 backgroundView];
    v20 = *(v4 + v18);
    if (!v20)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v21 = [v20 view];
    if (!v21)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v22 = v21;
    [v19 addSubview:v21];

    v23 = *(v4 + v18);
    if (!v23)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    [v23 didMoveToParentViewController:v17];
    v16 = &EmojiAssetUpdater;
  }

  else
  {
    v24 = [a2 backgroundView];
    v25 = *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController);
    if (!v25)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = [v25 view];
    if (!v26)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v17 = v26;
    [v24 addSubview:v26];
  }

  v27 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController;
  v28 = *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController);
  if (!v28)
  {
    __break(1u);
    goto LABEL_32;
  }

  v29 = [v28 view];
  if (!v29)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = v29;
  v31 = [a2 backgroundView];
  sub_100012B34(v30, v31);

  v32 = [a2 foregroundView];
  v33 = [v32 window];

  if (!v33 || (v34 = [v33 v16[418].count], v33, !v34))
  {
    v41 = [a2 foregroundView];
    v42 = *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
    if (!v42)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v43 = [v42 view];
    if (!v43)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v34 = v43;
    [v41 addSubview:v43];

LABEL_23:
    v44 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController;
    v45 = *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
    if (v45)
    {
      v46 = [v45 view];
      if (v46)
      {
        v47 = v46;
        v48 = [a2 foregroundView];
        sub_100012B34(v47, v48);

        v49 = v65;
        [v65 backlightProgress];
        v51 = *(v4 + v44);
        if (v51)
        {
          v52 = v50;
          v53 = v51;
          sub_100013DD8();

          v54 = *(v4 + v27);
          if (v54)
          {
            v55 = v54;
            sub_100014018();

            *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_wakeProgress) = v52;
            [v49 unlockProgress];
            v57 = *(v4 + v44);
            if (v57)
            {
              v58 = v56;
              v59 = v57;
              sub_100013E18();

              v60 = *(v4 + v27);
              if (v60)
              {
                v61 = v60;
                sub_100014028();

                *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_unlockProgress) = v58;
                v62 = *(v4 + v44);
                if (v62)
                {
                  v63 = *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_currentDeviceInterfaceOrientation);
                  v64 = v62;
                  sub_100013E28();

                  return;
                }

                goto LABEL_39;
              }

LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v35 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController;
  if (!*(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  [v34 addChildViewController:?];
  v36 = [a2 foregroundView];
  v37 = *(v4 + v35);
  if (!v37)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v38 = [v37 view];
  if (!v38)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v39 = v38;
  [v36 addSubview:v38];

  v40 = *(v4 + v35);
  if (v40)
  {
    [v40 didMoveToParentViewController:v34];
    goto LABEL_23;
  }

LABEL_51:
  __break(1u);
}

id sub_100008E7C()
{
  sub_1000140C8();
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController] = 0;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController] = 0;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_currentDeviceInterfaceOrientation] = 1;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emojiRenderer] = 0;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_wakeProgress] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_unlockProgress] = 0;
  v1 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_configuration;
  v2 = sub_100013F18();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_renderer] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EmojiPosterExtensionRenderingController(0);
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1000090D0()
{
  v0 = sub_1000140D8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000091BC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000091BC()
{
  if (!qword_1000217A8)
  {
    sub_100013F18();
    v0 = sub_1000142F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000217A8);
    }
  }
}

uint64_t sub_100009214(void *a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor);
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor) = a1;
  v6 = a1;

  v7 = sub_100013E68();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_100013E58();
  v11 = *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_emojiRenderer);
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_emojiRenderer) = v10;

  swift_getObjectType();
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_currentDeviceInterfaceOrientation) = sub_100010FE8();

  return sub_1000094E0(a2);
}

void sub_1000092D8(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);

  swift_unknownObjectRelease();
}

void sub_100009360(void *a1)
{
  v2 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v3 = [v2 descriptorIdentifier];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = sub_100014188();
    v6 = v5;

    if (v4 == 1869768040 && v6 == 0xE400000000000000)
    {
    }

    else
    {
      v8 = sub_1000143D8();

      if ((v8 & 1) == 0)
      {
        return;
      }
    }

    sub_10000BA70(a1);
  }
}

uint64_t sub_1000094E0(void *a1)
{
  v2 = v1;
  v4 = sub_100013F38();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  __chkstk_darwin(v4);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100013FB8();
  v50 = *(v51 - 8);
  v7 = *(v50 + 64);
  __chkstk_darwin(v51);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001F74(&qword_100021850, &unk_100015220);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v47 - v12;
  v14 = sub_100013F18();
  v49 = *(v14 - 8);
  v15 = *(v49 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v47 - v19;
  v21 = [a1 sourceContents];
  v58[0] = 0;
  v22 = [v21 loadUserInfoWithError:v58];
  v23 = v58[0];
  if (v22)
  {
    v24 = v22;
    v48 = v4;
    v54 = v2;
    v25 = sub_100014148();
    *&v57[0] = 0xD000000000000012;
    *(&v57[0] + 1) = 0x8000000100015650;
    v26 = v23;
    sub_100014328();
    if (!*(v25 + 16) || (v27 = sub_100005280(v58), (v28 & 1) == 0))
    {

      __break(1u);
    }

    v29 = v27;
    swift_unknownObjectRelease();

    sub_100007C98(*(v25 + 56) + 32 * v29, v57);

    sub_100006480(v58);
    sub_10001117C(v57, &v59);
    swift_dynamicCast();
    v30 = v55;
    v31 = v56;
    v32 = sub_100013CC8();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    sub_100013CB8();
    sub_1000109B0(&qword_1000218A0, &type metadata accessor for EmojiPosterConfiguration);
    sub_100013CA8();
    v47 = v30;
    v39 = v49;
    (*(v49 + 32))(v20, v18, v14);
    (*(v39 + 16))(v13, v20, v14);
    (*(v39 + 56))(v13, 0, 1, v14);
    v40 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
    v41 = v54;
    swift_beginAccess();
    sub_10001004C(v13, v41 + v40);
    swift_endAccess();
    sub_100013EA8();
    v42 = v52;
    sub_100013F68();
    (*(v50 + 8))(v9, v51);
    isa = sub_100013F28().super.isa;
    (*(v53 + 8))(v42, v48);
    sub_1000142D8();
    v45 = v44;

    sub_100007D6C(v47, v31);
    result = (*(v39 + 8))(v20, v14);
    *(v41 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_luminance) = v45;
  }

  else
  {
    v35 = v58[0];
    swift_unknownObjectRelease();
    sub_100013D18();

    swift_willThrow();
    v36 = sub_1000140B8();
    v37 = sub_100014298();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Error loading user info contents", v38, 2u);
    }

    sub_100009C20();
  }

  return result;
}

uint64_t sub_100009C20()
{
  v1 = v0;
  v2 = sub_100013F18();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001F74(&qword_100021850, &unk_100015220);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = sub_100014008();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_100013FF8();
  v14 = sub_100013FD8();

  if (*(v14 + 16))
  {
    (*(v3 + 16))(v6, v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

    (*(v3 + 32))(v10, v6, v2);
    (*(v3 + 56))(v10, 0, 1, v2);
    v15 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
    swift_beginAccess();
    sub_10001004C(v10, v1 + v15);
    return swift_endAccess();
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100009EA0(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = *(*(sub_100001F74(&qword_100021850, &unk_100015220) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v4 = sub_100013F18();
  v2[32] = v4;
  v5 = *(v4 - 8);
  v2[33] = v5;
  v6 = *(v5 + 64) + 15;
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_100009FC4, 0, 0);
}

uint64_t sub_100009FC4()
{
  v45 = v0;
  v1 = v0[30];
  v0[35] = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_logger;
  v2 = sub_1000140B8();
  v3 = sub_100014288();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finalizing editor state, saving...", v4, 2u);
  }

  v5 = v0[29];
  v6 = v0[30];

  v7 = [v5 currentLook];
  v8 = [v7 identifier];

  v9 = sub_100014188();
  v11 = v10;

  v12 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers;
  swift_beginAccess();
  v13 = *(v6 + v12);
  if (*(v13 + 16) && (, v14 = sub_100005208(v9, v11), v16 = v15, , (v16 & 1) != 0))
  {
    v17 = *(v13 + 56) + 16 * v14;
    v18 = *v17;
    v0[36] = *v17;
    v19 = *(v17 + 8);
    v0[37] = v19;
    v20 = v18;
    v21 = v19;

    sub_100014258();
    v22 = v20;
    v0[38] = sub_100014248();
    v24 = sub_100014238();

    return _swift_task_switch(sub_10000A384, v24, v23);
  }

  else
  {

    v25 = v0[35];
    v26 = v0[29];
    v27 = v0[30];
    v28 = sub_100014298();
    v29 = v26;
    v30 = sub_1000140B8();

    if (os_log_type_enabled(v30, v28))
    {
      v31 = v0[29];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136315138;
      v34 = [v31 currentLook];
      v35 = [v34 identifier];

      v36 = sub_100014188();
      v38 = v37;

      v39 = sub_100004C50(v36, v38, &v44);

      *(v32 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v28, "Error finding view controller for current look %s", v32, 0xCu);
      sub_100006320(v33);
    }

    v40 = v0[34];
    v41 = v0[31];

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_10000A384()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[31];

  sub_100013DE8();

  return _swift_task_switch(sub_10000A434, 0, 0);
}

uint64_t sub_10000A434()
{
  v65 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 296);

    sub_100007CF4(v3, &qword_100021850, &unk_100015220);
    v5 = *(v0 + 280);
    v6 = *(v0 + 232);
    v7 = *(v0 + 240);
    v8 = sub_100014298();
    v9 = v6;
    v10 = sub_1000140B8();

    if (os_log_type_enabled(v10, v8))
    {
      v11 = *(v0 + 232);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v64 = v13;
      *v12 = 136315138;
      v14 = [v11 currentLook];
      v15 = [v14 identifier];

      v16 = sub_100014188();
      v18 = v17;

      v19 = sub_100004C50(v16, v18, &v64);

      *(v12 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v8, "Error finding view controller for current look %s", v12, 0xCu);
      sub_100006320(v13);
    }
  }

  else
  {
    (*(v1 + 32))(*(v0 + 272), v3, v2);
    v20 = sub_100013D08();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_100013CF8();
    sub_100013CD8();
    sub_1000109B0(&qword_100021890, &type metadata accessor for EmojiPosterConfiguration);
    v23 = sub_100013CE8();
    v25 = v24;
    v26 = [objc_msgSend(*(v0 + 232) "environment")];
    swift_unknownObjectRelease();
    sub_100001F74(&qword_100021668, &unk_1000150C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100015110;
    *(v0 + 192) = 0xD000000000000012;
    *(v0 + 200) = 0x8000000100015650;
    sub_100014328();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v23;
    *(inited + 80) = v25;
    sub_1000064D4(v23, v25);
    sub_100011040(inited);
    swift_setDeallocating();
    sub_100007CF4(inited + 32, &unk_100021670, &qword_100015240);
    isa = sub_100014138().super.isa;

    *(v0 + 216) = 0;
    v29 = [v26 storeUserInfo:isa error:v0 + 216];

    v30 = *(v0 + 216);
    if (v29)
    {
      v31 = *(v0 + 288);
      loga = *(v0 + 296);
      v32 = *(v0 + 272);
      v33 = *(v0 + 256);
      v34 = *(*(v0 + 264) + 8);
      v35 = v30;
      v34(v32, v33);

      sub_100007D6C(v23, v25);
    }

    else
    {
      v36 = *(v0 + 280);
      v37 = *(v0 + 240);
      v38 = v30;
      sub_100013D18();

      swift_willThrow();
      swift_errorRetain();
      v39 = sub_1000140B8();
      v40 = sub_100014298();

      log = v39;
      v41 = os_log_type_enabled(v39, v40);
      v61 = *(v0 + 296);
      v42 = *(v0 + 264);
      v43 = *(v0 + 272);
      v44 = *(v0 + 256);
      if (v41)
      {
        v59 = *(v0 + 288);
        v45 = swift_slowAlloc();
        v60 = v44;
        v46 = swift_slowAlloc();
        v64 = v46;
        *v45 = 136315138;
        swift_getErrorValue();
        v58 = v43;
        v48 = *(v0 + 168);
        v47 = *(v0 + 176);
        v49 = *(v0 + 184);
        v50 = sub_100014408();
        v57 = v26;
        v52 = sub_100004C50(v50, v51, &v64);

        *(v45 + 4) = v52;
        _os_log_impl(&_mh_execute_header, log, v40, "Error storing user info: %s", v45, 0xCu);
        sub_100006320(v46);

        sub_100007D6C(v23, v25);

        (*(v42 + 8))(v58, v60);
      }

      else
      {

        sub_100007D6C(v23, v25);

        (*(v42 + 8))(v43, v44);
      }
    }
  }

  v53 = *(v0 + 272);
  v54 = *(v0 + 248);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_10000AD68(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10000AE2C;

  return sub_100009EA0(v6);
}

uint64_t sub_10000AE2C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10000B110@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = sub_100013FB8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001F74(&qword_100021850, &unk_100015220);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v45 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v48 = v40 - v13;
  __chkstk_darwin(v12);
  v15 = v40 - v14;
  v16 = sub_100013E88();
  v51 = *(v16 - 8);
  v52 = v16;
  v17 = *(v51 + 64);
  v18 = __chkstk_darwin(v16);
  v47 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v40 - v20;
  v22 = sub_100013E78();
  v49 = *(v22 - 8);
  v50 = v22;
  v23 = *(v49 + 64);
  v24 = __chkstk_darwin(v22);
  v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v40 - v27;
  sub_10000B5A0(a1, v40 - v27);
  sub_10000B7B4(a1, v21);
  v29 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  swift_beginAccess();
  v53 = v2;
  sub_1000139C0(v2 + v29, v15, &qword_100021850, &unk_100015220);
  v30 = sub_100013F18();
  v31 = *(v30 - 8);
  v46 = *(v31 + 48);
  result = v46(v15, 1, v30);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v43 = v7;
  sub_100013EA8();
  v33 = *(v31 + 8);
  v33(v15, v30);
  v34 = *(v49 + 16);
  v40[1] = v26;
  v41 = v28;
  v34(v26, v28, v50);
  v35 = *(v51 + 16);
  v42 = v21;
  v35(v47, v21, v52);
  v36 = v48;
  sub_1000139C0(v53 + v29, v48, &qword_100021850, &unk_100015220);
  v37 = v46;
  result = v46(v36, 1, v30);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_100013F08();
  v33(v36, v30);
  v38 = v53 + v29;
  v39 = v45;
  sub_1000139C0(v38, v45, &qword_100021850, &unk_100015220);
  result = v37(v39, 1, v30);
  if (result != 1)
  {
    sub_100013EE8();
    v33(v39, v30);
    sub_100013E98();
    (*(v51 + 8))(v42, v52);
    return (*(v49 + 8))(v41, v50);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10000B5A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = sub_100014188();
  v6 = v5;

  v7 = v4 == 0x6C61726970734DLL && v6 == 0xE700000000000000;
  if (v7 || (sub_1000143D8() & 1) != 0)
  {

    v8 = &enum case for EmojiPosterLayoutStyle.spiral(_:);
  }

  else
  {
    v9 = v4 == 0x6469726753 && v6 == 0xE500000000000000;
    if (v9 || (sub_1000143D8() & 1) != 0 || (v4 == 0x646972674DLL ? (v10 = v6 == 0xE500000000000000) : (v10 = 0), v10 || (sub_1000143D8() & 1) != 0 || v4 == 0x646972674CLL && v6 == 0xE500000000000000 || (sub_1000143D8() & 1) != 0))
    {

      v8 = &enum case for EmojiPosterLayoutStyle.offsetGrid(_:);
    }

    else if (v4 == 0x616C756372696353 && v6 == 0xE900000000000072)
    {

      v8 = &enum case for EmojiPosterLayoutStyle.circular(_:);
    }

    else
    {
      v15 = sub_1000143D8();

      v8 = &enum case for EmojiPosterLayoutStyle.spiral(_:);
      if (v15)
      {
        v8 = &enum case for EmojiPosterLayoutStyle.circular(_:);
      }
    }
  }

  v11 = *v8;
  v12 = sub_100013E78();
  v13 = *(*(v12 - 8) + 104);

  return v13(a2, v11, v12);
}

uint64_t sub_10000B7B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = sub_100014188();
  v6 = v5;

  v7 = v4 == 0x6469726753 && v6 == 0xE500000000000000;
  if (v7 || (sub_1000143D8() & 1) != 0 || (v4 == 0x616C756372696353 ? (v8 = v6 == 0xE900000000000072) : (v8 = 0), v8 || (sub_1000143D8() & 1) != 0))
  {

    v9 = &enum case for EmojiPosterSizeVariant.small(_:);
  }

  else
  {
    v14 = v4 == 0x646972674DLL && v6 == 0xE500000000000000;
    if (v14 || (sub_1000143D8() & 1) != 0 || v4 == 0x6C61726970734DLL && v6 == 0xE700000000000000 || (sub_1000143D8() & 1) != 0)
    {

      v9 = &enum case for EmojiPosterSizeVariant.medium(_:);
    }

    else if (v4 == 0x646972674CLL && v6 == 0xE500000000000000)
    {

      v9 = &enum case for EmojiPosterSizeVariant.large(_:);
    }

    else
    {
      v15 = sub_1000143D8();

      v9 = &enum case for EmojiPosterSizeVariant.medium(_:);
      if (v15)
      {
        v9 = &enum case for EmojiPosterSizeVariant.large(_:);
      }
    }
  }

  v10 = *v9;
  v11 = sub_100013E88();
  v12 = *(*(v11 - 8) + 104);

  return v12(a2, v10, v11);
}

uint64_t sub_10000B9C4()
{
  v0 = 0x4075E00000000000;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *&Strong[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC];
    if (v3)
    {
      v4 = v3;
      sub_100013DA8();
      v6 = v5;

      return v6;
    }

    else
    {
    }
  }

  return v0;
}

void sub_10000BA70(void *a1)
{
  v2 = v1;
  v4 = sub_100001F74(&qword_100021850, &unk_100015220);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  v11 = sub_1000140B8();
  v12 = sub_100014288();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Emoji picker presented", v13, 2u);
  }

  v14 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC;
  v15 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC);
  v16 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  if (v15)
  {
    swift_beginAccess();
    sub_1000139C0(v2 + v16, v8, &qword_100021850, &unk_100015220);
    v17 = sub_100013F18();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v8, 1, v17) != 1)
    {
      v19 = v15;
      sub_100013F08();
      (*(v18 + 8))(v8, v17);
      sub_100013D78();

      goto LABEL_8;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  swift_beginAccess();
  sub_1000139C0(v2 + v16, v10, &qword_100021850, &unk_100015220);
  v20 = sub_100013F18();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v10, 1, v20) == 1)
  {
    goto LABEL_20;
  }

  sub_100013F08();
  (*(v21 + 8))(v10, v20);
  v22 = objc_allocWithZone(sub_100013DC8());
  v23 = sub_100013D98();
  sub_1000109B0(&qword_100021880, type metadata accessor for EmojiPosterExtensionEditorController);
  swift_unknownObjectRetain();
  sub_100013DB8();
  v19 = *(v2 + v14);
  *(v2 + v14) = v23;
LABEL_8:

  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 userInterfaceIdiom];

  v26 = *(v2 + v14);
  if (v26)
  {
    v27 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_currentDeviceInterfaceOrientation);
    v28 = v26;
    if (v25 == 1 && (sub_100014058() & 1) == 0)
    {
      v39 = v28;
      [v39 setModalPresentationStyle:7];
      v40 = [v39 popoverPresentationController];

      v41 = sub_100014178();
      v42 = [a1 viewForMenuElementIdentifier:v41];

      [v40 setSourceView:v42];
      [a1 presentViewController:v39 animated:1 completion:0];
    }

    else
    {
      v29 = [v28 sheetPresentationController];
      if (v29)
      {
        v30 = v29;
        v31 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v32 = sub_100014178();
        sub_100006580(0, &qword_100021888, UISheetPresentationControllerDetent_ptr);
        v33 = swift_allocObject();
        *(v33 + 16) = v31;
        *(v33 + 24) = v27;

        v34 = sub_1000142B8();

        sub_100001F74(&unk_100021650, &qword_1000150B8);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_100015060;
        *(v35 + 32) = v34;
        v36 = v34;
        isa = sub_1000141F8().super.isa;

        [v30 setDetents:isa];

        v38 = sub_100014178();
        [v30 setLargestUndimmedDetentIdentifier:v38];

        [v30 setPrefersScrollingExpandsWhenScrolledToEdge:0];
        [v30 setPrefersGrabberVisible:0];
        if ((sub_100014058() & 1) == 0)
        {
          [v30 _setShouldAdjustDetentsToAvoidKeyboard:0];
        }
      }

      [a1 presentViewController:v28 animated:1 completion:0];
    }
  }
}

uint64_t sub_10000C0A8(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_100013D38();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100014168();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100013F38();
  v9 = *(v47 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v47);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100013FB8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100001F74(&qword_100021850, &unk_100015220);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v42 - v20;
  v22 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  swift_beginAccess();
  v43 = v2;
  sub_1000139C0(v2 + v22, v21, &qword_100021850, &unk_100015220);
  v23 = sub_100013F18();
  v24 = *(v23 - 8);
  result = (*(v24 + 48))(v21, 1, v23);
  if (result != 1)
  {
    sub_100013EA8();
    (*(v24 + 8))(v21, v23);
    sub_100013F68();
    (*(v14 + 8))(v17, v13);
    isa = sub_100013F28().super.isa;
    (*(v9 + 8))(v12, v47);
    v27 = [objc_allocWithZone(PRPosterColor) initWithColor:isa preferredStyle:1];

    v28 = [v27 color];
    if (!v28)
    {
      v28 = [objc_opt_self() blackColor];
    }

    v29 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{35.0, 35.0}];
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = xmmword_100015120;
    *(v30 + 40) = 0x403D000000000000;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_100010134;
    *(v31 + 24) = v30;
    aBlock[4] = sub_100010144;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C97C;
    aBlock[3] = &unk_10001CCF8;
    v32 = _Block_copy(aBlock);
    v33 = v28;

    v34 = [v29 imageWithActions:v32];
    _Block_release(v32);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      sub_100014158();
      v47 = v33;
      sub_100013D28();
      sub_100014198();
      sub_100006580(0, &qword_100021868, UIAction_ptr);
      v42 = v34;
      sub_100014178();
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = swift_allocObject();
      v43 = v29;
      v38 = v37;
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      *(v39 + 16) = v36;
      *(v39 + 24) = v38;
      v40 = sub_1000142E8();
      sub_100014158();
      sub_100013D28();
      sub_100014198();
      v41 = sub_100014178();

      [v40 setAccessibilityLabel:v41];

      return v40;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10000C790(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 CGContext];
  v11 = [a2 CGColor];
  CGContextSetFillColorWithColor(v10, v11);

  v12 = [a1 CGContext];
  CGContextSetLineWidth(v12, a3);

  v13 = [a1 CGContext];
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v16 = [v14 resolvedColorWithTraitCollection:v15];

  v17 = [v16 CGColor];
  CGContextSetStrokeColorWithColor(v13, v17);

  v18 = [a1 CGContext];
  v21.origin.x = a3;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGContextAddEllipseInRect(v18, v21);

  v19 = [a1 CGContext];
  CGContextDrawPath(v19, kCGPathFillStroke);
}

void sub_10000C97C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

void sub_10000C9C8(void *a1)
{
  v2 = sub_100013F18();
  v50 = *(v2 - 8);
  v3 = *(v50 + 64);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100013F38();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100013FB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001F74(&qword_100021850, &unk_100015220);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v45 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    swift_beginAccess();
    v47 = swift_unknownObjectWeakLoadStrong();
    if (v47)
    {
      v46 = a1;
      v21 = sub_1000140B8();
      v22 = sub_100014288();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v45 = v2;
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Background color picker presented", v23, 2u);
        v2 = v45;
      }

      v24 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
      swift_beginAccess();
      sub_1000139C0(v20 + v24, v18, &qword_100021850, &unk_100015220);
      v25 = v50;
      v26 = (*(v50 + 48))(v18, 1, v2);
      v45 = v20;
      if (v26 == 1)
      {
        __break(1u);
        return;
      }

      sub_100013EA8();
      v27 = *(v25 + 8);
      v27(v18, v2);
      sub_100013F68();
      (*(v11 + 8))(v14, v10);
      isa = sub_100013F28().super.isa;
      (*(v48 + 8))(v9, v49);
      v29 = [objc_allocWithZone(PRPosterColor) initWithColor:isa preferredStyle:1];

      sub_100006580(0, &unk_100021858, UIColor_ptr);
      v30 = v47;
      v31 = [v47 currentLook];
      v32 = v45;
      sub_10000B110(v31, v5);

      sub_100013F08();
      v27(v5, v2);
      v33 = sub_1000142C8();

      v34 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
      [v34 setSelectedColor:v29];
      sub_100013D68();
      v35 = sub_100013D48();
      [v34 setColorPalette:v35];

      v36 = [v46 identifier];
      v37 = [v30 viewForMenuElementIdentifier:v36];

      [v34 setColorPickerSourceItem:v37];
      if (v33)
      {
        v38 = objc_allocWithZone(PRPosterColor);
        v39 = v33;
        v40 = [v38 initWithColor:v39];
        [v34 setSuggestedColor:v40];
      }

      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      *(v43 + 16) = v41;
      *(v43 + 24) = v42;
      aBlock[4] = sub_1000101B8;
      aBlock[5] = v43;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D308;
      aBlock[3] = &unk_10001CD70;
      v44 = _Block_copy(aBlock);

      [v30 presentColorPickerWithConfiguration:v34 changeHandler:v44];
      _Block_release(v44);
    }

    else
    {
      v34 = v20;
    }
  }
}

uint64_t sub_10000D030(void *a1)
{
  v20[3] = sub_100006580(0, &unk_100021858, UIColor_ptr);
  v20[0] = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      sub_100007C98(v20, v19);
      sub_100006580(0, &qword_100021870, PRPosterColor_ptr);
      v6 = a1;
      if (swift_dynamicCast())
      {
        v7 = *&v18;
        v8 = sub_1000140B8();
        v9 = sub_100014288();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          *v10 = 138412290;
          *(v10 + 4) = v7;
          *v11 = v7;
          v12 = v7;
          _os_log_impl(&_mh_execute_header, v8, v9, "Background color updated:%@", v10, 0xCu);
          sub_100007CF4(v11, &qword_100021878, &unk_100015230);
        }

        sub_10000E9C0(v7);
        [v5 updateActions];
        v13 = [v7 color];

        if (v13)
        {
          v18 = 0.0;
          v19[0] = 0;
          v17 = 0.0;
          [v13 getHue:v19 saturation:&v18 brightness:&v17 alpha:0];
          *&v3[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_luminance] = v17 + v17 * v18 * -0.5;
          [*&v3[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor] updateLuminanceValuesForLooks];
        }
      }

      else
      {
      }
    }

    else
    {
      v15 = a1;
    }
  }

  else
  {
    v14 = a1;
  }

  return sub_100006320(v20);
}

void sub_10000D308(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_10000D370()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_10000BA70(v1);

      v1 = v3;
    }
  }
}

uint64_t sub_10000D3F8()
{
  v0 = sub_100013D38();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100014168();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100001F74(&unk_100021650, &qword_1000150B8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100015060;
  sub_100006580(0, &qword_100021868, UIAction_ptr);
  sub_100014158();
  sub_100013D28();
  sub_100014198();
  v5 = sub_100014178();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  sub_100014178();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v10 = sub_1000142E8();
  sub_100014158();
  sub_100013D28();
  sub_100014198();
  v11 = sub_100014178();

  [v10 setAccessibilityLabel:v11];

  *(v4 + 32) = v10;
  return v4;
}

uint64_t sub_10000D958(uint64_t a1)
{
  v154 = a1;
  v2 = sub_100013E88();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v127 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v146 = &v124 - v6;
  v7 = sub_100013E78();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v135 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v145 = &v124 - v11;
  v12 = sub_100001F74(&qword_100021848, &qword_100015218);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v133 = &v124 - v14;
  v15 = sub_100013F38();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v132 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100013F58();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v131 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100013F18();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = __chkstk_darwin(v21);
  v144 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v161 = &v124 - v26;
  v27 = sub_100013FB8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v136 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v148 = &v124 - v33;
  v34 = __chkstk_darwin(v32);
  v167 = &v124 - v35;
  v36 = __chkstk_darwin(v34);
  v143 = &v124 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v124 - v39;
  __chkstk_darwin(v38);
  v42 = &v124 - v41;
  v43 = sub_100001F74(&qword_100021850, &unk_100015220);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43 - 8);
  v126 = &v124 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v129 = &v124 - v48;
  v49 = __chkstk_darwin(v47);
  v128 = &v124 - v50;
  v51 = __chkstk_darwin(v49);
  v125 = &v124 - v52;
  v53 = __chkstk_darwin(v51);
  v142 = &v124 - v54;
  v55 = __chkstk_darwin(v53);
  v130 = &v124 - v56;
  v57 = __chkstk_darwin(v55);
  v165 = &v124 - v58;
  __chkstk_darwin(v57);
  v60 = &v124 - v59;
  v61 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  swift_beginAccess();
  v137 = v61;
  v157 = v1;
  sub_1000139C0(v1 + v61, v60, &qword_100021850, &unk_100015220);
  v62 = v22[6];
  v156 = v22 + 6;
  if (v62(v60, 1, v21) == 1)
  {
    goto LABEL_36;
  }

  sub_100013EA8();
  v63 = v22[1];
  v153 = v21;
  v152 = v22 + 1;
  v151 = v63;
  v63(v60, v21);
  v64 = sub_100013F98();
  v65 = *(v28 + 8);
  v166 = v42;
  v162 = v65;
  v163 = v28 + 8;
  v65(v42, v27);
  v168 = v27;
  v134 = v40;
  if (v64)
  {
    sub_100006580(0, &unk_100021858, UIColor_ptr);
    v155 = sub_1000142C8();
  }

  else
  {
    v155 = 0;
  }

  v66 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers;
  v67 = v157;
  swift_beginAccess();
  v68 = *(v67 + v66);
  v69 = v68 + 64;
  v70 = 1 << *(v68 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & *(v68 + 64);
  v141 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_logger;
  v73 = (v70 + 63) >> 6;
  v140 = (v22 + 4);
  v150 = (v28 + 32);
  v158 = (v28 + 16);
  v139 = (v22 + 2);
  v149 = (v22 + 7);
  v164 = v68;

  v74 = 0;
  v75 = v153;
  v76 = v155;
  v159 = v62;
  v160 = v73;
  v138 = v69;
  v77 = v165;
  if (v72)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_11:
    v78 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v78 >= v73)
    {
      break;
    }

    v72 = *(v69 + 8 * v78);
    ++v74;
    if (v72)
    {
      while (1)
      {
        v79 = __clz(__rbit64(v72));
        v72 &= v72 - 1;
        v80 = *(v164 + 56) + ((v78 << 10) | (16 * v79));
        v81 = *(v80 + 8);
        v82 = *v80;
        v169 = v81;
        sub_100013DE8();
        v170 = v82;

        if (v62(v77, 1, v75) == 1)
        {
          sub_100007CF4(v77, &qword_100021850, &unk_100015220);
          v83 = sub_1000140B8();
          v84 = sub_100014298();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&_mh_execute_header, v83, v84, "Unable to fetch configuration for an editing look view controller", v85, 2u);
            v62 = v159;
          }

          v74 = v78;
          v73 = v160;
          v77 = v165;
          if (!v72)
          {
            goto LABEL_11;
          }
        }

        else
        {
          (*v140)(v161, v77, v75);
          v86 = v167;
          sub_100013EA8();
          v87 = v150;
          if (v76)
          {
            v88 = v76;
            sub_100013F88();
            v89 = v88;
            sub_100013F48();
            sub_100013FA8();
            v90 = v166;
            v86 = v167;
            sub_100013F78();

            v91 = v168;
            v162(v86, v168);
            v92 = *v87;
            (*v87)(v86, v90, v91);
          }

          else
          {
            v92 = *v150;
            v91 = v168;
          }

          v93 = v143;
          v92(v143, v86, v91);
          v147 = *v158;
          v147(v166, v93, v91);
          v94 = v93;
          v95 = v161;
          sub_100013EC8();
          sub_100013ED8();

          sub_100013EE8();
          v96 = v144;
          sub_100013E98();
          v97 = v142;
          v98 = v153;
          (*v139)(v142, v96, v153);
          (*v149)(v97, 0, 1, v98);
          v99 = v170;
          sub_100013DF8();

          v100 = v94;
          if (sub_100013F98())
          {
            v147(v166, v94, v168);
            v101 = v169;
            sub_100014038();
          }

          else
          {
          }

          v102 = v151;
          v151(v96, v98);
          v162(v100, v168);
          v102(v95, v98);
          v74 = v78;
          v75 = v98;
          v76 = v155;
          v62 = v159;
          v73 = v160;
          v69 = v138;
          v77 = v165;
          if (!v72)
          {
            goto LABEL_11;
          }
        }

LABEL_10:
        v78 = v74;
      }
    }
  }

  v103 = v157;
  v104 = v130;
  sub_1000139C0(v157 + v137, v130, &qword_100021850, &unk_100015220);
  if (v62(v104, 1, v75) == 1)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v105 = v148;
  sub_100013EA8();
  v106 = v168;
  v107 = v166;
  if (v76)
  {
    v108 = v76;
    sub_100013F88();
    v109 = v108;
    sub_100013F48();
    sub_100013FA8();
    v105 = v148;
    sub_100013F78();

    v162(v105, v106);
    v110 = *v150;
    (*v150)(v105, v107, v106);
  }

  else
  {
    v110 = *v150;
  }

  v111 = v129;
  v112 = v134;
  v110(v134, v105, v106);
  v113 = v106;
  v114 = v151;
  v151(v104, v75);
  (*v158)(v136, v112, v113);
  v115 = v137;
  v116 = v128;
  sub_1000139C0(v103 + v137, v128, &qword_100021850, &unk_100015220);
  v117 = v159;
  if (v159(v116, 1, v75) == 1)
  {
    goto LABEL_38;
  }

  sub_100013EC8();
  v114(v116, v75);
  sub_1000139C0(v103 + v115, v111, &qword_100021850, &unk_100015220);
  if (v117(v111, 1, v75) == 1)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  sub_100013ED8();
  v114(v111, v75);
  v118 = v126;
  sub_1000139C0(v103 + v115, v126, &qword_100021850, &unk_100015220);
  if (v117(v118, 1, v75) == 1)
  {
    goto LABEL_40;
  }

  v119 = v115;
  sub_100013EE8();
  v114(v118, v75);

  v120 = v125;
  sub_100013E98();
  (*v149)(v120, 0, 1, v75);
  swift_beginAccess();
  sub_10001004C(v120, v103 + v119);
  swift_endAccess();
  v121 = v155;
  if (v155)
  {
    v172 = 0.0;
    v173 = 0;
    v171 = 0.0;
    [v155 getHue:&v173 saturation:&v172 brightness:&v171 alpha:0];
    *(v103 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_luminance) = v171 + v171 * v172 * -0.5;
    v122 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor;
    [*(v103 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor) updateLuminanceValuesForLooks];
    [*(v103 + v122) updateActions];
  }

  return (v162)(v134, v168);
}

void sub_10000E9C0(void *a1)
{
  v150 = a1;
  v2 = sub_100013E88();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v120 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v133 = &v111 - v6;
  v7 = sub_100013E78();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v121 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v132 = &v111 - v11;
  v12 = sub_100001F74(&qword_100021848, &qword_100015218);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v139 = &v111 - v14;
  v15 = sub_100013F38();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v118 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v130 = &v111 - v19;
  v20 = sub_100013F58();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v124 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v145 = &v111 - v24;
  v151 = sub_100013FB8();
  v25 = *(v151 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v151);
  v123 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v117 = &v111 - v30;
  v31 = __chkstk_darwin(v29);
  v138 = &v111 - v32;
  v33 = __chkstk_darwin(v31);
  v143 = &v111 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v111 - v36;
  __chkstk_darwin(v35);
  v122 = &v111 - v38;
  v39 = sub_100001F74(&qword_100021850, &unk_100015220);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v112 = &v111 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v114 = &v111 - v44;
  v45 = __chkstk_darwin(v43);
  v113 = &v111 - v46;
  v47 = __chkstk_darwin(v45);
  v115 = &v111 - v48;
  v49 = __chkstk_darwin(v47);
  v111 = &v111 - v50;
  v51 = __chkstk_darwin(v49);
  v116 = &v111 - v52;
  v53 = __chkstk_darwin(v51);
  v129 = &v111 - v54;
  v55 = __chkstk_darwin(v53);
  v119 = &v111 - v56;
  __chkstk_darwin(v55);
  v149 = &v111 - v57;
  v58 = sub_100013F18();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  v61 = __chkstk_darwin(v58);
  v128 = &v111 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v64 = &v111 - v63;
  v65 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers;
  swift_beginAccess();
  v141 = v1;
  v66 = *(v1 + v65);
  v67 = v66 + 64;
  v68 = 1 << *(v66 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v66 + 64);
  v135 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_logger;
  v148 = (v68 + 63) >> 6;
  v71 = (v59 + 48);
  v134 = (v59 + 32);
  v137 = (v25 + 16);
  v126 = (v59 + 16);
  v136 = (v59 + 56);
  v142 = (v59 + 8);
  v146 = (v25 + 8);
  v147 = v66;

  v72 = 0;
  v140 = v58;
  v144 = v67;
  v131 = (v59 + 48);
  v127 = v64;
  v125 = v37;
  for (i = v148; v70; i = v148)
  {
    v74 = v72;
    v75 = v149;
LABEL_9:
    v76 = __clz(__rbit64(v70));
    v70 &= v70 - 1;
    v77 = *(v147 + 56) + ((v74 << 10) | (16 * v76));
    v78 = *(v77 + 8);
    v79 = *v77;
    v152 = v78;
    sub_100013DE8();

    if ((*v71)(v75, 1, v58) == 1)
    {
      sub_100007CF4(v75, &qword_100021850, &unk_100015220);
      v80 = sub_1000140B8();
      v81 = sub_100014298();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "Unable to fetch configuration for an editing look view controller", v82, 2u);
      }

      v72 = v74;
      v58 = v140;
    }

    else
    {
      (*v134)(v64, v75, v58);
      sub_100013EA8();
      sub_100013F88();
      if (![v150 color])
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v83 = v58;
      sub_100013F48();
      sub_100013FA8();
      [v150 isSuggested];
      v84 = v143;
      sub_100013F78();
      (*v137)(v138, v84, v151);
      sub_100013EC8();
      sub_100013ED8();
      sub_100013F08();
      sub_100013EE8();
      v85 = v128;
      sub_100013E98();
      v86 = v129;
      (*v126)(v129, v85, v58);
      (*v136)(v86, 0, 1, v58);
      v87 = v79;
      sub_100013DF8();

      v88 = v152;
      sub_100013EA8();
      sub_100014038();

      v89 = *v142;
      v90 = v85;
      v64 = v127;
      (*v142)(v90, v58);
      v91 = *v146;
      v92 = v151;
      (*v146)(v143, v151);
      v91(v125, v92);
      v89(v64, v83);
      v72 = v74;
      v58 = v83;
      v71 = v131;
    }

    v67 = v144;
  }

  v75 = v149;
  while (1)
  {
    v74 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v74 >= i)
    {
      break;
    }

    v70 = *(v67 + 8 * v74);
    ++v72;
    if (v70)
    {
      goto LABEL_9;
    }
  }

  v93 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  v94 = v141;
  swift_beginAccess();
  v95 = v119;
  sub_1000139C0(v94 + v93, v119, &qword_100021850, &unk_100015220);
  v96 = *v71;
  if ((*v71)(v95, 1, v58) == 1)
  {
    goto LABEL_27;
  }

  v97 = v117;
  sub_100013EA8();
  v98 = *v142;
  (*v142)(v95, v58);
  sub_100013F88();
  v152 = *v146;
  (v152)(v97, v151);
  if (![v150 color])
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_100013F48();
  v99 = v116;
  sub_1000139C0(v94 + v93, v116, &qword_100021850, &unk_100015220);
  if (v96(v99, 1, v58) == 1)
  {
    goto LABEL_29;
  }

  v100 = v138;
  sub_100013EA8();
  v98(v99, v58);
  sub_100013FA8();
  v101 = v100;
  v102 = v151;
  (v152)(v101, v151);
  [v150 isSuggested];
  v103 = v122;
  v104 = v140;
  sub_100013F78();
  (*v137)(v123, v103, v102);
  v105 = v115;
  sub_1000139C0(v94 + v93, v115, &qword_100021850, &unk_100015220);
  if (v96(v105, 1, v104) == 1)
  {
    goto LABEL_30;
  }

  sub_100013EC8();
  v98(v105, v104);
  v106 = v113;
  sub_1000139C0(v94 + v93, v113, &qword_100021850, &unk_100015220);
  v107 = v96(v106, 1, v104);
  v108 = v114;
  if (v107 == 1)
  {
    goto LABEL_31;
  }

  sub_100013ED8();
  v98(v106, v104);
  sub_1000139C0(v94 + v93, v108, &qword_100021850, &unk_100015220);
  if (v96(v108, 1, v104) != 1)
  {
    sub_100013F08();
    v98(v108, v104);
    v109 = v112;
    sub_1000139C0(v94 + v93, v112, &qword_100021850, &unk_100015220);
    if (v96(v109, 1, v104) == 1)
    {
      goto LABEL_33;
    }

    sub_100013EE8();
    v98(v109, v104);
    v110 = v111;
    sub_100013E98();
    (v152)(v122, v151);
    (*v136)(v110, 0, 1, v104);
    swift_beginAccess();
    sub_10001004C(v110, v94 + v93);
    swift_endAccess();
    return;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

id sub_10000F870(double a1)
{
  v2 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC;
  v3 = *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC);
  if (!v3)
  {
    v9 = 0;
    return sub_10000FFA4(v9);
  }

  v5 = [v3 sheetPresentationController];
  if (!v5)
  {
    v9 = 0;
    v13 = *(v1 + v2);
    if (v13)
    {
      goto LABEL_8;
    }

    return sub_10000FFA4(v9);
  }

  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v9 = sub_10000FFEC;
  *(v8 + 16) = sub_10000FFEC;
  *(v8 + 24) = v7;
  v29[4] = sub_10001000C;
  v29[5] = v8;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 1107296256;
  v29[2] = sub_10000FB44;
  v29[3] = &unk_10001CC08;
  v10 = _Block_copy(v29);
  v11 = v6;

  [v11 animateChanges:v10];

  _Block_release(v10);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v1 + v2);
  if (!v13)
  {
    return sub_10000FFA4(v9);
  }

LABEL_8:
  v14 = [v13 popoverPresentationController];
  if (!v14)
  {
    return sub_10000FFA4(v9);
  }

  v15 = v14;
  v16 = [v14 presentedViewController];
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 1 && (sub_100014058() & 1) == 0)
  {
    Width = 400.0;
    goto LABEL_14;
  }

  result = [v16 view];
  if (result)
  {
    v19 = result;
    [result frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v30.origin.x = v21;
    v30.origin.y = v23;
    v30.size.width = v25;
    v30.size.height = v27;
    Width = CGRectGetWidth(v30);
LABEL_14:
    [v16 setPreferredContentSize:{Width, a1}];

    return sub_10000FFA4(v9);
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_10000FB6C()
{
  sub_1000140C8();
  v1 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  v2 = sub_100013F18();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_emojiRenderer] = 0;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_currentDeviceInterfaceOrientation] = 1;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor] = 0;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC] = 0;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_luminance] = 0x3FE0000000000000;
  v3 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_initialTitleColor;
  *&v0[v3] = [objc_opt_self() vibrantMonochromeColor];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for EmojiPosterExtensionEditorController(0);
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10000FCF8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000FE3C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000FE74()
{
  v0 = sub_1000140D8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000091BC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

id sub_10000FF7C()
{
  result = *(v0 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

uint64_t sub_10000FFA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000FFB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001000C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100010034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001004C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F74(&qword_100021850, &unk_100015220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000100BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000100F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10000D370();
}

uint64_t sub_1000100FC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100010144()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_100010170(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_10000C9C8(a1);
}

uint64_t sub_100010178()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000101B8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10000D030(a1);
}

uint64_t sub_1000101C0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100013C5C;

  return v7();
}

uint64_t sub_1000102A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100010390;

  return v8();
}

uint64_t sub_100010390()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100010484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001F74(&unk_1000218D0, &qword_100015260);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000139C0(a3, v25 - v11, &unk_1000218D0, &qword_100015260);
  v13 = sub_100014278();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100007CF4(v12, &unk_1000218D0, &qword_100015260);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100014268();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_100014238();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1000141A8() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100007CF4(a3, &unk_1000218D0, &qword_100015260);

    return v23;
  }

LABEL_8:
  sub_100007CF4(a3, &unk_1000218D0, &qword_100015260);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100010780(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010878;

  return v7(a1);
}

uint64_t sub_100010878()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100010970()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000109A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10000B9C4();
}

uint64_t sub_1000109B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000109F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001F74(&qword_1000218C0, &qword_100015258);
  v38 = a2;
  result = sub_1000143A8();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v39 = *(*(v5 + 56) + v22);
      if ((v38 & 1) == 0)
      {

        v26 = v39;
        v27 = *(&v39 + 1);
      }

      v28 = *(v8 + 40);
      sub_100014418();
      sub_1000141B8();
      result = sub_100014428();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v39;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_100010CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100005208(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000109F8(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100005208(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        sub_1000143F8();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_100010E5C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * v13;
    v26 = *(v25 + 8);
    v31 = *v25;
    *v25 = a1;
    *(v25 + 8) = a2;

    return;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v24[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v24[7] + 16 * v13);
  *v28 = a1;
  v28[1] = a2;
  v29 = v24[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v30;
}

id sub_100010E5C()
{
  v1 = v0;
  sub_100001F74(&qword_1000218C0, &qword_100015258);
  v2 = *v0;
  v3 = sub_100014398();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v23 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v23;

        v22 = v23;
        result = *(&v23 + 1);
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

unint64_t sub_100010FE8()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0)
  {
    return 1;
  }

  result = [v0 deviceOrientation];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

unint64_t sub_100011040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001F74(&qword_100021898, &qword_100015248);
    v3 = sub_1000143B8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000139C0(v4, v13, &unk_100021670, &qword_100015240);
      result = sub_100005280(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10001117C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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

_OWORD *sub_10001117C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_10001118C(void *a1)
{
  v2 = v1;
  v4 = sub_100001F74(&qword_100021850, &unk_100015220);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - v6;
  sub_1000082AC(a1, &v29 - v6);
  v8 = sub_100013F18();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_configuration;
  swift_beginAccess();
  sub_100013BD0(v7, v2 + v9);
  swift_endAccess();
  sub_100007DC0();
  sub_100007CF4(v7, &qword_100021850, &unk_100015220);
  swift_getObjectType();
  [a1 backlightProgress];
  v11 = v10;
  v12 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_wakeProgress;
  if (v10 != *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_wakeProgress))
  {
    v13 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
    if (!v13)
    {
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v14 = v13;
    sub_100013DD8();

    v15 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController);
    if (!v15)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v16 = v15;
    sub_100014018();

    *(v2 + v12) = v11;
  }

  [a1 unlockProgress];
  v17 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_unlockProgress;
  v18 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_unlockProgress);
  if (v19 != v18)
  {
    if (v18 == 1.0)
    {
      [a1 unlockProgress];
    }

    [a1 unlockProgress];
    v21 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
    if (!v21)
    {
      goto LABEL_17;
    }

    v22 = v20;
    v23 = v21;
    sub_100013E18();

    v24 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController);
    if (!v24)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v25 = v24;
    sub_100014028();

    *(v2 + v17) = v22;
  }

  v26 = sub_100010FE8();
  if (v26 == *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_currentDeviceInterfaceOrientation))
  {
    return;
  }

  *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_currentDeviceInterfaceOrientation) = v26;
  v27 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
  if (!v27)
  {
    __break(1u);
    goto LABEL_16;
  }

  v28 = v27;
  sub_100013E28();
}

uint64_t sub_100011438()
{
  v1 = sub_100013E88();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100013E78();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:PRTimeFontIdentifierRounded];
  sub_100001F74(&unk_100021650, &qword_1000150B8);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_100015130;
  v12 = v7[13];
  LODWORD(v93) = enum case for EmojiPosterLayoutStyle.offsetGrid(_:);
  v99 = v12;
  v100 = v7 + 13;
  v12(v10);
  v13 = v2[13];
  v92 = enum case for EmojiPosterSizeVariant.small(_:);
  v97 = v13;
  v98 = v2 + 13;
  v13(v5);
  sub_100013EF8();
  v14 = v2[1];
  v103 = v2 + 1;
  v104 = v1;
  v96 = v14;
  v14(v5, v1);
  v15 = v7[1];
  v101 = v7 + 1;
  v102 = v6;
  v95 = v15;
  v15(v10, v6);
  v16 = *(v0 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_initialTitleColor);
  v94 = sub_100006580(0, &qword_100021870, PRPosterColor_ptr);
  v107 = v94;
  v106[0] = v16;
  v17 = v11;
  v18 = v16;
  v19 = v17;
  v20 = sub_100014178();
  v21 = sub_100014178();

  v22 = v107;
  if (v107)
  {
    v23 = sub_1000136B0(v106, v107);
    v91 = v90;
    v24 = v18;
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    __chkstk_darwin(v23);
    v28 = v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28);
    v29 = sub_1000143C8();
    (*(v25 + 8))(v28, v22);
    v18 = v24;
    sub_100006320(v106);
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_allocWithZone(PREditingLook) initWithIdentifier:v20 displayName:v21 initialTimeFontConfiguration:v19 initialTitleColor:v29];

  swift_unknownObjectRelease();
  *(v105 + 32) = v30;
  v31 = v102;
  v99(v10, v93, v102);
  LODWORD(v91) = enum case for EmojiPosterSizeVariant.medium(_:);
  v32 = v104;
  v97(v5);
  sub_100013EF8();
  v96(v5, v32);
  v95(v10, v31);
  v107 = v94;
  v106[0] = v18;
  v33 = v18;
  v34 = v19;
  v35 = sub_100014178();
  v36 = sub_100014178();

  v37 = v107;
  if (v107)
  {
    v38 = sub_1000136B0(v106, v107);
    v90[1] = v90;
    v39 = v33;
    v40 = *(v37 - 8);
    v41 = *(v40 + 64);
    __chkstk_darwin(v38);
    v43 = v90 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v43);
    v44 = sub_1000143C8();
    (*(v40 + 8))(v43, v37);
    v33 = v39;
    sub_100006320(v106);
  }

  else
  {
    v44 = 0;
  }

  v45 = [objc_allocWithZone(PREditingLook) initWithIdentifier:v35 displayName:v36 initialTimeFontConfiguration:v34 initialTitleColor:v44];

  swift_unknownObjectRelease();
  *(v105 + 40) = v45;
  v46 = v102;
  v99(v10, v93, v102);
  v47 = v104;
  (v97)(v5, enum case for EmojiPosterSizeVariant.large(_:), v104);
  sub_100013EF8();
  v96(v5, v47);
  v95(v10, v46);
  v107 = v94;
  v106[0] = v33;
  v48 = v33;
  v49 = v34;
  v50 = sub_100014178();
  v51 = sub_100014178();

  v52 = v107;
  if (v107)
  {
    v53 = sub_1000136B0(v106, v107);
    v93 = v90;
    v54 = v48;
    v55 = *(v52 - 8);
    v56 = *(v55 + 64);
    __chkstk_darwin(v53);
    v58 = v90 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v58);
    v59 = sub_1000143C8();
    (*(v55 + 8))(v58, v52);
    v48 = v54;
    sub_100006320(v106);
  }

  else
  {
    v59 = 0;
  }

  v60 = [objc_allocWithZone(PREditingLook) initWithIdentifier:v50 displayName:v51 initialTimeFontConfiguration:v49 initialTitleColor:v59];

  swift_unknownObjectRelease();
  *(v105 + 48) = v60;
  v61 = v102;
  v99(v10, enum case for EmojiPosterLayoutStyle.circular(_:), v102);
  v62 = v104;
  (v97)(v5, v92, v104);
  sub_100013EF8();
  v96(v5, v62);
  v95(v10, v61);
  v107 = v94;
  v106[0] = v48;
  v63 = v48;
  v64 = v49;
  v65 = sub_100014178();
  v66 = sub_100014178();

  v67 = v107;
  if (v107)
  {
    v68 = sub_1000136B0(v106, v107);
    v93 = v90;
    v69 = v63;
    v70 = *(v67 - 8);
    v71 = *(v70 + 64);
    __chkstk_darwin(v68);
    v73 = v90 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v70 + 16))(v73);
    v74 = sub_1000143C8();
    (*(v70 + 8))(v73, v67);
    v63 = v69;
    sub_100006320(v106);
  }

  else
  {
    v74 = 0;
  }

  v75 = [objc_allocWithZone(PREditingLook) initWithIdentifier:v65 displayName:v66 initialTimeFontConfiguration:v64 initialTitleColor:v74];

  swift_unknownObjectRelease();
  *(v105 + 56) = v75;
  v76 = v102;
  v99(v10, enum case for EmojiPosterLayoutStyle.spiral(_:), v102);
  v77 = v104;
  (v97)(v5, v91, v104);
  sub_100013EF8();
  v96(v5, v77);
  v95(v10, v76);
  v107 = v94;
  v106[0] = v63;
  v78 = sub_100014178();
  v79 = sub_100014178();

  v80 = v107;
  if (v107)
  {
    v81 = sub_1000136B0(v106, v107);
    v82 = *(v80 - 8);
    v83 = *(v82 + 64);
    __chkstk_darwin(v81);
    v85 = v90 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v82 + 16))(v85);
    v86 = sub_1000143C8();
    (*(v82 + 8))(v85, v80);
    sub_100006320(v106);
  }

  else
  {
    v86 = 0;
  }

  v87 = [objc_allocWithZone(PREditingLook) initWithIdentifier:v78 displayName:v79 initialTimeFontConfiguration:v64 initialTitleColor:v86];

  swift_unknownObjectRelease();
  v88 = v105;
  *(v105 + 64) = v87;

  return v88;
}

uint64_t sub_100012090()
{
  v1 = sub_100013E78();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  __chkstk_darwin(v1);
  v56 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100013E88();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  __chkstk_darwin(v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001F74(&qword_100021850, &unk_100015220);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v55 - v13;
  v15 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  swift_beginAccess();
  v59 = v0;
  sub_1000139C0(v0 + v15, v14, &qword_100021850, &unk_100015220);
  v16 = sub_100013F18();
  v17 = *(v16 - 8);
  v60 = *(v17 + 48);
  result = (v60)(v14, 1, v16);
  if (result == 1)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_100013ED8();
  v19 = *(v17 + 8);
  v19(v14, v16);
  v20 = v61;
  v21 = (*(v61 + 88))(v7, v4);
  if (v21 == enum case for EmojiPosterSizeVariant.small(_:))
  {
    goto LABEL_3;
  }

  if (v21 == enum case for EmojiPosterSizeVariant.medium(_:))
  {
    v22 = 77;
  }

  else
  {
    if (v21 != enum case for EmojiPosterSizeVariant.large(_:))
    {
      (*(v20 + 8))(v7, v4);
LABEL_3:
      v22 = 83;
      goto LABEL_8;
    }

    v22 = 76;
  }

LABEL_8:
  sub_1000139C0(v59 + v15, v12, &qword_100021850, &unk_100015220);
  result = (v60)(v12, 1, v16);
  if (result == 1)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v23 = v56;
  sub_100013EC8();
  v19(v12, v16);
  v25 = v57;
  v24 = v58;
  v26 = (*(v57 + 88))(v23, v58);
  if (v26 == enum case for EmojiPosterLayoutStyle.offsetGrid(_:))
  {
    v27 = 0xE400000000000000;
    v28._countAndFlagsBits = 1684632167;
  }

  else if (v26 == enum case for EmojiPosterLayoutStyle.circular(_:))
  {
    v27 = 0xE800000000000000;
    v28._countAndFlagsBits = 0x72616C7563726963;
  }

  else
  {
    v29 = v26;
    v28._countAndFlagsBits = 0x6C6172697073;
    if (v29 != enum case for EmojiPosterLayoutStyle.spiral(_:))
    {
      (*(v25 + 8))(v23, v24);
      v28._countAndFlagsBits = 0x6C6172697073;
    }

    v27 = 0xE600000000000000;
  }

  v62 = v22;
  v63 = 0xE100000000000000;
  v28._object = v27;
  sub_1000141C8(v28);

  v31 = v62;
  v30 = v63;
  v61 = sub_100011438();
  if (v61 >> 62)
  {
LABEL_43:
    v32 = sub_100014388();
    if (v32)
    {
LABEL_18:
      v33 = 0;
      v34 = v61 & 0xC000000000000001;
      v60 = v61 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v34)
        {
          v35 = sub_100014368();
        }

        else
        {
          if (v33 >= *(v60 + 16))
          {
            goto LABEL_42;
          }

          v35 = *(v61 + 8 * v33 + 32);
        }

        v36 = v35;
        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v38 = [v35 identifier];
        v39 = sub_100014188();
        v41 = v40;

        if (v39 == v31 && v41 == v30)
        {

LABEL_32:
          v44 = v36;

          v45 = v44;
          goto LABEL_37;
        }

        v43 = sub_1000143D8();

        if (v43)
        {
          goto LABEL_32;
        }

        ++v33;
      }

      while (v37 != v32);

      if (v34)
      {
        goto LABEL_45;
      }

      if (*(v60 + 16))
      {
        v46 = *(v61 + 32);
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    v32 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_45:
  v46 = sub_100014368();
LABEL_36:
  v44 = v46;
  v45 = 0;
LABEL_37:

  v47 = [v44 identifier];

  v48 = sub_100014188();
  v50 = v49;

  v51 = sub_1000140B8();
  v52 = sub_100014288();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v62 = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_100004C50(v48, v50, &v62);
    _os_log_impl(&_mh_execute_header, v51, v52, "Initial look: %s", v53, 0xCu);
    sub_100006320(v54);
  }

  return v48;
}

void sub_100012768(void *a1)
{
  swift_getObjectType();
  v3 = sub_100010FE8();
  v4 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_currentDeviceInterfaceOrientation;
  if (v3 != *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_currentDeviceInterfaceOrientation))
  {
    v5 = v3;
    v6 = [a1 currentLook];
    v7 = [v6 identifier];

    v8 = sub_100014188();
    v10 = v9;

    *(v1 + v4) = v5;
    v11 = *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC);
    if (v11)
    {
      v12 = objc_opt_self();
      v13 = v11;
      v14 = [v12 currentDevice];
      v15 = [v14 userInterfaceIdiom];

      if (v15 == 1)
      {
        [v13 dismissViewControllerAnimated:1 completion:0];
      }
    }

    v16 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers;
    swift_beginAccess();
    v17 = *(v1 + v16);
    v18 = 1 << *(v17 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v17 + 64);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    while (v20)
    {
LABEL_15:
      v25 = (v22 << 10) | (16 * __clz(__rbit64(v20)));
      v26 = (*(v17 + 48) + v25);
      v27 = *(*(v17 + 56) + v25);
      if (*v26 != v8 || v26[1] != v10)
      {
        sub_1000143D8();
      }

      v20 &= v20 - 1;
      v23 = v27;
      sub_100013E28();
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v21)
      {

        return;
      }

      v20 = *(v17 + 64 + 8 * v24);
      ++v22;
      if (v20)
      {
        v22 = v24;
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

void sub_1000129B0()
{
  v1 = v0;
  v2 = sub_100001F74(&qword_100021850, &unk_100015220);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14[-v4];
  if (*(v0 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_emojiRenderer))
  {

    sub_100013E48();

    v6 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers;
    swift_beginAccess();
    v7 = *(v1 + v6);
    *(v1 + v6) = &_swiftEmptyDictionarySingleton;

    v8 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC;
    v9 = *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC);
    if (v9)
    {
      v10 = v9;
      sub_100013D88();

      v9 = *(v1 + v8);
    }

    *(v1 + v8) = 0;

    v11 = sub_100013F18();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
    swift_beginAccess();
    sub_10001004C(v5, v1 + v12);
    swift_endAccess();
    v13 = *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor);
    *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_100012B34(void *a1, void *a2)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  sub_100001F74(&unk_100021650, &qword_1000150B8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100015140;
  v6 = [a2 leadingAnchor];
  v7 = [a1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [a2 trailingAnchor];
  v10 = [a1 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [a2 topAnchor];
  v13 = [a1 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [a2 bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_100006580(0, &qword_1000218B8, NSLayoutConstraint_ptr);
  isa = sub_1000141F8().super.isa;

  [v4 activateConstraints:isa];
}

void sub_100012D9C(void *a1, void *a2)
{
  v3 = v2;
  v57 = a1;
  v5 = sub_100013FB8();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100001F74(&qword_100021850, &unk_100015220);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v53 - v9;
  v55 = sub_100013F18();
  v11 = *(v55 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v55);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 identifier];
  v16 = sub_100014188();
  v18 = v17;

  v19 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers;
  swift_beginAccess();
  v20 = *(v3 + v19);
  if (*(v20 + 16))
  {
    v54 = v3;
    v21 = a2;

    v22 = sub_100005208(v16, v18);
    v24 = v23;

    if (v24)
    {
      v25 = *(v20 + 56) + 16 * v22;
      v26 = *(v25 + 8);
      v27 = *v25;
      v28 = v26;

      v56 = v27;
      v29 = v28;
      v30 = v57;
      v3 = v54;
      goto LABEL_8;
    }

    a2 = v21;
    v3 = v54;
  }

  else
  {
  }

  v56 = a2;
  sub_10000B110(a2, v14);
  if (*(v3 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_emojiRenderer))
  {
    v31 = objc_allocWithZone(sub_100013E38());

    v32 = sub_100013E08();
    v33 = v55;
    (*(v11 + 16))(v10, v14, v55);
    (*(v11 + 56))(v10, 0, 1, v33);
    v34 = v32;
    sub_100013DF8();
    sub_100014048();
    v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_100013EA8();
    sub_100014038();
    v35 = [v56 identifier];
    v36 = sub_100014188();
    v38 = v37;

    swift_beginAccess();
    v39 = *(v3 + v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v3 + v19);
    *(v3 + v19) = 0x8000000000000000;
    v56 = v34;
    sub_100010CBC(v34, v29, v36, v38, isUniquelyReferenced_nonNull_native);

    *(v3 + v19) = v58;
    swift_endAccess();
    (*(v11 + 8))(v14, v33);
    v30 = v57;
LABEL_8:
    v41 = [v30 backgroundView];
    v42 = [v29 view];
    if (v42)
    {
      v43 = v42;
      [v41 addSubview:v42];

      v44 = [v29 view];
      if (v44)
      {
        v45 = [v30 backgroundView];
        sub_100012B34(v44, v45);

        v46 = [v30 foregroundView];
        v47 = v56;
        v48 = [v47 view];
        if (v48)
        {
          v49 = v48;
          [v46 addSubview:v48];

          v50 = [v47 view];
          if (v50)
          {
            v51 = [v30 foregroundView];
            sub_100012B34(v50, v51);

            v52 = *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_currentDeviceInterfaceOrientation);
            sub_100013E28();

            return;
          }

          goto LABEL_16;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1000132F8()
{
  v1 = v0;
  v26 = sub_100013F38();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v26);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100013FB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001F74(&qword_100021850, &unk_100015220);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  sub_100013D68();
  v16 = sub_100013D48();
  [v15 setColorPalette:v16];

  [v15 setColorWellDisplayMode:2];
  v17 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  swift_beginAccess();
  sub_1000139C0(v1 + v17, v14, &qword_100021850, &unk_100015220);
  v18 = sub_100013F18();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v14, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100013EA8();
    (*(v19 + 8))(v14, v18);
    sub_100013F68();
    (*(v7 + 8))(v10, v6);
    isa = sub_100013F28().super.isa;
    (*(v2 + 8))(v5, v26);
    v22 = [objc_allocWithZone(PRPosterColor) initWithColor:isa];

    sub_100001F74(&qword_1000218A8, &qword_100015250);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100015110;
    *(v23 + 56) = sub_100006580(0, &qword_100021870, PRPosterColor_ptr);
    *(v23 + 32) = v22;
    v24 = v22;
    v25 = sub_1000141F8().super.isa;

    [v15 setSuggestedColors:v25];

    [v15 setSelectedColor:v24];
    return v15;
  }

  return result;
}

void *sub_1000136B0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000136F4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001373C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100010390;

  return sub_10000AD68(v2, v3, v4);
}

uint64_t sub_1000137F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100013C5C;

  return sub_1000101C0(v2, v3, v5);
}

uint64_t sub_1000138B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000138F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100013C5C;

  return sub_1000102A8(a1, v4, v5, v7);
}

uint64_t sub_1000139C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001F74(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100013A28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013A60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013C5C;

  return sub_100010780(a1, v5);
}

uint64_t sub_100013B18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100010390;

  return sub_100010780(a1, v5);
}

uint64_t sub_100013BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F74(&qword_100021850, &unk_100015220);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}