uint64_t sub_10058BB38(int a1, char a2)
{
  v3 = v2;
  v59[0] = sub_10010E56C(&off_101099238);
  swift_beginAccess();

  v7 = sub_100587718(v6, a1);
  v9 = v8;
  v11 = v10;
  v12 = ~v10;

  if (v12)
  {
    v53 = a1;
    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_1011961A0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v52 = a2;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v55[0] = v17;
      v18 = 0xD00000000000002CLL;
      *v16 = 136446210;
      v19 = "llPlaylists";
      v56 = 0x287069746C6F6F54;
      v57 = 0xE800000000000000;
      v20 = "ansliterationSing";
      v21 = 0xD00000000000003BLL;
      if (v53 != 6)
      {
        v21 = 0xD000000000000027;
        v20 = "anslationAndTransliteration";
      }

      v22 = "Tooltip.LyricsTranslation";
      v23 = 0xD00000000000002DLL;
      if (v53 != 4)
      {
        v23 = 0xD000000000000031;
        v22 = "Tooltip.LyricsTransliteration";
      }

      if (v53 <= 5u)
      {
        v21 = v23;
        v20 = v22;
      }

      v24 = "com.apple.Music.Tooltip.Sing";
      if (v53 != 2)
      {
        v24 = "Tooltip.SharePlayTogether";
      }

      if (v53)
      {
        v18 = 0xD00000000000001CLL;
        v19 = "Tooltip.FavoritingNowPlaying";
      }

      if (v53 > 1u)
      {
        v18 = 0xD000000000000029;
        v19 = v24;
      }

      if (v53 <= 3u)
      {
        v25 = v18;
      }

      else
      {
        v25 = v21;
      }

      if (v53 <= 3u)
      {
        v26 = v19;
      }

      else
      {
        v26 = v20;
      }

      v27 = v26 | 0x8000000000000000;
      String.append(_:)(*&v25);

      v28._countAndFlagsBits = 41;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29 = sub_1000105AC(v56, v57, v55);

      *(v16 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v14, v15, "↪️🫳 Dropping %{public}s from queue", v16, 0xCu);
      sub_10000959C(v17);

      a2 = v52;
      a1 = v53;
    }

    else
    {
    }

    sub_1003B3140(&v56, 1);
    swift_beginAccess();
    sub_100747F90(v7, v9, &v56);
    sub_100198CAC(&v56);
    swift_endAccess();
    sub_100590F24(v7, v9, v11);
  }

  swift_beginAccess();
  sub_1000089F8(v2 + 16, v55, &qword_101196300);
  if (*(&v55[0] + 1))
  {
    sub_100198C50(v55, &v56);
    v30 = v56;
    if (sub_1006B8F0C(v56, a1))
    {
      if (qword_10117F8B0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000060E4(v31, qword_1011961A0);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = a2;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v54[0] = v36;
        v37 = 0xD00000000000002CLL;
        *v35 = 136446210;
        v38 = "llPlaylists";
        *&v55[0] = 0x287069746C6F6F54;
        *(&v55[0] + 1) = 0xE800000000000000;
        v39 = "ansliterationSing";
        v40 = 0xD00000000000003BLL;
        if (a1 != 6)
        {
          v40 = 0xD000000000000027;
          v39 = "anslationAndTransliteration";
        }

        v41 = "Tooltip.LyricsTranslation";
        v42 = 0xD00000000000002DLL;
        if (a1 != 4)
        {
          v42 = 0xD000000000000031;
          v41 = "Tooltip.LyricsTransliteration";
        }

        if (a1 <= 5u)
        {
          v40 = v42;
          v39 = v41;
        }

        v43 = "com.apple.Music.Tooltip.Sing";
        if (a1 != 2)
        {
          v43 = "Tooltip.SharePlayTogether";
        }

        if (a1)
        {
          v37 = 0xD00000000000001CLL;
          v38 = "Tooltip.FavoritingNowPlaying";
        }

        if (a1 > 1u)
        {
          v37 = 0xD000000000000029;
          v38 = v43;
        }

        if (a1 <= 3u)
        {
          v44 = v37;
        }

        else
        {
          v44 = v40;
        }

        if (a1 <= 3u)
        {
          v45 = v38;
        }

        else
        {
          v45 = v39;
        }

        v46 = v45 | 0x8000000000000000;
        String.append(_:)(*&v44);

        v47._countAndFlagsBits = 41;
        v47._object = 0xE100000000000000;
        String.append(_:)(v47);
        v48 = sub_1000105AC(*&v55[0], *(&v55[0] + 1), v54);

        *(v35 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v32, v33, "Programmatically dismissing %{public}s", v35, 0xCu);
        sub_10000959C(v36);

        a2 = v34;
      }

      else
      {
      }

      sub_1003B3140(v55, 0);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v50 = Strong;
        [Strong dismissViewControllerAnimated:1 completion:0];
      }

      if (v58)
      {
        v58(v30);
      }

      memset(v55, 0, sizeof(v55));
      sub_1000089F8(v3 + 16, v54, &qword_101196300);
      swift_beginAccess();
      sub_100590984(v55, v3 + 16);
      swift_endAccess();
      sub_10058AB84(v54);
      sub_1000095E8(v54, &qword_101196300);
      sub_1000095E8(v55, &qword_101196300);
    }

    sub_100198CAC(&v56);
  }

  else
  {
    sub_1000095E8(v55, &qword_101196300);
  }

  sub_10058C20C(a2, v59, a1);
}

void sub_10058C20C(char a1, uint64_t a2, int a3)
{
  if (a1 != 3)
  {
    v26[11] = v3;
    v26[12] = v4;
    if (sub_100031064())
    {
      if (qword_10117F8B0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000060E4(v6, qword_1011961A0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v11 = 0xD00000000000002CLL;
        *v9 = 136446466;
        v12 = "llPlaylists";
        v26[0] = v10;
        v13 = "ansliterationSing";
        v14 = 0xD00000000000003BLL;
        if (a3 != 6)
        {
          v14 = 0xD000000000000027;
          v13 = "anslationAndTransliteration";
        }

        v15 = "Tooltip.LyricsTranslation";
        v16 = 0xD00000000000002DLL;
        if (a3 != 4)
        {
          v16 = 0xD000000000000031;
          v15 = "Tooltip.LyricsTransliteration";
        }

        if (a3 <= 5u)
        {
          v14 = v16;
          v13 = v15;
        }

        v17 = "com.apple.Music.Tooltip.Sing";
        if (a3 != 2)
        {
          v17 = "Tooltip.SharePlayTogether";
        }

        if (a3)
        {
          v11 = 0xD00000000000001CLL;
          v12 = "Tooltip.FavoritingNowPlaying";
        }

        if (a3 > 1u)
        {
          v11 = 0xD000000000000029;
          v12 = v17;
        }

        if (a3 <= 3u)
        {
          v18 = v11;
        }

        else
        {
          v18 = v14;
        }

        if (a3 <= 3u)
        {
          v19 = v12;
        }

        else
        {
          v19 = v13;
        }

        v20 = v19 | 0x8000000000000000;
        String.append(_:)(*&v18);

        v21._countAndFlagsBits = 41;
        v21._object = 0xE100000000000000;
        String.append(_:)(v21);
        v22 = sub_1000105AC(0x287069746C6F6F54, 0xE800000000000000, v26);

        *(v9 + 4) = v22;
        *(v9 + 12) = 2082;
        v23 = String.init<A>(describing:)();
        v25 = sub_1000105AC(v23, v24, v26);

        *(v9 + 14) = v25;
        _os_log_impl(&_mh_execute_header, v7, v8, "🫳👁️‍🗨️ Acknowledging %{public}s after being dropped (reason=%{public}s)", v9, 0x16u);
        swift_arrayDestroy();
      }

      sub_100588C1C(a3);
      sub_10058E588(a3);
    }
  }
}

void sub_10058C4EC()
{
  if (byte_101196188 == 1)
  {
    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000060E4(v1, qword_1011961A0);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "🤖 ToolTips are disabled; skipping attempt to dequeue.", v3, 2u);
    }
  }

  else if ((*(v0 + 120) & 1) == 0)
  {
    swift_beginAccess();
    sub_1000089F8(v0 + 16, v12, &qword_101196300);
    v4 = v13;
    sub_1000095E8(v12, &qword_101196300);
    if (!v4)
    {
      swift_beginAccess();
      if (*(*(v0 + 112) + 16))
      {
        v5 = v0;
        *(v0 + 120) = 1;
        if (qword_10117F8B0 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_1000060E4(v6, qword_1011961A0);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, v8, "➡️ Needs Dequeue", v9, 2u);
        }

        sub_100009F78(0, &qword_101182960);
        v10 = static OS_dispatch_queue.main.getter();

        OS_dispatch_queue.asyncAfter(_:block:)(sub_100590F20, v5);
      }
    }
  }
}

void sub_10058C790()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2 - 8);
  v4 = &v168 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101196308);
  __chkstk_darwin(v5 - 8);
  v7 = &v168 - v6;
  if (*(v0 + 120) == 1)
  {
    swift_beginAccess();
    sub_1000089F8(v0 + 16, &v197, &qword_101196300);
    v8 = v198;
    sub_1000095E8(&v197, &qword_101196300);
    if (!v8)
    {
      v174 = v4;
      swift_beginAccess();
      v9 = *(v0 + 112);
      v10 = *(v9 + 16);
      v11 = _swiftEmptyArrayStorage;
      v175 = v7;
      v176 = v1;
      if (v10)
      {
        v11 = sub_1003ADF50(v10, 0);
        v12 = sub_100197D6C(&v197, (v11 + 4), v10, v9);
        v1 = v198;
        v13 = v199;
        swift_bridgeObjectRetain_n();
        sub_10005C9F8();
        if (v12 != v10)
        {
          goto LABEL_103;
        }

        v1 = v176;
      }

      v197 = v11;
      sub_10058F520(&v197);
      v14 = v197;
      v15 = v197[2];
      if (v15)
      {
        v16 = v197 + 4;
        sub_100198BF4(&v197[12 * v15 - 8], &v197);
        if (v15 == 1)
        {
        }

        else
        {
          if (qword_10117F8B0 != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for Logger();
          sub_1000060E4(v17, qword_1011961A0);

          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v18, v19))
          {
            v171 = v19;
            v172 = v18;
            v173 = v14;
            v20 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            v187[0] = v169;
            v170 = v20;
            *v20 = 136446210;
            *&v203 = _swiftEmptyArrayStorage;
            sub_100015C04(0, v15, 0);
            v21 = v203;
            v185 = "ansliterationSing";
            v186 = "llPlaylists";
            v183 = 0xD000000000000027;
            *&v184 = "anslationAndTransliteration";
            v181 = "Tooltip.LyricsTransliteration";
            v182 = "Tooltip.LyricsTranslation";
            v179 = "Tooltip.SharePlayTogether";
            v180 = "com.apple.Music.Tooltip.Sing";
            v177 = 0xD00000000000001CLL;
            v178 = "Tooltip.FavoritingNowPlaying";
            do
            {
              sub_100198BF4(v16, &v191);
              v188 = 0x287069746C6F6F54;
              v189 = 0xE800000000000000;
              v22 = 0xD00000000000002CLL;
              v23 = 0xD00000000000003BLL;
              if (v191 != 6)
              {
                v23 = v183;
              }

              v24 = v185;
              if (v191 != 6)
              {
                v24 = v184;
              }

              v25 = 0xD00000000000002DLL;
              if (v191 != 4)
              {
                v25 = 0xD000000000000031;
              }

              v26 = v182;
              if (v191 != 4)
              {
                v26 = v181;
              }

              if (v191 <= 5u)
              {
                v23 = v25;
                v24 = v26;
              }

              v27 = v180;
              if (v191 != 2)
              {
                v27 = v179;
              }

              if (v191)
              {
                v22 = v177;
              }

              v28 = v186;
              if (v191)
              {
                v28 = v178;
              }

              if (v191 <= 1u)
              {
                v27 = v28;
              }

              else
              {
                v22 = 0xD000000000000029;
              }

              if (v191 <= 3u)
              {
                v29 = v22;
              }

              else
              {
                v29 = v23;
              }

              if (v191 <= 3u)
              {
                v30 = v27;
              }

              else
              {
                v30 = v24;
              }

              v31 = v30 | 0x8000000000000000;
              String.append(_:)(*&v29);

              v32._countAndFlagsBits = 41;
              v32._object = 0xE100000000000000;
              String.append(_:)(v32);
              v34 = v188;
              v33 = v189;
              sub_100198CAC(&v191);
              *&v203 = v21;
              v36 = *(v21 + 16);
              v35 = *(v21 + 24);
              if (v36 >= v35 >> 1)
              {
                sub_100015C04((v35 > 1), v36 + 1, 1);
                v21 = v203;
              }

              *(v21 + 16) = v36 + 1;
              v37 = v21 + 16 * v36;
              *(v37 + 32) = v34;
              *(v37 + 40) = v33;
              v16 += 12;
              --v15;
            }

            while (v15);

            v38 = Array.description.getter();
            v40 = v39;

            v41 = sub_1000105AC(v38, v40, v187);

            v42 = v170;
            *(v170 + 1) = v41;
            v43 = v172;
            _os_log_impl(&_mh_execute_header, v172, v171, "➡️ Sorted (lowest to highest priority) tooltips=%{public}s", v42, 0xCu);
            sub_10000959C(v169);

            v1 = v176;
          }

          else
          {
          }
        }

        v13 = v197;
        v205 = v200;
        v206 = v201;
        v207 = v202;
        v203 = v198;
        v204 = v199;
        if (qword_10117F8B0 != -1)
        {
          goto LABEL_104;
        }

        while (1)
        {
          v44 = type metadata accessor for Logger();
          v45 = sub_1000060E4(v44, qword_1011961A0);
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *&v191 = v49;
            *v48 = 136446210;
            v50 = sub_100589014(v13);
            v52 = sub_1000105AC(v50, v51, &v191);

            *(v48 + 4) = v52;
            _os_log_impl(&_mh_execute_header, v46, v47, "⤴️ Dequeued %{public}s", v48, 0xCu);
            sub_10000959C(v49);
          }

          swift_beginAccess();
          sub_100195260(&v197, &v191);
          sub_1000095E8(&v191, &qword_101196300);
          swift_endAccess();
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            *&v191 = v56;
            *v55 = 136446210;
            v57 = sub_100589014(v13);
            v59 = sub_1000105AC(v57, v58, &v191);

            *(v55 + 4) = v59;
            _os_log_impl(&_mh_execute_header, v53, v54, "⚡️ Creating view controller for %{public}s", v55, 0xCu);
            sub_10000959C(v56);
          }

          (v203)(&v188, v13);
          if (v190 == 1)
          {
            sub_1000095E8(&v188, &unk_1011845E0);
            goto LABEL_55;
          }

          sub_10012B828(&v188, &v191);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            break;
          }

          v61 = Strong;
          v180 = Strong;
          if (v196 == 0xFF)
          {
            v62 = 0;
          }

          else
          {
            v71 = *(&v191 + 1);
            v70 = v192;
            v72 = v193;
            v73 = v194;
            v74 = v195;
            if (v196)
            {
              if (v196 == 1)
              {
                v62 = [*(&v191 + 1) customView];
                v75 = v62;
                v61 = v180;
              }

              else
              {
                v77 = v1;
                objc_opt_self();
                v78 = swift_dynamicCastObjCClass();
                if (v78)
                {
                  v79 = v78;
                  sub_100590A04(v71, v70, v72, v73, v74, 2u);
                  v62 = v79;
                }

                else
                {
                  v62 = 0;
                }

                v1 = v77;
                v61 = v180;
                v80 = v62;
              }
            }

            else
            {
              sub_100590A28(*(&v191 + 1), v192, v193, v194, v195, v196);
              v76 = v74;
              v62 = v71;
              sub_100590A04(v71, v70, v72, v73, v76, 0);
              v61 = v180;
            }
          }

          v81 = swift_allocObject();
          swift_weakInit();
          v82 = swift_allocObject();
          *(v82 + 16) = v13;
          *(v82 + 24) = v81;
          v83 = v206;
          *(v82 + 64) = v205;
          *(v82 + 80) = v83;
          *(v82 + 96) = v207;
          v84 = v204;
          *(v82 + 32) = v203;
          *(v82 + 48) = v84;
          v85 = swift_allocObject();
          *(v85 + 16) = v13;
          *(v85 + 24) = sub_100590924;
          *(v85 + 32) = v82;
          v181 = v82;

          sub_1001D1980(&v203, &v188);
          LODWORD(v182) = v13;
          sub_1005893B0(sub_100590934, v13, v175);

          UIEdgeInsets.init(edges:inset:)();
          v208 = v86;
          v209 = v87;
          v210 = v88;
          v211 = v89;
          v212 = 0;
          v90 = objc_allocWithZone(sub_10010FC20(&qword_101196310));
          v183 = v62;
          v91 = PopoverViewController.init(rootView:sourceView:sourceRectInsets:)();
          v92 = [v61 view];
          if (!v92)
          {
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);

            __break(1u);
            return;
          }

          v93 = v92;
          [v92 layoutMargins];

          v94 = [v61 view];
          if (!v94)
          {
            goto LABEL_106;
          }

          v95 = v94;
          [v94 frame];
          v97 = v96;
          v99 = v98;
          v101 = v100;
          v103 = v102;

          v213.origin.x = v97;
          v213.origin.y = v99;
          v213.size.width = v101;
          v213.size.height = v103;
          CGRectGetWidth(v213);
          UIEdgeInsets.horizontal.getter();
          v104 = [v61 view];
          if (!v104)
          {
            goto LABEL_107;
          }

          v105 = v104;
          v106 = [v104 window];

          if (v106)
          {
            v107 = [v106 traitCollection];

            v108 = [v107 horizontalSizeClass];
            if (v108 == 2)
            {
              v109 = [v61 view];
              if (!v109)
              {
                goto LABEL_108;
              }

              v110 = v109;
              UIView.maxReadableContentWidth(for:)();

              v111 = [v61 traitCollection];
              [v111 displayScale];

              CGFloat.roundValue(scale:)();
            }
          }

          v186 = v45;
          v112 = v91;
          static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
          dispatch thunk of UIHostingController.sizingOptions.setter();

          v113 = v112;
          v114 = [v61 traitCollection];
          v115 = [v114 userInterfaceStyle];

          [v113 setOverrideUserInterfaceStyle:v115];
          dispatch thunk of UIHostingController.sizeThatFits(in:)();
          [v113 setPreferredContentSize:?];
          v116 = [v113 popoverPresentationController];
          if (v116)
          {
            v117 = v116;
            [v116 setPermittedArrowDirections:*(&v204 + 1)];
          }

          dispatch thunk of PopoverViewController.allowDismissal.setter();
          v118 = v182;
          if (v62)
          {
            if (v204)
            {
              sub_10010FC20(&qword_101183990);
              v119 = swift_allocObject();
              *(v119 + 16) = xmmword_100EBC6C0;
              v120 = v183;
              *(v119 + 32) = v183;
              v121 = v120;
              dispatch thunk of PopoverViewController.passthroughViews.setter();
            }
          }

          v122 = swift_allocObject();
          *(v122 + 16) = v118;
          *(v122 + 24) = sub_100590924;
          *(v122 + 32) = v181;

          dispatch thunk of PopoverViewController.didDismissPopoverHandler.setter();
          swift_unknownObjectWeakAssign();
          v179 = v113;

          sub_100198BF4(&v197, &v188);
          sub_1000089F8((v1 + 16), v187, &qword_101196300);
          swift_beginAccess();
          sub_100590984(&v188, (v1 + 16));
          swift_endAccess();
          sub_10058AB84(v187);
          sub_1000095E8(v187, &qword_101196300);
          sub_1000095E8(&v188, &qword_101196300);
          v123 = Logger.logObject.getter();
          v124 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v123, v124))
          {
            v125 = swift_slowAlloc();
            *v125 = 0;
            _os_log_impl(&_mh_execute_header, v123, v124, "💁‍♂️ Presenting tooltip", v125, 2u);
          }

          v126 = sub_10058DF48(v118);
          v1 = v126;
          v128 = *(v126 + 2);
          if (!v128)
          {
LABEL_87:

            v137 = v180;
            v138 = [v180 presentedViewController];
            if (v138)
            {
              v139 = v138;
              v140 = v137;
              v141 = v139;
              v142 = Logger.logObject.getter();
              v143 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v142, v143))
              {
                v144 = swift_slowAlloc();
                v145 = swift_slowAlloc();
                *v144 = 138543618;
                *(v144 + 4) = v140;
                *(v144 + 12) = 2114;
                *(v144 + 14) = v141;
                *v145 = v137;
                v145[1] = v139;
                v146 = v140;
                v147 = v141;
                _os_log_impl(&_mh_execute_header, v142, v143, "💁‍♂️❌ Presentation skipped. %{public}@ is already presenting %{public}@.", v144, 0x16u);
                sub_10010FC20(&unk_101183D70);
                swift_arrayDestroy();
              }

              sub_10058BB38(v182, 3);

              goto LABEL_100;
            }

            v148 = [v137 parentViewController];
            if (v148)
            {

              LOBYTE(v149) = v182;
              v150 = v179;
LABEL_93:
              v151 = swift_allocObject();
              v152 = v203;
              *(v151 + 40) = v204;
              v153 = v206;
              *(v151 + 56) = v205;
              *(v151 + 72) = v153;
              *(v151 + 88) = v207;
              *(v151 + 16) = v149;
              *(v151 + 24) = v152;
              *(v151 + 104) = v150;
              v187[4] = sub_1005909F4;
              v187[5] = v151;
              v187[0] = _NSConcreteStackBlock;
              v187[1] = 1107296256;
              v187[2] = sub_10002BC98;
              v187[3] = &unk_1010B35B0;
              v154 = _Block_copy(v187);
              sub_1001D1980(&v203, &v188);
              v155 = v150;

              v141 = v180;
              [v180 presentViewController:v155 animated:1 completion:v154];

              _Block_release(v154);

              v183 = v155;
LABEL_100:

              sub_10012BA6C(&v191);
              sub_100198CAC(&v197);
              v1 = v176;
              goto LABEL_101;
            }

            v156 = [v137 view];
            v149 = v182;
            v150 = v179;
            if (v156)
            {
              v157 = v156;
              v158 = [v156 window];

              v159 = [v158 rootViewController];
              if (!v159 || (sub_100009F78(0, &qword_101183D40), v160 = v180, v161 = static NSObject.== infix(_:_:)(), v159, v160, (v161 & 1) == 0))
              {
                v162 = v180;
                v141 = v180;
                v163 = Logger.logObject.getter();
                v164 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v163, v164))
                {
                  v165 = swift_slowAlloc();
                  v166 = swift_slowAlloc();
                  *v165 = 138543362;
                  *(v165 + 4) = v141;
                  *v166 = v162;
                  v167 = v141;
                  _os_log_impl(&_mh_execute_header, v163, v164, "💁‍♂️❌ Presentation skipped. %{public}@ is no longer parented.", v165, 0xCu);
                  sub_1000095E8(v166, &unk_101183D70);
                }

                sub_10058BB38(v149, 3);

                goto LABEL_100;
              }

              goto LABEL_93;
            }

            goto LABEL_109;
          }

          v129 = 0;
          v13 = (v126 + 40);
          *&v127 = 136446210;
          v184 = v127;
          v185 = v126;
          while (v129 < *(v1 + 2))
          {
            v131 = *(v13 - 1);
            v130 = *v13;

            v132 = Logger.logObject.getter();
            v133 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v132, v133))
            {
              v134 = v128;
              v135 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              v188 = v136;
              *v135 = v184;
              *(v135 + 4) = sub_1000105AC(v131, v130, &v188);
              _os_log_impl(&_mh_execute_header, v132, v133, "%{public}s", v135, 0xCu);
              sub_10000959C(v136);

              v128 = v134;
              v1 = v185;
            }

            ++v129;
            v13 += 2;
            if (v128 == v129)
            {
              goto LABEL_87;
            }
          }

          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          swift_once();
        }

        sub_10012BA6C(&v191);
LABEL_55:
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *&v191 = v66;
          *v65 = 136446210;
          v67 = sub_100589014(v13);
          v69 = sub_1000105AC(v67, v68, &v191);

          *(v65 + 4) = v69;
          _os_log_impl(&_mh_execute_header, v63, v64, "❌ Unable to create view controller for %{public}s. No presenting view controller available.", v65, 0xCu);
          sub_10000959C(v66);
        }

        sub_10058C4EC();
        sub_100198CAC(&v197);
      }

      else
      {
      }
    }
  }

LABEL_101:
  v1[120] = 0;
}

uint64_t sub_10058DC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100588C1C(a1);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10058E588(a1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    memset(v9, 0, sizeof(v9));
    swift_beginAccess();
    sub_1000089F8(v6 + 16, v8, &qword_101196300);
    swift_beginAccess();
    sub_100590984(v9, v6 + 16);
    swift_endAccess();
    sub_10058AB84(v8);

    sub_1000095E8(v8, &qword_101196300);
    result = sub_1000095E8(v9, &qword_101196300);
  }

  v7 = *(a3 + 48);
  if (v7)
  {
    return v7(a1);
  }

  return result;
}

uint64_t sub_10058DDE0(unsigned __int8 a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  if (qword_10117F8B0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, qword_1011961A0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    v12 = sub_100589014(a1);
    v14 = sub_1000105AC(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, a4, v10, 0xCu);
    sub_10000959C(v11);
  }

  return a2();
}

char *sub_10058DF48(unsigned __int8 a1)
{
  v2 = type metadata accessor for Tooltip.Configuration(0);
  __chkstk_darwin(v2);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100587A3C(a1, v4);
  v37 = 0;
  v38 = 0xE000000000000000;
  v5._countAndFlagsBits = 91;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6 = 0xD00000000000002CLL;
  v7 = "llPlaylists";
  v8 = "ansliterationSing";
  v9 = 0xD00000000000003BLL;
  if (a1 != 6)
  {
    v9 = 0xD000000000000027;
    v8 = "anslationAndTransliteration";
  }

  v10 = "Tooltip.LyricsTranslation";
  v11 = 0xD00000000000002DLL;
  if (a1 != 4)
  {
    v11 = 0xD000000000000031;
    v10 = "Tooltip.LyricsTransliteration";
  }

  if (a1 <= 5u)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = "com.apple.Music.Tooltip.Sing";
  if (a1 != 2)
  {
    v12 = "Tooltip.SharePlayTogether";
  }

  if (a1)
  {
    v6 = 0xD00000000000001CLL;
    v7 = "Tooltip.FavoritingNowPlaying";
  }

  if (a1 > 1u)
  {
    v6 = 0xD000000000000029;
    v7 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v9;
  }

  if (a1 <= 3u)
  {
    v14 = v7;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14 | 0x8000000000000000;
  String.append(_:)(*&v13);

  v16._countAndFlagsBits = 5253152;
  v16._object = 0xE300000000000000;
  String.append(_:)(v16);
  LOBYTE(v39) = *(v4 + *(v2 + 32));
  _print_unlocked<A, B>(_:_:)();
  v17._countAndFlagsBits = 23849;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18 = v37;
  v19 = v38;
  v20 = sub_100498B7C(0, 1, 1, _swiftEmptyArrayStorage);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  v23 = v21 >> 1;
  v24 = v22 + 1;
  if (v21 >> 1 <= v22)
  {
    v20 = sub_100498B7C((v21 > 1), v22 + 1, 1, v20);
    v21 = *(v20 + 3);
    v23 = v21 >> 1;
  }

  *(v20 + 2) = v24;
  v25 = &v20[16 * v22];
  *(v25 + 4) = v18;
  *(v25 + 5) = v19;
  if (v23 < (v22 + 2))
  {
    v20 = sub_100498B7C((v21 > 1), v22 + 2, 1, v20);
  }

  *(v20 + 2) = v22 + 2;
  v26 = &v20[16 * v24];
  *(v26 + 4) = 0x100000000000003CLL;
  *(v26 + 5) = 0x8000000100E50790;
  v39 = v20;
  sub_10010FC20(&unk_101181640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  v28 = v4[2];
  *(inited + 32) = v4[1];
  *(inited + 40) = v28;
  *(inited + 48) = 2108704;
  *(inited + 56) = 0xE300000000000000;
  v29 = v4[4];
  v37 = v4[3];
  v38 = v29;

  sub_10010FC20(&qword_1011815E0);
  *(inited + 64) = String.init<A>(describing:)();
  *(inited + 72) = v30;
  sub_100587540(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v31 = v39;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_100498B7C(0, *(v31 + 2) + 1, 1, v31);
  }

  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_100498B7C((v32 > 1), v33 + 1, 1, v31);
  }

  sub_1005908C4(v4, type metadata accessor for Tooltip.Configuration);
  *(v31 + 2) = v33 + 1;
  v34 = &v31[16 * v33];
  *(v34 + 4) = 0x100000000000003ALL;
  *(v34 + 5) = 0x8000000100E507D0;
  return v31;
}

void sub_10058E324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10117F8B0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_1011961A0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = sub_100589014(a1);
    v13 = sub_1000105AC(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "✅ Presented %{public}s", v9, 0xCu);
    sub_10000959C(v10);
  }

  v14 = *(a2 + 32);
  if (v14)
  {
    v14(a1, a3);
  }
}

uint64_t sub_10058E49C()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v7 = v1;
  swift_beginAccess();
  sub_1000089F8(v0 + 16, v4, &qword_101196300);
  if (v5)
  {
    sub_100198C50(v4, v6);
    sub_100198BF4(v6, v3);

    sub_1003B2D98(v4, v3);
    sub_100198CAC(v4);
    sub_100198CAC(v6);
    return v7;
  }

  else
  {

    sub_1000095E8(v4, &qword_101196300);
  }

  return v1;
}

void sub_10058E588(int a1)
{
  v104 = a1;
  v2 = a1;
  v3 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v89 - v4;
  v6 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v6 - 8);
  v8 = &v89 - v7;
  v9 = type metadata accessor for MetricsEvent.Click(0);
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  v12 = __chkstk_darwin(v11);
  if (v2 > 1)
  {
    return;
  }

  v93 = v8;
  v94 = v5;
  v90 = v15;
  v91 = v12;
  v92 = v14;
  v95 = &v89 - v13;
  v16 = sub_10058E49C();
  v17 = v16;
  v18 = v16 + 56;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v16 + 56);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  v100 = "Tooltip.SharePlayTogether";
  v101 = "com.apple.Music.Tooltip.Sing";
  v102 = "Tooltip.FavoritingNowPlaying";
  v103 = "llPlaylists";
  v96 = "anslationAndTransliteration";
  v97 = "ansliterationSing";
  v98 = "Tooltip.LyricsTransliteration";
  v99 = "Tooltip.LyricsTranslation";
  if (!v21)
  {
LABEL_6:
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {

        memset(v108, 0, 96);
        goto LABEL_65;
      }

      v21 = *(v18 + 8 * v24);
      ++v23;
      if (v21)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_133:
    swift_once();
LABEL_100:
    v63 = qword_101218AD0;
    v64 = GroupActivitiesManager.hasJoined.getter();
    v65 = GroupActivitiesManager.participantsCount.getter();
    v66 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v1) + 0xB8))(v17, v24, v21, v64 & 1, v65, *(v63 + v66));

    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_1000060E4(v67, qword_1011961A0);
    v68 = v92;
    sub_100590860(v17, v92);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v105[0] = swift_slowAlloc();
      *v71 = 136446466;
      sub_100590860(v68, v90);
      v72 = String.init<A>(describing:)();
      v74 = v73;
      sub_1005908C4(v68, type metadata accessor for MetricsEvent.Click);
      v75 = sub_1000105AC(v72, v74, v105);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2082;
      v106 = 0x287069746C6F6F54;
      v107 = 0xE800000000000000;
      v76 = 0xD00000000000002CLL;
      v77 = 0xD00000000000003BLL;
      if (v104 != 6)
      {
        v77 = 0xD000000000000027;
      }

      v78 = v97;
      if (v104 != 6)
      {
        v78 = v96;
      }

      v79 = 0xD00000000000002DLL;
      if (v104 != 4)
      {
        v79 = 0xD000000000000031;
      }

      v80 = v99;
      if (v104 != 4)
      {
        v80 = v98;
      }

      if (v104 <= 5u)
      {
        v77 = v79;
        v78 = v80;
      }

      v81 = v101;
      if (v104 != 2)
      {
        v81 = v100;
      }

      if (v104)
      {
        v76 = 0xD00000000000001CLL;
      }

      v82 = v103;
      if (v104)
      {
        v82 = v102;
      }

      if (v104 <= 1u)
      {
        v81 = v82;
      }

      else
      {
        v76 = 0xD000000000000029;
      }

      if (v104 <= 3u)
      {
        v83 = v76;
      }

      else
      {
        v83 = v77;
      }

      if (v104 <= 3u)
      {
        v84 = v81;
      }

      else
      {
        v84 = v78;
      }

      v85 = v84 | 0x8000000000000000;
      String.append(_:)(*&v83);

      v86._countAndFlagsBits = 41;
      v86._object = 0xE100000000000000;
      String.append(_:)(v86);
      v87 = sub_1000105AC(v106, v107, v105);

      *(v71 + 14) = v87;
      _os_log_impl(&_mh_execute_header, v69, v70, "🖱️🕕 Click Event %{public}s reported for %{public}s", v71, 0x16u);
      swift_arrayDestroy();

      v88 = v17;
    }

    else
    {

      sub_1005908C4(v68, type metadata accessor for MetricsEvent.Click);
      v88 = v17;
    }

    sub_1005908C4(v88, type metadata accessor for MetricsEvent.Click);
    sub_100198CAC(&v109);
    return;
  }

  while (1)
  {
    v24 = v23;
LABEL_9:
    sub_100198BF4(*(v17 + 48) + 96 * (__clz(__rbit64(v21)) | (v24 << 6)), &v106);
    sub_100198C50(&v106, v105);
    if (LOBYTE(v105[0]) > 3u)
    {
      if (LOBYTE(v105[0]) > 5u)
      {
        if (LOBYTE(v105[0]) == 6)
        {
          v28 = 0xD00000000000003BLL;
          v29 = v97;
        }

        else
        {
          v28 = 0xD000000000000027;
          v29 = v96;
        }
      }

      else if (LOBYTE(v105[0]) == 4)
      {
        v28 = 0xD00000000000002DLL;
        v29 = v99;
      }

      else
      {
        v28 = 0xD000000000000031;
        v29 = v98;
      }
    }

    else
    {
      v25 = 0xD00000000000002CLL;
      v26 = v101;
      if (LOBYTE(v105[0]) != 2)
      {
        v26 = v100;
      }

      if (LOBYTE(v105[0]))
      {
        v25 = 0xD00000000000001CLL;
      }

      v27 = v103;
      if (LOBYTE(v105[0]))
      {
        v27 = v102;
      }

      if (LOBYTE(v105[0]) <= 1u)
      {
        v28 = v25;
      }

      else
      {
        v28 = 0xD000000000000029;
      }

      if (LOBYTE(v105[0]) <= 1u)
      {
        v29 = v27;
      }

      else
      {
        v29 = v26;
      }
    }

    if (v104 > 3u)
    {
      v35 = 0xD00000000000003BLL;
      if (v104 != 6)
      {
        v35 = 0xD000000000000027;
      }

      v36 = v97;
      if (v104 != 6)
      {
        v36 = v96;
      }

      v37 = 0xD00000000000002DLL;
      if (v104 != 4)
      {
        v37 = 0xD000000000000031;
      }

      v38 = v99;
      if (v104 != 4)
      {
        v38 = v98;
      }

      if (v104 <= 5u)
      {
        v33 = v37;
      }

      else
      {
        v33 = v35;
      }

      if (v104 <= 5u)
      {
        v34 = v38;
      }

      else
      {
        v34 = v36;
      }
    }

    else
    {
      v30 = 0xD00000000000002CLL;
      v31 = v101;
      if (v104 != 2)
      {
        v31 = v100;
      }

      if (v104)
      {
        v30 = 0xD00000000000001CLL;
      }

      v32 = v103;
      if (v104)
      {
        v32 = v102;
      }

      if (v104 <= 1u)
      {
        v33 = v30;
      }

      else
      {
        v33 = 0xD000000000000029;
      }

      if (v104 <= 1u)
      {
        v34 = v32;
      }

      else
      {
        v34 = v31;
      }
    }

    v1 = (v34 | 0x8000000000000000);
    if (v28 == v33 && (v29 | 0x8000000000000000) == v1)
    {

      goto LABEL_64;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      break;
    }

    v21 &= v21 - 1;
    sub_100198CAC(v105);
    v23 = v24;
    if (!v21)
    {
      goto LABEL_6;
    }
  }

LABEL_64:
  sub_100198C50(v105, v108);
LABEL_65:

  v41 = v93;
  v40 = v94;
  v17 = v95;
  if (v108[1])
  {
    sub_100198C50(v108, &v109);
    v42 = type metadata accessor for URL();
    v43 = (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
    if (v111)
    {
      v111(v43);
    }

    else
    {
      v61 = type metadata accessor for MetricsEvent.Page(0);
      (*(*(v61 - 8) + 56))(v40, 1, 1, v61);
    }

    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(0x65736F6C63, 0xE500000000000000, 6, 19, v41, 0, 0, 12, v17, 0, 0, 0xFF00u, v40, 0);
    v1 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v24 = sub_10053771C();
    v21 = v62;
    if (qword_10117F600 == -1)
    {
      goto LABEL_100;
    }

    goto LABEL_133;
  }

  sub_1000095E8(v108, &qword_101196300);
  if (qword_10117F8B0 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_1000060E4(v44, qword_1011961A0);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v108[0] = v48;
    *v47 = 136446210;
    v109 = 0x287069746C6F6F54;
    v110 = 0xE800000000000000;
    v49 = 0xD00000000000002CLL;
    v50 = 0xD00000000000003BLL;
    if (v104 != 6)
    {
      v50 = 0xD000000000000027;
    }

    v51 = v97;
    if (v104 != 6)
    {
      v51 = v96;
    }

    v52 = 0xD00000000000002DLL;
    if (v104 != 4)
    {
      v52 = 0xD000000000000031;
    }

    v53 = v99;
    if (v104 != 4)
    {
      v53 = v98;
    }

    if (v104 <= 5u)
    {
      v50 = v52;
      v51 = v53;
    }

    v54 = v101;
    if (v104 != 2)
    {
      v54 = v100;
    }

    if (v104)
    {
      v49 = 0xD00000000000001CLL;
    }

    v55 = v103;
    if (v104)
    {
      v55 = v102;
    }

    if (v104 <= 1u)
    {
      v54 = v55;
    }

    else
    {
      v49 = 0xD000000000000029;
    }

    if (v104 <= 3u)
    {
      v56 = v49;
    }

    else
    {
      v56 = v50;
    }

    if (v104 <= 3u)
    {
      v57 = v54;
    }

    else
    {
      v57 = v51;
    }

    v58 = v57 | 0x8000000000000000;
    String.append(_:)(*&v56);

    v59._countAndFlagsBits = 41;
    v59._object = 0xE100000000000000;
    String.append(_:)(v59);
    v60 = sub_1000105AC(v109, v110, v108);

    *(v47 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v45, v46, "🖱️🕕 ❌ Attempted to report click event for %{public}s that isn't queued nor actively presented.", v47, 0xCu);
    sub_10000959C(v48);
  }
}

uint64_t sub_10058F030()
{
  sub_1000095E8(v0 + 16, &qword_101196300);

  return swift_deallocClassInstance();
}

unint64_t sub_10058F0C4()
{
  result = qword_1011962E0;
  if (!qword_1011962E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011962E0);
  }

  return result;
}

unint64_t sub_10058F160()
{
  result = qword_1011962F8;
  if (!qword_1011962F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011962F8);
  }

  return result;
}

uint64_t sub_10058F1B4(uint64_t a1)
{
  v1 = String.components(wrappedToLineLength:bullet:)(50, 0, 0xE000000000000000, *a1, *(a1 + 8));
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_10:

    return sub_100125B5C(_swiftEmptyArrayStorage);
  }

  sub_100015C04(0, v2, 0);
  v3 = (v1 + 40);
  while (1)
  {
    v5 = *(v3 - 1);
    v4 = *v3;

    if (String.count.getter() > 49)
    {

      v10 = v4;
      goto LABEL_7;
    }

    result = String.count.getter();
    v7 = 50 - result;
    if (__OFSUB__(50, result))
    {
      break;
    }

    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    v9 = String.init(repeating:count:)(v8, v7);

    String.append(_:)(v9);

    v10 = v4;
LABEL_7:
    v11._countAndFlagsBits = v5;
    v11._object = v10;
    String.append(_:)(v11);

    v12._countAndFlagsBits = 31776;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);

    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      sub_100015C04((v13 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = 8316;
    v15[5] = 0xE200000000000000;
    v3 += 2;
    if (!--v2)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10058F394(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101196500);
  __chkstk_darwin(v2);
  v4 = v9 - v3;
  sub_10010FC20(&qword_10119A070);
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = sub_10010FC20(&qword_101196508);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  v6 = &v4[*(v2 + 36)];
  v7 = v9[1];
  *v6 = v9[0];
  *(v6 + 1) = v7;
  *(v6 + 2) = v9[2];
  sub_100591288();
  View.accessibilityHidden(_:)();
  return sub_1000095E8(v4, &qword_101196500);
}

void sub_10058F520(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10059F080(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_10058F58C(v4);
  *a1 = v2;
}

void sub_10058F58C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10058F8A0(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10058F684(0, v2, 1, a1);
  }
}

void sub_10058F684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Tooltip.Configuration(0);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v20 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v14 = v26 + 96 * a3;
    v15 = a1 - a3;
LABEL_5:
    v23 = a3;
    v21 = v15;
    v22 = v14;
    while (1)
    {
      sub_100198BF4(v14, v25);
      sub_100198BF4(v14 - 96, v24);
      sub_100587A3C(v25[0], v13);
      v16 = v13[*(v8 + 32)];
      sub_1005908C4(v13, type metadata accessor for Tooltip.Configuration);
      sub_100587A3C(v24[0], v10);
      v17 = v10[*(v8 + 32)];
      sub_1005908C4(v10, type metadata accessor for Tooltip.Configuration);
      sub_100198CAC(v24);
      sub_100198CAC(v25);
      if (v16 >= v17)
      {
LABEL_4:
        a3 = v23 + 1;
        v14 = v22 + 96;
        v15 = v21 - 1;
        if (v23 + 1 == v20)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      sub_100198C50(v14, v25);
      swift_arrayInitWithTakeFrontToBack();
      sub_100198C50(v25, v14 - 96);
      v14 -= 96;
      if (__CFADD__(v15++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10058F8A0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v98 = a1;
  v106 = type metadata accessor for Tooltip.Configuration(0);
  __chkstk_darwin(v106);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v94 - v12;
  v104 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v16 = sub_10059F01C(v16);
    }

    v109 = v16;
    v89 = *(v16 + 16);
    if (v89 >= 2)
    {
      while (*v104)
      {
        v90 = *(v16 + 16 * v89);
        v91 = v16;
        v92 = *(v16 + 16 * (v89 - 1) + 32);
        v16 = *(v16 + 16 * (v89 - 1) + 40);
        sub_100590224(*v104 + 96 * v90, *v104 + 96 * v92, *v104 + 96 * v16, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v16 < v90)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_10059F01C(v91);
        }

        if (v89 - 2 >= *(v91 + 2))
        {
          goto LABEL_120;
        }

        v93 = &v91[16 * v89];
        *v93 = v90;
        *(v93 + 1) = v16;
        v109 = v91;
        sub_10059EF90(v89 - 1);
        v16 = v109;
        v89 = *(v109 + 16);
        if (v89 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v95 = a4;
  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  while (1)
  {
    v17 = v15;
    v18 = v15 + 1;
    v103 = v16;
    if (v15 + 1 >= v14)
    {
      goto LABEL_26;
    }

    v100 = v14;
    v96 = v6;
    v19 = *v104;
    sub_100198BF4(*v104 + 96 * v18, v108);
    v20 = v19 + 96 * v17;
    sub_100198BF4(v20, v107);
    sub_100587A3C(v108[0], v13);
    v21 = v106;
    LODWORD(v102) = v13[*(v106 + 32)];
    sub_1005908C4(v13, type metadata accessor for Tooltip.Configuration);
    sub_100587A3C(v107[0], v10);
    LODWORD(v101) = v10[*(v21 + 32)];
    sub_1005908C4(v10, type metadata accessor for Tooltip.Configuration);
    sub_100198CAC(v107);
    sub_100198CAC(v108);
    v97 = v17;
    v22 = v17 + 2;
    v5 = v20 + 192;
    v99 = 96 * v17;
    v23 = 96 * v17 + 192;
    do
    {
      v6 = v22;
      v24 = v18;
      v25 = v23;
      if (v22 >= v100)
      {
        break;
      }

      LODWORD(v105) = v102 < v101;
      sub_100198BF4(v5, v108);
      sub_100198BF4(v5 - 96, v107);
      sub_100587A3C(v108[0], v13);
      v26 = v106;
      v27 = v13[*(v106 + 32)];
      sub_1005908C4(v13, type metadata accessor for Tooltip.Configuration);
      sub_100587A3C(v107[0], v10);
      LODWORD(v26) = v10[*(v26 + 32)];
      sub_1005908C4(v10, type metadata accessor for Tooltip.Configuration);
      sub_100198CAC(v107);
      sub_100198CAC(v108);
      v28 = v27 >= v26;
      v16 = v103;
      v29 = v28;
      v30 = v105 ^ v29;
      v22 = v6 + 1;
      v5 += 96;
      v18 = v24 + 1;
      v23 = v25 + 96;
    }

    while ((v30 & 1) != 0);
    if (v102 >= v101)
    {
      goto LABEL_24;
    }

    if (v6 < v97)
    {
      goto LABEL_123;
    }

    if (v97 < v6)
    {
      v31 = v97;
      v32 = v99;
      do
      {
        if (v31 != v24)
        {
          v34 = *v104;
          if (!*v104)
          {
            goto LABEL_129;
          }

          v99 = v32;
          v35 = v34 + v32;
          v36 = v34 + v25;
          v5 = v34 + v25 - 96;
          sub_100198C50(v34 + v32, v108);
          if (v31 < v24 || v35 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16 = v103;
          sub_100198C50(v108, v5);
          v32 = v99;
        }

        ++v31;
        v25 -= 96;
        v32 += 96;
      }

      while (v31 < v24--);
LABEL_24:
      v18 = v6;
      v6 = v96;
      v17 = v97;
      goto LABEL_26;
    }

    v18 = v6;
    v6 = v96;
    v17 = v97;
LABEL_26:
    v37 = v104[1];
    if (v18 < v37)
    {
      if (__OFSUB__(v18, v17))
      {
        goto LABEL_122;
      }

      if (v18 - v17 < v95)
      {
        v38 = v17 + v95;
        if (__OFADD__(v17, v95))
        {
          goto LABEL_124;
        }

        if (v38 >= v37)
        {
          v38 = v104[1];
        }

        if (v38 < v17)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v18 != v38)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v18 < v17)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_100498FCC(0, *(v16 + 16) + 1, 1, v16);
    }

    v45 = *(v16 + 16);
    v44 = *(v16 + 24);
    v5 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v16 = sub_100498FCC((v44 > 1), v45 + 1, 1, v16);
    }

    *(v16 + 16) = v5;
    v46 = v16 + 16 * v45;
    *(v46 + 32) = v17;
    *(v46 + 40) = v18;
    v47 = *v98;
    if (!*v98)
    {
      goto LABEL_131;
    }

    v105 = v18;
    if (v45)
    {
      while (1)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v49 = *(v16 + 32);
          v50 = *(v16 + 40);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_63:
          if (v52)
          {
            goto LABEL_110;
          }

          v65 = (v16 + 16 * v5);
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_113;
          }

          v71 = (v16 + 32 + 16 * v48);
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_117;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v5 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v75 = (v16 + 16 * v5);
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_77:
        if (v70)
        {
          goto LABEL_112;
        }

        v78 = v16 + 16 * v48;
        v80 = *(v78 + 32);
        v79 = *(v78 + 40);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_115;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_84:
        v86 = v48 - 1;
        if (v48 - 1 >= v5)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_125;
        }

        if (!*v104)
        {
          goto LABEL_128;
        }

        v87 = *(v16 + 32 + 16 * v86);
        v5 = *(v16 + 32 + 16 * v48 + 8);
        sub_100590224(*v104 + 96 * v87, *v104 + 96 * *(v16 + 32 + 16 * v48), *v104 + 96 * v5, v47);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v5 < v87)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_10059F01C(v16);
        }

        if (v86 >= *(v16 + 16))
        {
          goto LABEL_107;
        }

        v88 = v16 + 16 * v86;
        *(v88 + 32) = v87;
        *(v88 + 40) = v5;
        v109 = v16;
        sub_10059EF90(v48);
        v16 = v109;
        v5 = *(v109 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = v16 + 32 + 16 * v5;
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_108;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_109;
      }

      v60 = (v16 + 16 * v5);
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_111;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_114;
      }

      if (v64 >= v56)
      {
        v82 = (v16 + 32 + 16 * v48);
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_118;
        }

        if (v51 < v85)
        {
          v48 = v5 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v14 = v104[1];
    v15 = v105;
    if (v105 >= v14)
    {
      goto LABEL_94;
    }
  }

  v96 = v6;
  v39 = *v104;
  v5 = *v104 + 96 * v18;
  v97 = v17;
  v40 = v17 - v18;
  v100 = v38;
LABEL_36:
  v105 = v18;
  v101 = v40;
  v41 = v40;
  v102 = v5;
  while (1)
  {
    sub_100198BF4(v5, v108);
    sub_100198BF4(v5 - 96, v107);
    sub_100587A3C(v108[0], v13);
    v42 = v106;
    v43 = v13[*(v106 + 32)];
    sub_1005908C4(v13, type metadata accessor for Tooltip.Configuration);
    sub_100587A3C(v107[0], v10);
    LODWORD(v42) = v10[*(v42 + 32)];
    sub_1005908C4(v10, type metadata accessor for Tooltip.Configuration);
    sub_100198CAC(v107);
    sub_100198CAC(v108);
    if (v43 >= v42)
    {
LABEL_35:
      v18 = v105 + 1;
      v5 = v102 + 96;
      v40 = v101 - 1;
      if (v105 + 1 != v100)
      {
        goto LABEL_36;
      }

      v18 = v100;
      v6 = v96;
      v16 = v103;
      v17 = v97;
      goto LABEL_43;
    }

    if (!v39)
    {
      break;
    }

    sub_100198C50(v5, v108);
    swift_arrayInitWithTakeFrontToBack();
    sub_100198C50(v108, v5 - 96);
    v5 -= 96;
    v28 = __CFADD__(v41++, 1);
    if (v28)
    {
      goto LABEL_35;
    }
  }

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
}

uint64_t sub_100590224(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v41 = type metadata accessor for Tooltip.Configuration(0);
  __chkstk_darwin(v41);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v37 = &v33 - v10;
  v11 = a2 - a1;
  v12 = (a2 - a1) / 96;
  v13 = (a3 - a2) / 96;
  if (v12 < v13)
  {
    if (a4 < a1 || a1 + 96 * v12 <= a4)
    {
      v14 = a2 - a1;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a1)
      {
        goto LABEL_12;
      }

      v14 = a2 - a1;
      swift_arrayInitWithTakeBackToFront();
    }

    v11 = v14;
LABEL_12:
    v15 = a4 + 96 * v12;
    if (v11 >= 96 && a2 < a3)
    {
      do
      {
        sub_100198BF4(a2, v40);
        sub_100198BF4(a4, v39);
        v16 = v37;
        sub_100587A3C(v40[0], v37);
        v17 = v41;
        v18 = *(v16 + *(v41 + 32));
        sub_1005908C4(v16, type metadata accessor for Tooltip.Configuration);
        v19 = v38;
        sub_100587A3C(v39[0], v38);
        LODWORD(v17) = *(v19 + *(v17 + 32));
        sub_1005908C4(v19, type metadata accessor for Tooltip.Configuration);
        sub_100198CAC(v39);
        sub_100198CAC(v40);
        if (v18 >= v17)
        {
          if (a1 < a4 || a1 >= a4 + 96)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v20 = a2;
          a4 += 96;
        }

        else
        {
          v20 = a2 + 96;
          if (a1 < a2 || a1 >= v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += 96;
        if (a4 >= v15)
        {
          break;
        }

        a2 = v20;
      }

      while (v20 < a3);
    }

    a2 = a1;
    goto LABEL_50;
  }

  if (a4 < a2 || a2 + 96 * v13 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v15 = a4 + 96 * v13;
  if ((a3 - a2) >= 96 && a2 > a1)
  {
    v34 = a1;
    v35 = a4;
LABEL_33:
    v21 = a2 - 96;
    v22 = v15;
    do
    {
      v23 = a2;
      v24 = a3;
      v25 = v22;
      v26 = a3 - 96;
      v22 -= 96;
      sub_100198BF4(v22, v40);
      sub_100198BF4(v21, v39);
      v27 = v37;
      sub_100587A3C(v40[0], v37);
      v28 = v41;
      v36 = *(v27 + *(v41 + 32));
      sub_1005908C4(v27, type metadata accessor for Tooltip.Configuration);
      v29 = v38;
      sub_100587A3C(v39[0], v38);
      LODWORD(v28) = *(v29 + *(v28 + 32));
      sub_1005908C4(v29, type metadata accessor for Tooltip.Configuration);
      sub_100198CAC(v39);
      sub_100198CAC(v40);
      if (v36 < v28)
      {
        a3 = v26;
        if (v24 < v23 || v26 >= v23)
        {
          swift_arrayInitWithTakeFrontToBack();
          a4 = v35;
          v31 = v34;
          v15 = v25;
        }

        else
        {
          v30 = v24 == v23;
          a4 = v35;
          v31 = v34;
          v15 = v25;
          if (!v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        if (v15 <= a4 || (a2 = v21, v21 <= v31))
        {
          a2 = v21;
          goto LABEL_50;
        }

        goto LABEL_33;
      }

      a3 = v26;
      if (v24 < v25 || v26 >= v25)
      {
        swift_arrayInitWithTakeFrontToBack();
        a4 = v35;
        a2 = v23;
      }

      else
      {
        a4 = v35;
        a2 = v23;
        if (v24 != v25)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }
    }

    while (v22 > a4);
    v15 = v22;
  }

LABEL_50:
  if (a2 < a4 || a2 >= a4 + 96 * ((v15 - a4) / 96))
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a2 != a4)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  return 1;
}

unint64_t sub_1005907F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109B9C8, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100590860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsEvent.Click(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005908C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100590984(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101196300);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_100590A04(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    return swift_unknownObjectRetain();
  }

  if (a6 <= 1u)
  {
    return result;
  }

  return result;
}

id sub_100590A28(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_100590A04(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_100590A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101196308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100590ABC()
{
  result = qword_101196368;
  if (!qword_101196368)
  {
    sub_1001109D0(&qword_101196350);
    sub_100590B78();
    sub_100590CD8(&qword_101196380, type metadata accessor for AccessoryImageModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196368);
  }

  return result;
}

unint64_t sub_100590B78()
{
  result = qword_101196370;
  if (!qword_101196370)
  {
    sub_1001109D0(&qword_101196378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196370);
  }

  return result;
}

unint64_t sub_100590C1C()
{
  result = qword_101196388;
  if (!qword_101196388)
  {
    sub_1001109D0(&qword_101196358);
    sub_100590CD8(&qword_101196390, &type metadata accessor for BubbleTipTitleViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196388);
  }

  return result;
}

uint64_t sub_100590CD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100590D20()
{
  result = qword_101196398;
  if (!qword_101196398)
  {
    sub_1001109D0(&qword_101196360);
    sub_100590DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196398);
  }

  return result;
}

unint64_t sub_100590DA4()
{
  result = qword_1011963A0;
  if (!qword_1011963A0)
  {
    sub_1001109D0(&qword_1011963A8);
    sub_100590CD8(&qword_1011963B0, &type metadata accessor for BubbleTipSubtitleViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011963A0);
  }

  return result;
}

uint64_t sub_100590E60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_10058914C(a1, v4, v5, v7, v6);
}

uint64_t sub_100590F24(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000D8F7C(result, a2, a3 & 1);
  }

  return result;
}

void sub_100590F84()
{
  sub_100402A50();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100591018()
{
  sub_10002F678();
  if (v0 <= 0x3F)
  {
    sub_1005910BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005910BC()
{
  if (!qword_1011964B0)
  {
    type metadata accessor for BubbleImage();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011964B0);
    }
  }
}

uint64_t sub_100591114(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10059115C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005911C0()
{
  result = qword_1011964F0;
  if (!qword_1011964F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011964F0);
  }

  return result;
}

unint64_t sub_100591218()
{
  result = qword_1011964F8;
  if (!qword_1011964F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011964F8);
  }

  return result;
}

unint64_t sub_100591288()
{
  result = qword_101196510;
  if (!qword_101196510)
  {
    sub_1001109D0(&qword_101196500);
    sub_100020674(&qword_101196518, &qword_101196508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196510);
  }

  return result;
}

unint64_t sub_100591340()
{
  result = qword_101196520;
  if (!qword_101196520)
  {
    sub_1001109D0(&qword_101196528);
    sub_100591288();
    sub_100590CD8(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196520);
  }

  return result;
}

void sub_100591474()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 180.0;
  if (v1 == 6)
  {
    v2 = 200.0;
  }

  *&xmmword_101219030 = v2;
  *(&xmmword_101219030 + 1) = v2;
}

void sub_1005914F0()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 7.0;
  if (v1 == 6)
  {
    v2 = 10.0;
  }

  qword_101219040 = *&v2;
}

uint64_t sub_10059155C()
{
  v0 = objc_allocWithZone(UIColor);
  v4[4] = sub_100591624;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10003640C;
  v4[3] = &unk_1010B3C68;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_101219048 = v2;
  return result;
}

id sub_100591624(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  sub_1005954F4();
  if (v1 == 2)
  {
    v2 = 44;
    v3 = 44;
    v4 = 46;
  }

  else
  {
    v2 = 245;
    v3 = 245;
    v4 = 245;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v2, v3, v4, 1.0);
}

uint64_t sub_10059169C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v40 = type metadata accessor for PlainButtonStyle();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10010FC20(&qword_101196540);
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v36 - v6;
  v53 = *(v1 + 16);
  v54 = *(v1 + 32);
  v48 = *(v1 + 16);
  *&v49 = *(v1 + 32);
  v36 = sub_10010FC20(&qword_101196548);
  Binding.projectedValue.getter();
  v45 = *(&v51 + 1);
  v46 = v51;
  v44 = v52;
  v8 = [objc_opt_self() currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = static Color.clear.getter();
  }

  else
  {
    if (qword_10117F8C8 != -1)
    {
      swift_once();
    }

    v11 = qword_101219048;
    v10 = Color.init(_:)();
  }

  v43 = v10;
  v12 = *v2;
  v13 = *(v2 + 8);
  v42 = static Alignment.center.getter();
  v41 = v14;
  v15 = sub_10010FC20(&qword_101196550);
  v47 = a1 + *(v15 + 36);
  __chkstk_darwin(v15);
  sub_10010FC20(&qword_101196558);
  sub_1005951E4();
  sub_100020674(&qword_101196568, &qword_101196558);
  Menu.init(content:label:)();
  PlainButtonStyle.init()();
  sub_100020674(&qword_101196570, &qword_101196540);
  sub_100596B90(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
  v16 = v47;
  v17 = v38;
  v18 = v40;
  View.buttonStyle<A>(_:)();
  (*(v39 + 8))(v5, v18);
  (*(v37 + 8))(v7, v17);
  v40 = static Alignment.center.getter();
  v39 = v19;
  v20 = &v16[*(sub_10010FC20(&qword_101196578) + 36)];
  v48 = v53;
  *&v49 = v54;
  Binding.projectedValue.getter();
  v37 = *(&v51 + 1);
  v38 = v51;
  v36 = v52;
  v51 = *(v2 + 120);
  sub_10010FC20(&qword_101196580);
  State.projectedValue.getter();
  v21 = v48;
  LOBYTE(v17) = v49;
  v48 = *(v2 + 72);
  LOBYTE(v49) = *(v2 + 88);
  sub_10010FC20(&qword_101185738);
  Binding.projectedValue.getter();
  v22 = v51;
  LOBYTE(v18) = v52;
  v23 = swift_allocObject();
  v24 = *(v2 + 112);
  *(v23 + 112) = *(v2 + 96);
  *(v23 + 128) = v24;
  *(v23 + 144) = *(v2 + 128);
  v25 = *(v2 + 48);
  *(v23 + 48) = *(v2 + 32);
  *(v23 + 64) = v25;
  v26 = *(v2 + 80);
  *(v23 + 80) = *(v2 + 64);
  *(v23 + 96) = v26;
  v27 = *(v2 + 16);
  *(v23 + 16) = *v2;
  *(v23 + 32) = v27;
  sub_100595294(v2, &v48);
  ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)(v38, v37, v36, v21, *(&v21 + 1), v17, v22, *(&v22 + 1), v20, v18, sub_100595238, v23, 0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v28 = (v20 + *(sub_10010FC20(&qword_101196588) + 36));
  v29 = v49;
  *v28 = v48;
  v28[1] = v29;
  v28[2] = v50;
  v30 = (v20 + *(sub_10010FC20(&qword_101196590) + 36));
  v31 = v39;
  *v30 = v40;
  v30[1] = v31;
  result = sub_10010FC20(&qword_101196598);
  v33 = &v47[*(result + 36)];
  v34 = v41;
  *v33 = v42;
  v33[1] = v34;
  v35 = v45;
  *a1 = v46;
  a1[1] = v35;
  a1[2] = v44;
  a1[3] = v12;
  a1[4] = v13;
  a1[5] = v43;
  return result;
}

uint64_t sub_100591D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_10010FC20(&qword_101186968);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v63 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v60 - v7;
  __chkstk_darwin(v8);
  v66 = &v60 - v9;
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  v13 = sub_10010FC20(&qword_1011965A8);
  __chkstk_darwin(v13 - 8);
  v61 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v64 = &v60 - v16;
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  __chkstk_darwin(v20);
  v65 = &v60 - v21;
  if ([objc_opt_self() isSourceTypeAvailable:1] && (v22 = objc_msgSend(objc_opt_self(), "currentTraitCollection"), v23 = objc_msgSend(v22, "userInterfaceIdiom"), v22, v23 != 6))
  {
    v27 = swift_allocObject();
    v28 = *(a1 + 112);
    *(v27 + 112) = *(a1 + 96);
    *(v27 + 128) = v28;
    *(v27 + 144) = *(a1 + 128);
    v29 = *(a1 + 48);
    *(v27 + 48) = *(a1 + 32);
    *(v27 + 64) = v29;
    v30 = *(a1 + 80);
    *(v27 + 80) = *(a1 + 64);
    *(v27 + 96) = v30;
    v31 = *(a1 + 16);
    *(v27 + 16) = *a1;
    *(v27 + 32) = v31;
    sub_100595294(a1, v68);
    sub_10010FC20(&qword_101186978);
    sub_100020674(&qword_101186980, &qword_101186978);
    Button.init(action:label:)();
    v32 = v65;
    (*(v4 + 32))(v65, v12, v3);
    v24 = *(v4 + 56);
    v25 = v32;
    v26 = 0;
  }

  else
  {
    v24 = *(v4 + 56);
    v25 = v65;
    v26 = 1;
  }

  v33 = v24;
  v24(v25, v26, 1, v3);
  v34 = swift_allocObject();
  v35 = *(a1 + 112);
  *(v34 + 112) = *(a1 + 96);
  *(v34 + 128) = v35;
  *(v34 + 144) = *(a1 + 128);
  v36 = *(a1 + 48);
  *(v34 + 48) = *(a1 + 32);
  *(v34 + 64) = v36;
  v37 = *(a1 + 80);
  *(v34 + 80) = *(a1 + 64);
  *(v34 + 96) = v37;
  v38 = *(a1 + 16);
  *(v34 + 16) = *a1;
  *(v34 + 32) = v38;
  sub_100595294(a1, v68);
  sub_10010FC20(&qword_101186978);
  sub_100020674(&qword_101186980, &qword_101186978);
  Button.init(action:label:)();
  v39 = swift_allocObject();
  v40 = *(a1 + 112);
  *(v39 + 112) = *(a1 + 96);
  *(v39 + 128) = v40;
  *(v39 + 144) = *(a1 + 128);
  v41 = *(a1 + 48);
  *(v39 + 48) = *(a1 + 32);
  *(v39 + 64) = v41;
  v42 = *(a1 + 80);
  *(v39 + 80) = *(a1 + 64);
  *(v39 + 96) = v42;
  v43 = *(a1 + 16);
  *(v39 + 16) = *a1;
  *(v39 + 32) = v43;
  sub_100595294(a1, v68);
  Button.init(action:label:)();
  v68[0] = 4;
  v44 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v44) & 1) != 0 && [type metadata accessor for ImagePlaygroundViewController() available])
  {
    v45 = swift_allocObject();
    v46 = *(a1 + 112);
    *(v45 + 112) = *(a1 + 96);
    *(v45 + 128) = v46;
    *(v45 + 144) = *(a1 + 128);
    v47 = *(a1 + 48);
    *(v45 + 48) = *(a1 + 32);
    *(v45 + 64) = v47;
    v48 = *(a1 + 80);
    *(v45 + 80) = *(a1 + 64);
    *(v45 + 96) = v48;
    v49 = *(a1 + 16);
    *(v45 + 16) = *a1;
    *(v45 + 32) = v49;
    sub_100595294(a1, v68);
    Button.init(action:label:)();
    (*(v4 + 32))(v19, v12, v3);
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v33(v19, v50, 1, v3);
  v51 = v64;
  sub_10059530C(v65, v64);
  v52 = *(v4 + 16);
  v52(v12, v66, v3);
  v53 = v63;
  v52(v63, v67, v3);
  v54 = v61;
  sub_10059530C(v19, v61);
  v55 = v51;
  v56 = v62;
  sub_10059530C(v55, v62);
  v57 = sub_10010FC20(&qword_1011965B0);
  v52((v56 + v57[12]), v12, v3);
  v52((v56 + v57[16]), v53, v3);
  sub_10059530C(v54, v56 + v57[20]);
  sub_1000095E8(v19, &qword_1011965A8);
  v58 = *(v4 + 8);
  v58(v67, v3);
  v58(v66, v3);
  sub_1000095E8(v65, &qword_1011965A8);
  sub_1000095E8(v54, &qword_1011965A8);
  v58(v53, v3);
  v58(v12, v3);
  return sub_1000095E8(v64, &qword_1011965A8);
}

uint64_t sub_100592500()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100009838();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100592634()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100009838();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100592778()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100009838();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_1005928B4(uint64_t a1, char a2)
{
  v9 = *(a1 + 120);
  LOBYTE(v7[0]) = a2;
  sub_10010FC20(&qword_101196580);
  State.wrappedValue.setter();
  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(a1 + 88);
  v11 = v4;
  *&v9 = v4;
  *(&v9 + 1) = v3;
  v10 = v5;
  sub_100595444(&v11, v7);

  sub_10010FC20(&qword_101185738);
  Binding.wrappedValue.getter();
  v7[0] = v4;
  v7[1] = v3;
  v8 = v5;
  Binding.wrappedValue.setter();
  sub_1005954A0(&v11);
}

uint64_t sub_1005929A0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100009838();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100592AE4()
{
  v0 = sub_10010FC20(&qword_1011966F0);
  __chkstk_darwin(v0);
  v2 = (v12 - v1);
  v3 = static Color.accentColor.getter();
  static Color.black.getter();
  Color.opacity(_:)();

  sub_10010FC20(&qword_1011966F8);
  static ShadowStyle.drop(color:radius:x:y:)();

  *v2 = v3;
  *(v2 + *(sub_10010FC20(&qword_101196700) + 56)) = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = (v2 + *(sub_10010FC20(&qword_101196708) + 36));
  v5 = v12[1];
  *v4 = v12[0];
  v4[1] = v5;
  v4[2] = v12[2];
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = v2 + *(v0 + 36);
  sub_100592CDC(v9);
  v10 = (v9 + *(sub_10010FC20(&qword_101196710) + 36));
  *v10 = v6;
  v10[1] = v8;
  sub_100596198();
  View.hover(corner:outset:isRelative:namespace:isEnabled:)();
  return sub_1000095E8(v2, &qword_1011966F0);
}

uint64_t sub_100592CDC@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = type metadata accessor for DynamicTypeSize();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_101196738);
  __chkstk_darwin(v4);
  v6 = (&v17 - v5);
  v18 = Image.init(systemName:)();
  v17 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v8 = static Font.title2.getter();
  v9 = swift_getKeyPath();
  v10 = (v6 + *(v4 + 36));
  v11 = *(sub_10010FC20(&qword_1011A13C0) + 28);
  v12 = enum case for Image.Scale.medium(_:);
  v13 = type metadata accessor for Image.Scale();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  v14 = v17;
  *v6 = v18;
  v6[1] = KeyPath;
  v6[2] = v14;
  v6[3] = v9;
  v6[4] = v8;
  v15 = v19;
  (*(v1 + 104))(v3, enum case for DynamicTypeSize.large(_:), v19);
  sub_100596308();
  View.dynamicTypeSize(_:)();
  (*(v1 + 8))(v3, v15);
  return sub_1000095E8(v6, &qword_101196738);
}

uint64_t sub_100592F48()
{
  v1 = v0;
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = static Alignment.center.getter();
  v8 = v7;
  aBlock = *v0;
  *&v27 = v0[2];
  sub_10010FC20(&qword_101196548);
  Binding.wrappedValue.getter();
  if (v21)
  {
    v9 = v21;
    Image.init(uiImage:)();
    (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
    v10 = Image.resizable(capInsets:resizingMode:)();

    (*(v3 + 8))(v5, v2);
    v11 = 65537;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = v1[5];
  v13 = v1[3];
  v14 = v1[4];
  v15 = objc_allocWithZone(UIColor);
  *&v28 = sub_100593630;
  *(&v28 + 1) = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_10003640C;
  *(&v27 + 1) = &unk_1010B3DE8;
  v16 = _Block_copy(&aBlock);

  [v15 initWithDynamicProvider:v16];
  _Block_release(v16);

  Color.init(uiColor:)();
  v17 = UIScreen.Dimensions.size.getter(0.5);
  *&v21 = v12;
  *(&v21 + 1) = v10;
  *&v22 = 0;
  BYTE10(v22) = BYTE2(v11);
  WORD4(v22) = v11;
  *&v23 = v6;
  *(&v23 + 1) = v8;
  *&v24 = v13;
  *(&v24 + 1) = v14;
  v25[0] = 0;
  *&v25[8] = v18;
  *&v25[16] = v17;
  v25[24] = v19;
  if (qword_10117F8C0 != -1)
  {
    swift_once();
  }

  sub_10010FC20(&qword_101196790);
  sub_100596530(&qword_101196798, &qword_101196790, &unk_100ED5270, sub_1005965B4);
  View.hover(corner:outset:isRelative:namespace:isEnabled:)();
  v28 = v23;
  v29 = v24;
  v30[0] = *v25;
  *(v30 + 9) = *&v25[9];
  aBlock = v21;
  v27 = v22;
  return sub_1000095E8(&aBlock, &qword_101196790);
}

uint64_t sub_100593398@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v24 = sub_10010FC20(&qword_101196768);
  __chkstk_darwin(v24);
  v4 = &v24 - v3;
  if (qword_10117F8C0 != -1)
  {
    swift_once();
  }

  sub_10010FC20(&qword_101196770);
  sub_100020674(&qword_101196778, &qword_101196770);
  View.border(_:corner:)();
  v5 = qword_101219040;
  v6 = &v4[*(sub_10010FC20(&qword_101196780) + 36)];
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = v5;
  v6[1] = v5;
  *(v6 + *(sub_10010FC20(&qword_101185680) + 36)) = 256;
  v10 = *v2;
  v11 = v2[1];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = &v4[*(v24 + 36)];
  v13 = v27;
  *v12 = v26;
  *(v12 + 1) = v13;
  *(v12 + 2) = v28;
  v14 = *(v2 + 16);
  if (v14)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  v17 = static Alignment.center.getter();
  v19 = v18;
  v20 = v4;
  v21 = v25;
  sub_100092310(v20, v25);
  result = sub_10010FC20(&qword_101196788);
  v23 = v21 + *(result + 36);
  *v23 = v15;
  *(v23 + 8) = v16;
  *(v23 + 16) = (v14 & 1) == 0;
  *(v23 + 24) = v17;
  *(v23 + 32) = v19;
  return result;
}

id sub_100593630(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  if (v1 == 2)
  {
    v3 = 0.1;
    v4 = 1.0;
  }

  else
  {
    v3 = 0.08;
    v4 = 0.0;
  }

  return [v2 initWithWhite:v4 alpha:v3];
}

double sub_1005936A4@<D0>(uint64_t *a1@<X8>)
{
  if (qword_10117F8C0 != -1)
  {
    swift_once();
  }

  v2 = qword_101219040;
  v3 = *(type metadata accessor for RoundedRectangle() + 20);
  v4 = enum case for RoundedCornerStyle.continuous(_:);
  v5 = type metadata accessor for RoundedCornerStyle();
  (*(*(v5 - 8) + 104))(a1 + v3, v4, v5);
  *a1 = v2;
  a1[1] = v2;
  v6 = [objc_opt_self() systemBackgroundColor];
  v7 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(sub_10010FC20(&qword_10118E408) + 36));
  *v9 = KeyPath;
  v9[1] = v7;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v10 = (a1 + *(sub_10010FC20(&qword_10118E3E8) + 36));
  *v10 = v15;
  v10[1] = v16;
  v10[2] = v17;
  static Color.black.getter();
  v11 = Color.opacity(_:)();

  v12 = a1 + *(sub_10010FC20(&qword_1011967E8) + 36);
  *v12 = v11;
  *(v12 + 8) = xmmword_100ED49D0;
  *(v12 + 3) = 0x4020000000000000;
  v13 = sub_10010FC20(&qword_1011967F0);
  result = 0.0;
  *(a1 + *(v13 + 36)) = xmmword_100ED49E0;
  return result;
}

uint64_t sub_1005938BC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011965B8);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = sub_10010FC20(&qword_1011965C0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = *v1;
  v13 = *(v1 + 56);
  v37[4] = *(v1 + 40);
  v37[5] = v13;
  *v38 = *(v1 + 72);
  v14 = *(v1 + 88);
  v32 = *(v1 + 96);
  *&v38[16] = v14;
  v15 = *(v1 + 24);
  v37[2] = *(v1 + 8);
  v37[3] = v15;
  v16 = *(v1 + 112);
  v31 = *(v1 + 104);
  v30 = v16;
  v29 = *(v1 + 120);
  v17 = v12;
  Image.init(uiImage:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v18 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  v19 = *(v1 + 128);
  v20 = *(v1 + 136);
  v21 = objc_allocWithZone(UIColor);
  *v41 = sub_100593630;
  *&v41[8] = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v40 = sub_10003640C;
  *(&v40 + 1) = &unk_1010B3C90;
  v22 = _Block_copy(&aBlock);
  [v21 initWithDynamicProvider:v22];
  _Block_release(v22);

  Color.init(uiColor:)();
  v23 = UIScreen.Dimensions.size.getter(0.5);
  *&v35 = v18;
  BYTE8(v35) = 1;
  *&v36 = v19;
  *(&v36 + 1) = v20;
  LOBYTE(v37[0]) = 1;
  *(&v37[0] + 1) = v24;
  *&v37[1] = v23;
  BYTE8(v37[1]) = v25;
  v34 = *&v38[8];
  sub_10010FC20(&qword_1011965C8);
  sub_100596530(&qword_1011965D0, &qword_1011965C8, &unk_100ED4F08, sub_100595540);
  sub_100009838();
  View.accessibilityLabel<A>(_:)();
  aBlock = v35;
  v40 = v36;
  *v41 = v37[0];
  *&v41[9] = *(v37 + 9);
  sub_1000095E8(&aBlock, &qword_1011965C8);
  v26 = sub_100595674();
  View.accessibilityIdentifier(_:)(v32, v31, v30, v29, v6, v26);
  sub_1000095E8(v8, &qword_1011965B8);
  if (qword_10117F8C0 != -1)
  {
    swift_once();
  }

  sub_10059575C();
  View.hover(corner:outset:isRelative:namespace:isEnabled:)();
  return sub_1000095E8(v11, &qword_1011965C0);
}

uint64_t sub_100593D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v42 = a4;
  v39 = a1;
  v40 = a2;
  v8 = a1;
  v44 = a5;
  v45 = type metadata accessor for SubmitLabel();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_101196620);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v36 = sub_10010FC20(&qword_101196640);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v15 = &v36 - v14;
  v37 = sub_10010FC20(&qword_101196648);
  __chkstk_darwin(v37);
  v17 = &v36 - v16;
  v46 = v8;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  sub_10010FC20(&qword_101196618);
  Binding.projectedValue.getter();
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_100009838();
  TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
  v18 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  v20 = &v13[*(v11 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  static Font.Weight.semibold.getter();
  v21 = sub_1005958D0();
  View.fontWeight(_:)();
  sub_1000095E8(v13, &qword_101196620);
  LocalizedStringKey.init(stringLiteral:)();
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  LOBYTE(v8) = v25;
  v46 = v11;
  v47 = v21;
  swift_getOpaqueTypeConformance2();
  v26 = v36;
  View.accessibility(label:)();
  sub_10011895C(v22, v24, v8 & 1);

  (*(v38 + 8))(v15, v26);
  static SubmitLabel.done.getter();
  sub_100595A7C();
  v27 = v44;
  View.submitLabel(_:)();
  (*(v43 + 8))(v10, v45);
  sub_1000095E8(v17, &qword_101196648);
  v28 = swift_getKeyPath();
  v29 = v27 + *(sub_10010FC20(&qword_101196658) + 36);
  *v29 = v28;
  *(v29 + 8) = 1;
  v30 = static Alignment.center.getter();
  v32 = v31;
  v33 = v27 + *(sub_10010FC20(&qword_101196660) + 36);
  sub_100594268(v39, v40, v41, v42, v33);
  result = sub_10010FC20(&qword_101196668);
  v35 = (v33 + *(result + 36));
  *v35 = v30;
  v35[1] = v32;
  return result;
}

uint64_t sub_100594268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a3;
  v41 = a4;
  v38 = a1;
  v39 = a2;
  v42 = a5;
  v5 = sub_10010FC20(&qword_101196670);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  static Font.title3.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;

  sub_10011895C(v8, v10, v12 & 1);

  static Font.Weight.semibold.getter();
  v18 = Text.fontWeight(_:)();
  v20 = v19;
  v22 = v21;
  sub_10011895C(v13, v15, v17 & 1);

  v23 = [objc_opt_self() quaternaryLabelColor];
  Color.init(_:)();
  v24 = Text.foregroundColor(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_10011895C(v18, v20, v22 & 1);

  v43 = v38;
  v44 = v39;
  v45 = v40;
  v46 = v41;
  sub_10010FC20(&qword_101196618);
  Binding.wrappedValue.getter();
  v32 = v48;
  v31 = v49;

  v33 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v33 = v32 & 0xFFFFFFFFFFFFLL;
  }

  v34 = 0.0;
  v43 = v24;
  v44 = v26;
  LOBYTE(v45) = v28 & 1;
  if (!v33)
  {
    v34 = 1.0;
  }

  v46 = v30;
  v47 = v34;
  sub_10010FC20(&qword_101196678);
  sub_100595B74();
  View.accessibility(hidden:)();
  sub_10011895C(v24, v26, v28 & 1);

  v35 = v42;
  sub_10003D17C(v7, v42, &qword_101196670);
  result = sub_10010FC20(&qword_101196688);
  *(v35 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_100594570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10010FC20(&qword_101196608);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = sub_10010FC20(&qword_101196610);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = String.init(localized:table:bundle:locale:comment:)();
  v41 = v18;
  v36 = a1;
  v37 = a2;
  v38 = v32;
  v39 = v33;
  sub_10010FC20(&qword_101196618);
  Binding.projectedValue.getter();
  sub_100009838();
  TextField<>.init<A>(_:text:axis:)();
  v19 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v21 = &v14[*(sub_10010FC20(&qword_101196620) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = static Color.primary.getter();
  v23 = swift_getKeyPath();
  v24 = &v14[*(v12 + 36)];
  *v24 = v23;
  v24[1] = v22;
  sub_100595818();
  View.lineLimit(_:reservesSpace:)();
  sub_1000095E8(v14, &qword_101196608);
  LOBYTE(v22) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v25 = &v17[*(v15 + 36)];
  *v25 = v22;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  static AccessibilityChildBehavior.contain.getter();
  sub_1005959B4();
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v9, v35);
  return sub_1000095E8(v17, &qword_101196610);
}

uint64_t sub_10059493C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.subheadline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10011895C(v2, v4, v6 & 1);

  static Color.primary.getter();
  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_10011895C(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_100594A84()
{
  sub_10010FC20(&qword_101185738);
  Binding.projectedValue.getter();
  return Toggle.init(isOn:label:)();
}

uint64_t sub_100594B14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&qword_101196690);
  __chkstk_darwin(v6 - 8);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v38[-v10];
  v12 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v13 = 1;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x8000000100E509B0;
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  v15 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];

  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 personNameComponentsFromString:v16];

  if (v17)
  {
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = 0;
  }

  v18 = type metadata accessor for PersonNameComponents();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v8, v13, 1, v18);
  sub_10003D17C(v8, v11, &qword_101196690);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_1000095E8(v11, &qword_101196690);
  }

  else
  {
    v20 = PersonNameComponents.givenName.getter();
    v22 = v21;
    (*(v19 + 8))(v11, v18);
    if (v22)
    {

      a1 = v20;
      a2 = v22;
    }
  }

  v23._countAndFlagsBits = a1;
  v23._object = a2;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v23);

  v24._object = 0x8000000100E509D0;
  v24._countAndFlagsBits = 0x100000000000001BLL;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v24);
  LocalizedStringKey.init(stringInterpolation:)();
  v25 = Text.init(_:tableName:bundle:comment:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  KeyPath = swift_getKeyPath();
  v33 = static Font.footnote.getter();
  v34 = swift_getKeyPath();
  v35 = v29 & 1;
  v38[8] = v29 & 1;
  v36 = static Color.secondary.getter();
  result = swift_getKeyPath();
  *a3 = v25;
  *(a3 + 8) = v27;
  *(a3 + 16) = v35;
  *(a3 + 24) = v31;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = v34;
  *(a3 + 56) = v33;
  *(a3 + 64) = result;
  *(a3 + 72) = v36;
  return result;
}

uint64_t sub_100594EC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100594F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100594F7C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100594F94(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_100594FC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100595008(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10059507C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005950C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005951E4()
{
  result = qword_101196560;
  if (!qword_101196560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196560);
  }

  return result;
}

uint64_t sub_10059530C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011965A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059539C()
{

  return swift_deallocObject();
}

unint64_t sub_1005954F4()
{
  result = qword_101180C98;
  if (!qword_101180C98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101180C98);
  }

  return result;
}

unint64_t sub_100595540()
{
  result = qword_1011965D8;
  if (!qword_1011965D8)
  {
    sub_1001109D0(&qword_1011965E0);
    sub_1005955CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011965D8);
  }

  return result;
}

unint64_t sub_1005955CC()
{
  result = qword_1011965E8;
  if (!qword_1011965E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011965E8);
  }

  return result;
}

unint64_t sub_100595620()
{
  result = qword_1011965F0;
  if (!qword_1011965F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011965F0);
  }

  return result;
}

unint64_t sub_100595674()
{
  result = qword_1011965F8;
  if (!qword_1011965F8)
  {
    sub_1001109D0(&qword_1011965B8);
    sub_100596530(&qword_1011965D0, &qword_1011965C8, &unk_100ED4F08, sub_100595540);
    sub_100596B90(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011965F8);
  }

  return result;
}

unint64_t sub_10059575C()
{
  result = qword_101196600;
  if (!qword_101196600)
  {
    sub_1001109D0(&qword_1011965C0);
    sub_100595674();
    sub_100596B90(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196600);
  }

  return result;
}

unint64_t sub_100595818()
{
  result = qword_101196628;
  if (!qword_101196628)
  {
    sub_1001109D0(&qword_101196608);
    sub_1005958D0();
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196628);
  }

  return result;
}

unint64_t sub_1005958D0()
{
  result = qword_101196630;
  if (!qword_101196630)
  {
    sub_1001109D0(&qword_101196620);
    sub_100020674(&qword_1011945D8, &qword_101194578);
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196630);
  }

  return result;
}

unint64_t sub_1005959B4()
{
  result = qword_101196638;
  if (!qword_101196638)
  {
    sub_1001109D0(&qword_101196610);
    sub_1001109D0(&qword_101196608);
    sub_100595818();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196638);
  }

  return result;
}

unint64_t sub_100595A7C()
{
  result = qword_101196650;
  if (!qword_101196650)
  {
    sub_1001109D0(&qword_101196648);
    sub_1001109D0(&qword_101196620);
    sub_1005958D0();
    swift_getOpaqueTypeConformance2();
    sub_100596B90(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196650);
  }

  return result;
}

unint64_t sub_100595B74()
{
  result = qword_101196680;
  if (!qword_101196680)
  {
    sub_1001109D0(&qword_101196678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196680);
  }

  return result;
}

uint64_t sub_100595C18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100595C60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100595CBC()
{
  result = qword_101196698;
  if (!qword_101196698)
  {
    sub_1001109D0(&qword_101196550);
    sub_100595D74();
    sub_100020674(&qword_1011966A8, &qword_101196598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196698);
  }

  return result;
}

unint64_t sub_100595D74()
{
  result = qword_1011966A0;
  if (!qword_1011966A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011966A0);
  }

  return result;
}

uint64_t sub_100595DC8(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  sub_1001109D0(a2);
  a4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100595E28()
{
  result = qword_1011966B0;
  if (!qword_1011966B0)
  {
    sub_1001109D0(&qword_101196660);
    sub_100595EE0();
    sub_100020674(&qword_1011966C0, &qword_101196668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011966B0);
  }

  return result;
}

unint64_t sub_100595EE0()
{
  result = qword_1011966B8;
  if (!qword_1011966B8)
  {
    sub_1001109D0(&qword_101196658);
    sub_1001109D0(&qword_101196648);
    sub_100595A7C();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_10118A590, &qword_10119A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011966B8);
  }

  return result;
}

unint64_t sub_100595FD4()
{
  result = qword_1011966C8;
  if (!qword_1011966C8)
  {
    sub_1001109D0(&qword_1011966D0);
    sub_10059608C();
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011966C8);
  }

  return result;
}

unint64_t sub_10059608C()
{
  result = qword_1011966D8;
  if (!qword_1011966D8)
  {
    sub_1001109D0(&qword_1011966E0);
    sub_100118EF8();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011966D8);
  }

  return result;
}

unint64_t sub_100596198()
{
  result = qword_101196718;
  if (!qword_101196718)
  {
    sub_1001109D0(&qword_1011966F0);
    sub_100596250();
    sub_100020674(&qword_101196730, &qword_101196710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196718);
  }

  return result;
}

unint64_t sub_100596250()
{
  result = qword_101196720;
  if (!qword_101196720)
  {
    sub_1001109D0(&qword_101196708);
    sub_100020674(&qword_101196728, &qword_101196700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196720);
  }

  return result;
}

unint64_t sub_100596308()
{
  result = qword_101196740;
  if (!qword_101196740)
  {
    sub_1001109D0(&qword_101196738);
    sub_1005963C0();
    sub_100020674(&qword_1011A1670, &qword_1011A13C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196740);
  }

  return result;
}

unint64_t sub_1005963C0()
{
  result = qword_101196748;
  if (!qword_101196748)
  {
    sub_1001109D0(&qword_101196750);
    sub_100596478();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196748);
  }

  return result;
}

unint64_t sub_100596478()
{
  result = qword_101196758;
  if (!qword_101196758)
  {
    sub_1001109D0(&qword_101196760);
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196758);
  }

  return result;
}

uint64_t sub_100596530(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    sub_100595620();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005965B4()
{
  result = qword_1011967A0;
  if (!qword_1011967A0)
  {
    sub_1001109D0(&qword_1011967A8);
    sub_100020674(&qword_1011967B0, &qword_1011967B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011967A0);
  }

  return result;
}

unint64_t sub_10059667C()
{
  result = qword_1011967C0;
  if (!qword_1011967C0)
  {
    sub_1001109D0(&qword_101196788);
    sub_100596734();
    sub_100020674(&qword_1011967D8, &qword_1011967E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011967C0);
  }

  return result;
}

unint64_t sub_100596734()
{
  result = qword_1011967C8;
  if (!qword_1011967C8)
  {
    sub_1001109D0(&qword_101196768);
    sub_1005967C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011967C8);
  }

  return result;
}

unint64_t sub_1005967C0()
{
  result = qword_1011967D0;
  if (!qword_1011967D0)
  {
    sub_1001109D0(&qword_101196780);
    sub_1001109D0(&qword_101196770);
    sub_100020674(&qword_101196778, &qword_101196770);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011A16F0, &qword_101185680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011967D0);
  }

  return result;
}

unint64_t sub_100596904()
{
  result = qword_1011967F8;
  if (!qword_1011967F8)
  {
    sub_1001109D0(&qword_1011967F0);
    sub_100596990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011967F8);
  }

  return result;
}

unint64_t sub_100596990()
{
  result = qword_101196800;
  if (!qword_101196800)
  {
    sub_1001109D0(&qword_1011967E8);
    sub_100596A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196800);
  }

  return result;
}

unint64_t sub_100596A1C()
{
  result = qword_101196808;
  if (!qword_101196808)
  {
    sub_1001109D0(&qword_10118E3E8);
    sub_100596AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196808);
  }

  return result;
}

unint64_t sub_100596AA8()
{
  result = qword_101196810;
  if (!qword_101196810)
  {
    sub_1001109D0(&qword_10118E408);
    sub_100596B90(&qword_101196818, &type metadata accessor for RoundedRectangle);
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196810);
  }

  return result;
}

uint64_t sub_100596B90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14descr101092F61V16PlaylistCellViewVMa()
{
  result = qword_101196878;
  if (!qword_101196878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100596C64()
{
  sub_100465200();
  if (v0 <= 0x3F)
  {
    sub_100465294();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Playlist();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100596D1C()
{
  v1 = type metadata accessor for Playlist();
  v26 = *(v1 - 8);
  __chkstk_darwin(v1);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&unk_1011A4980);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v7 - 8);
  v27 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  _s14descr101092F61V20PlaybackStateManagerCMa();
  sub_100597DD0(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa);
  v15 = v26;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = _s14descr101092F61V16PlaylistCellViewVMa();
  (*(v15 + 16))(v11, v0 + *(v16 + 24), v1);
  (*(v15 + 56))(v11, 0, 1, v1);
  v17 = *(v4 + 56);
  sub_1000089F8(v14, v6, &unk_1011814D0);
  sub_1000089F8(v11, &v6[v17], &unk_1011814D0);
  v18 = *(v15 + 48);
  if (v18(v6, 1, v1) != 1)
  {
    sub_1000089F8(v6, v27, &unk_1011814D0);
    if (v18(&v6[v17], 1, v1) != 1)
    {
      v20 = v25;
      (*(v15 + 32))(v25, &v6[v17], v1);
      sub_100597DD0(&unk_1011A4660, &type metadata accessor for Playlist);
      v21 = v27;
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v15 + 8);
      v22(v20, v1);
      sub_1000095E8(v11, &unk_1011814D0);
      sub_1000095E8(v14, &unk_1011814D0);
      v22(v21, v1);
      sub_1000095E8(v6, &unk_1011814D0);
      return v19 & 1;
    }

    sub_1000095E8(v11, &unk_1011814D0);
    sub_1000095E8(v14, &unk_1011814D0);
    (*(v15 + 8))(v27, v1);
    goto LABEL_6;
  }

  sub_1000095E8(v11, &unk_1011814D0);
  sub_1000095E8(v14, &unk_1011814D0);
  if (v18(&v6[v17], 1, v1) != 1)
  {
LABEL_6:
    sub_1000095E8(v6, &unk_1011A4980);
    v19 = 0;
    return v19 & 1;
  }

  sub_1000095E8(v6, &unk_1011814D0);
  v19 = 1;
  return v19 & 1;
}

__n128 sub_100597204@<Q0>(uint64_t a1@<X8>)
{
  _s14descr101092F61V16PlaylistCellViewVMa();
  *&v14 = Playlist.name.getter();
  *(&v14 + 1) = v2;
  sub_100009838();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v10 = v7 & 1;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *(a1 + 96) = v18;
  *(a1 + 112) = v19;
  *(a1 + 128) = v20;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  result = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v17;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = 0;
  *(a1 + 160) = v12;
  *(a1 + 168) = 2;
  *(a1 + 176) = 0;
  return result;
}

uint64_t sub_10059732C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ArtworkImage.ReusePolicy();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v25[-v10];
  _s14descr101092F61V16PlaylistCellViewVMa();
  Playlist.artworkViewModel.getter(v11);
  Playlist.variant.getter();
  v12 = sub_10010FC20(&unk_101182950);
  (*(*(v12 - 8) + 56))(v8, 0, 11, v12);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v37);
  (*(v3 + 104))(v5, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v2);
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v11, v8, v37, v5, a1);
  (*(v3 + 8))(v5, v2);
  sub_100172200(v8);
  sub_1000095E8(v11, &unk_10118A5E0);
  v13 = a1 + *(sub_10010FC20(&qword_1011968F0) + 36);
  *v13 = 0;
  *(v13 + 8) = 257;
  v14 = static Alignment.center.getter();
  v16 = v15;
  sub_1005976C0(&v26);
  v46 = v34;
  v47 = v35;
  v48 = v36;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  *&v49 = v14;
  *(&v49 + 1) = v16;
  v17 = (a1 + *(sub_10010FC20(&qword_1011968C0) + 36));
  v18 = v47;
  v17[8] = v46;
  v17[9] = v18;
  v19 = v49;
  v17[10] = v48;
  v17[11] = v19;
  v20 = v43;
  v17[4] = v42;
  v17[5] = v20;
  v21 = v45;
  v17[6] = v44;
  v17[7] = v21;
  v22 = v39;
  *v17 = v38;
  v17[1] = v22;
  v23 = v41;
  v17[2] = v40;
  v17[3] = v23;
  v50[8] = v34;
  v50[9] = v35;
  v50[10] = v36;
  v50[4] = v30;
  v50[5] = v31;
  v50[6] = v32;
  v50[7] = v33;
  v50[0] = v26;
  v50[1] = v27;
  v50[2] = v28;
  v50[3] = v29;
  v51 = v14;
  v52 = v16;
  sub_1000089F8(&v38, v25, &qword_101196900);
  return sub_1000095E8(v50, &qword_101196900);
}

__n128 sub_1005976C0@<Q0>(uint64_t a1@<X8>)
{
  if (sub_100596D1C())
  {
    static Color.black.getter();
    v2 = Color.opacity(_:)();

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    type metadata accessor for PlaybackIndicator();
    sub_100597DD0(&qword_101186998, type metadata accessor for PlaybackIndicator);
    StateObject.wrappedValue.getter();
    v14 = sub_100586FC8();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *v22 = v2;
    *&v22[8] = v15;
    *&v22[72] = v19;
    *&v22[56] = v18;
    *&v22[88] = v20;
    *&v22[104] = v21;
    *&v22[24] = v16;
    *&v22[40] = v17;
    v26 = *&v22[48];
    v25 = *&v22[32];
    v24 = *&v22[16];
    v23 = *v22;
    v29 = *&v22[96];
    v28 = *&v22[80];
    v27 = *&v22[64];
    v34 = v17;
    v33 = v16;
    v32 = v15;
    v3 = v50;
    v4 = v51;
    v5 = v52;
    v6 = v53;
    v12 = v55;
    v13 = v54;
    v30 = *(&v21 + 1);
    v31 = v2;
    v38 = v21;
    v37 = v20;
    v36 = v19;
    v35 = v18;
    sub_1000089F8(v22, &v56, &qword_101196908);
    sub_1000095E8(&v31, &qword_101196908);
    v43 = v27;
    v44 = v28;
    v45 = v29;
    *&v46 = v30;
    v39 = v23;
    v40 = v24;
    v41 = v25;
    v42 = v26;
    BYTE8(v46) = v14;
    *&v47 = v3;
    BYTE8(v47) = v4;
    *&v48 = v5;
    BYTE8(v48) = v6;
    *&v49 = v13;
    *(&v49 + 1) = v12;
    UIScreen.Dimensions.size.getter(v26.n128_f64[0]);
    v64 = v47;
    v65 = v48;
    v66 = v49;
    v60 = v43;
    v61 = v44;
    v62 = v45;
    v63 = v46;
    v56 = v39;
    v57 = v40;
    v58 = v41;
    v59 = v42;
  }

  else
  {
    sub_100597DB0(&v56);
  }

  v7 = v65;
  *(a1 + 128) = v64;
  *(a1 + 144) = v7;
  *(a1 + 160) = v66;
  v8 = v61;
  *(a1 + 64) = v60;
  *(a1 + 80) = v8;
  v9 = v63;
  *(a1 + 96) = v62;
  *(a1 + 112) = v9;
  v10 = v57;
  *a1 = v56;
  *(a1 + 16) = v10;
  result = v59;
  *(a1 + 32) = v58;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100597A18()
{
  sub_10010FC20(&qword_1011968B8);
  sub_10010FC20(&qword_1011968C0);
  sub_100597AE4();
  sub_100597C54();
  return Label.init(title:icon:)();
}

unint64_t sub_100597AE4()
{
  result = qword_1011968C8;
  if (!qword_1011968C8)
  {
    sub_1001109D0(&qword_1011968B8);
    sub_100597B9C();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011968C8);
  }

  return result;
}

unint64_t sub_100597B9C()
{
  result = qword_1011968D0;
  if (!qword_1011968D0)
  {
    sub_1001109D0(&qword_1011968D8);
    sub_1001195A4();
    sub_100020674(&unk_10118A590, &qword_10119A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011968D0);
  }

  return result;
}

unint64_t sub_100597C54()
{
  result = qword_1011968E0;
  if (!qword_1011968E0)
  {
    sub_1001109D0(&qword_1011968C0);
    sub_100597D0C();
    sub_100020674(&qword_1011968F8, &qword_101196900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011968E0);
  }

  return result;
}

unint64_t sub_100597D0C()
{
  result = qword_1011968E8;
  if (!qword_1011968E8)
  {
    sub_1001109D0(&qword_1011968F0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011968E8);
  }

  return result;
}

double sub_100597DB0(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100597DD0(unint64_t *a1, void (*a2)(uint64_t))
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

UIMenu sub_100597E50()
{
  preferredElementSize = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v4 = 0;
  sub_10059AEA0(&v4, v0, &v5);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v4 = 1;
  sub_10059AEA0(&v4, v0, &v5);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  sub_100009F78(0, &unk_1011845F0);
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  v7.value.super.isa = 0;
  v7.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v1, 0, v7, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v3);
}

id sub_100597FA8(int a1, id a2, uint64_t a3, uint64_t (*a4)(id), uint64_t a5, uint64_t a6)
{
  [objc_msgSend(a2 "container")];
  v8 = v7;
  swift_unknownObjectRelease();
  v9 = [a2 traitCollection];
  v10 = UITraitCollection.isAccessibilitySizeCategory.getter();

  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 0, v10 & 1, v50, v8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong _directionalAccessoryEdgeInsets];
    leading = v13;
  }

  else
  {
    leading = NSDirectionalEdgeInsetsZero.leading;
  }

  v15 = v52;
  if (v52 <= leading + 2.0)
  {
    v15 = leading + 2.0;
  }

  if ((v8 + -1.0) * 0.5 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = (v8 + -1.0) * 0.5;
  }

  v17 = [a2 traitCollection];
  v18 = [v17 userInterfaceIdiom];

  v19 = 0.0;
  if (v18 == 6)
  {
    v19 = *HI.HoverOutset.grid.unsafeMutableAddressor();
  }

  v20 = objc_opt_self();
  v21 = [v20 fractionalWidthDimension:1.0 / v53];
  v22 = [v20 estimatedDimension:150.0];
  v23 = objc_opt_self();
  v24 = [v23 sizeWithWidthDimension:v21 heightDimension:v22];

  v25 = [objc_opt_self() itemWithLayoutSize:v24];
  v26 = [v20 fractionalWidthDimension:1.0];
  v27 = [v20 estimatedDimension:150.0];
  v28 = [v23 sizeWithWidthDimension:v26 heightDimension:v27];

  v29 = objc_opt_self();
  sub_10010FC20(&qword_101183990);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBC6C0;
  *(v30 + 32) = v25;
  sub_100009F78(0, &qword_101196A10);
  v47 = v25;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v32 = [v29 horizontalGroupWithLayoutSize:v28 subitems:isa];

  v33 = [objc_opt_self() fixedSpacing:v51];
  [v32 setInterItemSpacing:v33];

  v34 = [objc_opt_self() sectionWithGroup:v32];
  [v34 setInterGroupSpacing:20.0];
  if (a4([v34 setContentInsets:{v19, v16, v19, v16}]))
  {
    v35 = [v20 fractionalWidthDimension:1.0];
    v36 = [v20 estimatedDimension:38.0];
    v37 = [v23 sizeWithWidthDimension:v35 heightDimension:v36];

    v38 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v37 elementKind:UICollectionElementKindSectionHeader alignment:1];
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100EBC6C0;
    *(v39 + 32) = v38;
    sub_100009F78(0, &unk_1011913A0);
    v40 = v38;
    v41 = Array._bridgeToObjectiveC()().super.isa;

    [v34 setBoundarySupplementaryItems:v41];
  }

  [objc_msgSend(a2 container];
  v43 = v42;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v44 = *(a6 + 16);
  if (v44)
  {
    v45 = v44;
    [v45 setContentInsets:{v19, v16 + v43, v19, v16}];
  }

  return v34;
}

void *sub_100598570(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(id), uint64_t a11, uint64_t a12)
{
  v79 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v74 = a4;
  v78 = a9;
  v13 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UICollectionLayoutListConfiguration();
  v80 = *(v21 - 8);
  v81 = v21;
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a2;
  [objc_msgSend(a2 container];
  v26 = v25;
  swift_unknownObjectRelease();
  v27 = HI.SizeClass.init(_:)(v26);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    [Strong _directionalAccessoryEdgeInsets];
    v84 = v30;
    v73 = v31;
    v83 = v32;
    v70 = v33;

    v34 = *&NSDirectionalEdgeInsetsZero.top;
    v72 = *&NSDirectionalEdgeInsetsZero.bottom;
    v71 = v34;
    v34.f64[0] = v83.f64[0];
    *&v34.f64[1] = v70;
    v83 = v34;
    v34.f64[0] = v84.f64[0];
    *&v34.f64[1] = v73;
    v84 = v34;
  }

  else
  {
    v35 = *&NSDirectionalEdgeInsetsZero.bottom;
    v84 = *&NSDirectionalEdgeInsetsZero.top;
    v71 = v84;
    v83 = v35;
    v72 = v35;
  }

  *&v73 = a11;
  v36 = HI.SizeClass.margin.getter(v27);
  if (v36 <= v84.f64[1] + 2.0)
  {
    v36 = v84.f64[1] + 2.0;
  }

  if ((v26 + -1.0) * 0.5 >= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = (v26 + -1.0) * 0.5;
  }

  (*(v18 + 104))(v20, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v17);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v14 + 104))(v16, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v13);
  v38 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  v38(v86, 0);
  v39 = [v82 traitCollection];
  sub_10045B4D0();
  UITraitCollection.subscript.getter();

  UICollectionLayoutListConfiguration.showsSeparators.setter();
  LOBYTE(v39) = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v84, v71), vceqq_f64(v83, v72))));
  static UIListSeparatorConfiguration.automaticInsets.getter();
  v41 = v40;
  if ((v39 & 1) == 0 && v40 <= v37)
  {
    v41 = v37;
  }

  v42 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  v43 = UIListSeparatorConfiguration.bottomSeparatorInsets.modify();
  *(v44 + 24) = v41;
  v43(v85, 0);
  v42(v86, 0);
  v45 = swift_allocObject();
  swift_beginAccess();
  v46 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v47 = swift_allocObject();
  v47[2] = v45;
  v48 = v74;
  v49 = v75;
  v47[3] = v74;
  v47[4] = v49;
  sub_100030444(v48);
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  sub_100030444(v76);
  UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter();
  sub_100030444(v79);
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  sub_100009F78(0, &qword_101191398);
  v50 = v82;
  v51 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  [v51 setContentInsetsReference:2];
  v52 = [v50 traitCollection];
  v53 = [v52 userInterfaceIdiom];

  if (v53 == 6)
  {
    [v51 setContentInsets:{0.0, v37, 0.0, v37}];
    HI.HoverOutset.list.unsafeMutableAddressor();
    [v51 contentInsets];
    v54 = [v51 setContentInsets:?];
  }

  if (a10(v54))
  {
    v55 = objc_opt_self();
    v56 = [v55 fractionalWidthDimension:1.0];
    v57 = [v55 estimatedDimension:38.0];
    v58 = [objc_opt_self() sizeWithWidthDimension:v56 heightDimension:v57];

    v59 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v58 elementKind:UICollectionElementKindSectionHeader alignment:1];
    v60 = [v50 traitCollection];
    v61 = [v60 userInterfaceIdiom];

    if (v61 == 6)
    {
      HI.HoverOutset.list.unsafeMutableAddressor();
      v62 = v59;
      [v62 contentInsets];
      [v62 setContentInsets:?];
    }

    else
    {
      [v59 setContentInsets:{0.0, v37, 0.0, v37}];
    }

    sub_10010FC20(&qword_101183990);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_100EBC6C0;
    *(v63 + 32) = v59;
    sub_100009F78(0, &unk_1011913A0);
    v64 = v59;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v51 setBoundarySupplementaryItems:isa];
  }

  [objc_msgSend(v50 "container")];
  v67 = v66;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v68 = *(a12 + 16);
  if (v68)
  {
    [v68 setContentInsets:{0.0, v37 + v67, 0.0, v37}];
  }

  (*(v80 + 8))(v24, v81);
  return v51;
}

void sub_100598E1C(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v27 = a4;
  v28 = a1;
  v8 = type metadata accessor for UIListSeparatorConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v26 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(a5, a2, v8, v13);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v17 = Strong;
  v18 = [Strong dataSource];
  if (v18)
  {
    v19 = v18;
    if (([v18 respondsToSelector:"numberOfSectionsInCollectionView:"] & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    v25 = [v19 numberOfSectionsInCollectionView:v17];
    swift_unknownObjectRelease();
    v20 = [v17 dataSource];
    if (v20)
    {
      v24 = [v20 collectionView:v17 numberOfItemsInSection:IndexPath.section.getter()];
      swift_unknownObjectRelease();
      v21 = IndexPath.section.getter();
      if (__OFSUB__(v25, 1))
      {
        __break(1u);
      }

      else
      {
        if (v21 != v25 - 1)
        {
          goto LABEL_11;
        }

        v22 = IndexPath.item.getter();
        if (!__OFSUB__(v24, 1))
        {
          if (v22 == v24 - 1)
          {
            v23 = &enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
LABEL_12:
            (*(v26 + 104))(v15, *v23, v12);
            UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
            goto LABEL_13;
          }

LABEL_11:
          v23 = &enum case for UIListSeparatorConfiguration.Visibility.automatic(_:);
          goto LABEL_12;
        }
      }

      __break(1u);
      return;
    }
  }

LABEL_13:

LABEL_14:
  if (a3)
  {

    a3(v28, a5);
    sub_100020438(a3);
    (*(v9 + 8))(a5, v8);
    (*(v9 + 32))(a5, v11, v8);
  }
}

_UNKNOWN **sub_10059913C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v98 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration();
  v100 = *(v11 - 8);
  *&v101 = v11;
  __chkstk_darwin(v11);
  v99 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10010FC20(&unk_1011972A0);
  v96 = *(v97 - 8);
  *&v13 = __chkstk_darwin(v97).n128_u64[0];
  v15 = &v95 - v14;
  [objc_msgSend(a2 container];
  v17 = v16;
  swift_unknownObjectRelease();
  v18 = [a2 traitCollection];
  v19 = UITraitCollection.isAccessibilitySizeCategory.getter();

  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 0, v19 & 1, v103, v17);
  v20 = v105;
  v21 = sub_10059B3FC();
  v22 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v21);
  if (v22)
  {
    result = &off_10109BAD0;
  }

  else
  {
    result = &off_10109BAF8;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (result[2] <= a1)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (v22)
  {
    v24 = &off_10109BAD0;
  }

  else
  {
    v24 = &off_10109BAF8;
  }

  v25 = *(v24 + a1 + 32);

  if (v25 > 1)
  {
    if (v25 == 2 || (v107 & 1) != 0)
    {
      (*(v8 + 104))(v10, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v7);
      v41 = v99;
      UICollectionLayoutListConfiguration.init(appearance:)();
      (*(v98 + 104))(v6, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v4);
      v42 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
      UIListSeparatorConfiguration.topSeparatorVisibility.setter();
      v42(v102, 0);
      static UIListSeparatorConfiguration.automaticInsets.getter();
      static UIListSeparatorConfiguration.automaticInsets.getter();
      v43 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
      UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
      v43(v102, 0);
      sub_100009F78(0, &qword_101191398);
      v40 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
      [v40 contentInsets];
      [v40 setContentInsets:?];
      v44 = objc_opt_self();
      v45 = [v44 fractionalWidthDimension:1.0];
      v46 = [v44 estimatedDimension:38.0];
      v47 = [objc_opt_self() sizeWithWidthDimension:v45 heightDimension:v46];

      v48 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v47 elementKind:UICollectionElementKindSectionHeader alignment:1];
      [v48 setContentInsets:{0.0, v20, 0.0, v20}];
      sub_10010FC20(&qword_101183990);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_100EBC6C0;
      *(v49 + 32) = v48;
      sub_100009F78(0, &unk_1011913A0);
      v50 = v48;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v40 setBoundarySupplementaryItems:isa];

      (*(v100 + 8))(v41, v101);
    }

    else
    {
      v73 = objc_opt_self();
      v74 = [v73 fractionalWidthDimension:1.0 / v106];
      v75 = [v73 estimatedDimension:150.0];
      v76 = objc_opt_self();
      v77 = [v76 sizeWithWidthDimension:v74 heightDimension:v75];

      v78 = [objc_opt_self() itemWithLayoutSize:v77];
      v79 = [v73 fractionalWidthDimension:1.0];
      v80 = [v73 estimatedDimension:150.0];
      v81 = [v76 sizeWithWidthDimension:v79 heightDimension:v80];

      v82 = objc_opt_self();
      sub_10010FC20(&qword_101183990);
      v83 = swift_allocObject();
      v101 = xmmword_100EBC6C0;
      *(v83 + 16) = xmmword_100EBC6C0;
      *(v83 + 32) = v78;
      sub_100009F78(0, &qword_101196A10);
      v84 = v78;
      v85 = Array._bridgeToObjectiveC()().super.isa;

      v86 = [v82 horizontalGroupWithLayoutSize:v81 subitems:v85];

      v87 = [objc_opt_self() fixedSpacing:v104];
      [v86 setInterItemSpacing:v87];

      v40 = [objc_opt_self() sectionWithGroup:v86];
      [v40 setInterGroupSpacing:20.0];
      [v40 setContentInsets:{0.0, v20, 0.0, v20}];
      v88 = [v73 fractionalWidthDimension:1.0];
      v89 = [v73 estimatedDimension:38.0];
      v90 = [v76 sizeWithWidthDimension:v88 heightDimension:v89];

      v91 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v90 elementKind:UICollectionElementKindSectionHeader alignment:1];
      v92 = swift_allocObject();
      *(v92 + 16) = v101;
      *(v92 + 32) = v91;
      sub_100009F78(0, &unk_1011913A0);
      v93 = v91;
      v94 = Array._bridgeToObjectiveC()().super.isa;

      [v40 setBoundarySupplementaryItems:v94];
    }
  }

  else if (v25)
  {
    [objc_msgSend(a2 "container")];
    v53 = v52;
    swift_unknownObjectRelease();
    v54 = v53 - (v20 + v20);
    v55 = objc_opt_self();
    v56 = [v55 absoluteDimension:(v54 + -24.0) / 3.0];
    v57 = [v55 estimatedDimension:150.0];
    v58 = objc_opt_self();
    v59 = [v58 sizeWithWidthDimension:v56 heightDimension:v57];

    v60 = [v55 fractionalWidthDimension:1.0];
    v61 = [v55 estimatedDimension:150.0];
    v62 = [v58 sizeWithWidthDimension:v60 heightDimension:v61];

    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    MusicLibrary.pinsObserver.getter();

    dispatch thunk of MusicLibraryPinsObserver.pins.getter();

    sub_100020674(&qword_1011972B0, &unk_1011972A0);
    v63 = v97;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v64 = dispatch thunk of Collection.distance(from:to:)();
    (*(v96 + 8))(v15, v63);
    if (v64 <= 1)
    {
      v65 = 1;
    }

    else
    {
      v65 = v64;
    }

    if (v65 >= 3)
    {
      v66 = 3;
    }

    else
    {
      v66 = v65;
    }

    v67 = (v54 - ((v54 + -24.0) / 3.0 * v66 + (v66 - 1) * 12.0)) * 0.5;
    v68 = objc_opt_self();
    v69 = [objc_opt_self() itemWithLayoutSize:v59];
    sub_10059B774(v69, v66);

    sub_100009F78(0, &qword_101196A10);
    v70 = Array._bridgeToObjectiveC()().super.isa;

    v71 = [v68 horizontalGroupWithLayoutSize:v62 subitems:v70];

    [v71 setContentInsets:{0.0, v67, 0.0, v67}];
    v72 = [objc_opt_self() fixedSpacing:12.0];
    [v71 setInterItemSpacing:v72];

    v40 = [objc_opt_self() sectionWithGroup:v71];
    [v40 setInterGroupSpacing:v20];
    [v40 setContentInsets:{10.0, v20, 24.0, v20}];
  }

  else
  {
    v26 = objc_opt_self();
    v27 = [v26 fractionalWidthDimension:1.0];
    v28 = [v26 estimatedDimension:150.0];
    v29 = objc_opt_self();
    v30 = [v29 sizeWithWidthDimension:v27 heightDimension:v28];

    v31 = [objc_opt_self() itemWithLayoutSize:v30];
    v32 = [v26 fractionalWidthDimension:1.0];
    v33 = [v26 estimatedDimension:150.0];
    v34 = [v29 sizeWithWidthDimension:v32 heightDimension:v33];

    v35 = objc_opt_self();
    sub_10010FC20(&qword_101183990);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100EBC6C0;
    *(v36 + 32) = v31;
    sub_100009F78(0, &qword_101196A10);
    v37 = v31;
    v38 = Array._bridgeToObjectiveC()().super.isa;

    v39 = [v35 horizontalGroupWithLayoutSize:v34 subitems:v38];

    v40 = [objc_opt_self() sectionWithGroup:v39];
    [v40 setContentInsets:{0.0, v20, 0.0, v20}];
  }

  return v40;
}

void *sub_10059A0C4(void *result, uint64_t a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      sub_10010FC20(a3);
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v6[2] = a2;
      v7 = *(sub_10010FC20(a3) - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      sub_1000089F8(v5, v6 + v8, a3);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v7 + 72);
        v11 = v6 + v10 + v8;
        do
        {
          sub_1000089F8(v5, v11, a3);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    sub_1000095E8(v5, a3);
    return v6;
  }

  return result;
}

uint64_t sub_10059A1DC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v2 = String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();
  [objc_opt_self() systemImageNamed:v3];

  return v2;
}

uint64_t sub_10059A3AC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1953720684;
  }

  else
  {
    v2 = 1684632167;
  }

  if (*a2)
  {
    v3 = 1953720684;
  }

  else
  {
    v3 = 1684632167;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10059A424()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10059A48C()
{
  String.hash(into:)();
}

Swift::Int sub_10059A4D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10059A53C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10109BB20, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10059A59C(uint64_t *a1@<X8>)
{
  v2 = 1684632167;
  if (*v1)
  {
    v2 = 1953720684;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_10059A684(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v14 = a1;
  v15 = a2;

  v6._countAndFlagsBits = 0x5674756F79614C2DLL;
  v6._object = 0xEE00746E61697261;
  String.append(_:)(v6);

  v7 = v15;
  *(v3 + 40) = v14;
  *(v3 + 48) = v7;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_10059B27C();
  sub_10059B2D0();

  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s13LayoutVariantON, &v14);

  v9 = v14;
  if (v14 == 2)
  {
    v9 = a3;
  }

  *(v4 + 32) = v9 & 1;
  sub_100009F78(0, &qword_10118CE58);
  v10 = *(v4 + 48);
  v14 = *(v4 + 40);
  v15 = v10;
  v11 = swift_allocObject();
  swift_weakInit();
  sub_100009838();

  v12 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v14, 0, 0, sub_10059B324, v11, &type metadata for String);

  *(v4 + 56) = v12;

  return v4;
}

uint64_t sub_10059A888(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + 64) & 1) == 0)
    {
      v6 = result;
      sub_1000089F8(a1, v14, &unk_101183F30);
      if (!v14[3])
      {

        return sub_1000095E8(v14, &unk_101183F30);
      }

      if (swift_dynamicCast())
      {
        v8 = v13[1];
        v7 = v13[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_10059B27C();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v9 = v14[0];
        v10 = type metadata accessor for TaskPriority();
        (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
        type metadata accessor for MainActor();

        v11 = static MainActor.shared.getter();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = &protocol witness table for MainActor;
        *(v12 + 32) = v6;
        *(v12 + 40) = v9;
        sub_1001F4CB8(0, 0, v4, &unk_100ED5658, v12);

        sub_10002C064(v8, v7);
      }
    }
  }

  return result;
}

uint64_t sub_10059AC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10059AD00, v7, v6);
}

uint64_t sub_10059AD00()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v2 + 32);
  *(v2 + 32) = v1 & 1;
  sub_10059AD74(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10059AD74(char a1)
{
  if (a1)
  {
    v2 = 1953720684;
  }

  else
  {
    v2 = 1684632167;
  }

  if (*(v1 + 32))
  {
    v3 = 1953720684;
  }

  else
  {
    v3 = 1684632167;
  }

  if (v2 == v3)
  {
    return swift_bridgeObjectRelease_n();
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = swift_bridgeObjectRelease_n();
  if ((v5 & 1) == 0)
  {
    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = *(v1 + 32);

      v6(v7);
      sub_100020438(v6);
    }

    v8 = [objc_opt_self() standardUserDefaults];
    v9 = *(v1 + 32);
    v10[3] = &_s13LayoutVariantON;
    v10[4] = sub_10059B27C();
    v10[5] = sub_10059B2D0();
    LOBYTE(v10[0]) = v9;
    NSUserDefaults.encodeValue(_:forKey:)(v10);

    return sub_10000959C(v10);
  }

  return result;
}

uint64_t sub_10059AEA0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  sub_10059A1DC();
  v6 = v5;
  if (*(a2 + 32))
  {
    v7 = 1953720684;
  }

  else
  {
    v7 = 1684632167;
  }

  if (v4)
  {
    v8 = 1953720684;
  }

  else
  {
    v8 = 1684632167;
  }

  if (v7 == v8)
  {
    v19 = v5;

    swift_bridgeObjectRelease_n();
    v9 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v19 = v6;

    swift_bridgeObjectRelease_n();
    v9 = v10 & 1;
  }

  sub_100009F78(0, &qword_1011839A0);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v4;
  v18 = v12;
  v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  _StringGuts.grow(_:)(27);

  v14._countAndFlagsBits = v8;
  v14._object = 0xE400000000000000;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000019;
  v15._object = 0x8000000100E50BA0;
  AccessibilityIdentifier.init(name:)(v15);

  v16 = String._bridgeToObjectiveC()();

  [v13 setAccessibilityIdentifier:{v16, 0, 0, v9, sub_10059B3F0, v18}];

  *a3 = v13;
  return result;
}

uint64_t sub_10059B0F0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    *(result + 64) = 1;
    v6 = *(result + 32);
    *(v5 + 32) = a3 & 1;
    sub_10059AD74(v6);
    *(v5 + 64) = 0;
  }

  return result;
}

uint64_t sub_10059B164()
{
  sub_100020438(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_10059B228()
{
  result = qword_1011969F0;
  if (!qword_1011969F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011969F0);
  }

  return result;
}

unint64_t sub_10059B27C()
{
  result = qword_1011969F8;
  if (!qword_1011969F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011969F8);
  }

  return result;
}

unint64_t sub_10059B2D0()
{
  result = qword_101196A00;
  if (!qword_101196A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196A00);
  }

  return result;
}

uint64_t sub_10059B32C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_10059AC64(a1, v4, v5, v6, v7);
}

unint64_t sub_10059B3FC()
{
  result = qword_101196A08;
  if (!qword_101196A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196A08);
  }

  return result;
}

id sub_10059B450(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  if (a2)
  {
    v9 = objc_opt_self();
    v10 = [v9 fractionalWidthDimension:1.0];
    v11 = [v9 estimatedDimension:65.0];
    v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

    UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

    v13 = String._bridgeToObjectiveC()();

    v14 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:v13 alignment:1];

    sub_10010FC20(&qword_101183990);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100EBC6C0;
    *(v15 + 32) = v14;
    sub_100009F78(0, &unk_1011913A0);
    v16 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setBoundarySupplementaryItems:isa];

    v18 = *(v8 + 16);
    *(v8 + 16) = v16;
  }

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = v8;
  v21 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v25[4] = sub_10059B870;
  v25[5] = v20;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_1005A63A8;
  v25[3] = &unk_1010B40B0;
  v22 = _Block_copy(v25);

  v23 = [v21 initWithSectionProvider:v22 configuration:v7];

  _Block_release(v22);

  return v23;
}

void *sub_10059B774(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_100009F78(0, &qword_101196A10);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

unint64_t sub_10059B810()
{
  result = qword_101196A18;
  if (!qword_101196A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196A18);
  }

  return result;
}

uint64_t sub_10059B87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v15;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v9 = type metadata accessor for URL();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  sub_10010FC20(&qword_10118A418);
  v8[22] = swift_task_alloc();
  v10 = sub_10010FC20(&unk_10118A420);
  v8[23] = v10;
  v8[24] = *(v10 - 8);
  v8[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[26] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[27] = v12;
  v8[28] = v11;

  return _swift_task_switch(sub_10059BA20, v12, v11);
}

uint64_t sub_10059BA20()
{
  v1 = v0[22];
  v2 = type metadata accessor for ReferrerInfo();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_10059BB04;
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[14];

  return MusicPageProvider.openURL(_:referrerInfo:)(v4, v6, v5);
}

uint64_t sub_10059BB04()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  *(*v1 + 240) = v0;

  sub_1000095E8(v3, &qword_10118A418);
  if (v0)
  {
    v4 = v2[27];
    v5 = v2[28];
    v6 = sub_10059BF38;
  }

  else
  {
    (*(v2[24] + 8))(v2[25], v2[23]);
    v4 = v2[27];
    v5 = v2[28];
    v6 = sub_10059BC64;
  }

  return _swift_task_switch(v6, v4, v5);
}

void *sub_10059BC64()
{
  v15 = v0;
  v1 = *(*(v0 + 136) + 32);
  if ((v1 & 0x8000000000000000) != 0)
  {
    v3 = (v1 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v2 = v1;
    v3 = sub_1006BDE5C();

    if (!v3)
    {

      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
LABEL_11:
      sub_1000095E8(v0 + 56, &qword_101196AA0);
      if (qword_10117F618 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000060E4(v6, qword_101218AF0);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v10 = *(v0 + 120);
        v9 = *(v0 + 128);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v14 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_1000105AC(v10, v9, &v14);
        _os_log_impl(&_mh_execute_header, v7, v8, "Couldn't get PPT test host view controller for PPT: %s", v11, 0xCu);
        sub_10000959C(v12);
      }

      goto LABEL_16;
    }
  }

  *(v0 + 96) = v3;
  sub_100009F78(0, &qword_101183D40);
  sub_10010FC20(&qword_101196A98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_10;
  }

  if (!*(v0 + 80))
  {
LABEL_10:

    goto LABEL_11;
  }

  v4 = *(v0 + 144);
  sub_100059A8C((v0 + 56), v0 + 16);
  result = sub_10000954C((v0 + 16), *(v0 + 40));
  if (!v4)
  {
    __break(1u);
    return result;
  }

  dispatch thunk of PPTTestHost.runTest(_:options:)();
  sub_10000959C(v0 + 16);
LABEL_16:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10059BF38()
{
  v22 = v0;

  if (qword_10117F618 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[14];
  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_101218AF0);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  if (v8)
  {
    v13 = v0[15];
    v12 = v0[16];
    v14 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1000105AC(v13, v12, &v21);
    *(v14 + 12) = 2080;
    sub_1005A04D4();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_1000105AC(v15, v17, &v21);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to open url for PPT: %s, url=%s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_10059C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v137 = a3;
  v138 = a4;
  v136 = a2;
  v7 = type metadata accessor for AppInterfaceContext.Activity(0);
  v135 = *(v7 - 8);
  v8 = *(v135 + 64);
  __chkstk_darwin(v7);
  v9 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v135 - v11;
  __chkstk_darwin(v13);
  v15 = &v135 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v20 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    if (a5 == 1)
    {
      v21 = a5 >> 8;
      if (sub_10059D380(a5 >> 8, a1))
      {
        v22 = [objc_opt_self() mainRunLoop];
        Date.init(timeIntervalSinceNow:)();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v17 + 8))(v20, v16);
        [v22 runUntilDate:isa];

        v24 = UIApp;
        if (UIApp)
        {
          v25 = swift_allocObject();
          v27 = v136;
          v26 = v137;
          *(v25 + 16) = v136;
          *(v25 + 24) = v26;
          v28 = v138;
          *(v25 + 32) = v138;
          v29 = 1;
          *(v25 + 40) = 1;
          *(v25 + 41) = v21;
          v143 = sub_1005A052C;
          v144 = v25;
          aBlock = _NSConcreteStackBlock;
          v140 = 1107296256;
          v141 = sub_1005C3688;
          v142 = &unk_1010B4278;
          v30 = _Block_copy(&aBlock);

          v31 = v24;

          v32 = swift_allocObject();
          *(v32 + 16) = v27;
          *(v32 + 24) = v26;
          *(v32 + 32) = v28;
          *(v32 + 40) = 1;
          *(v32 + 41) = v21;
          v143 = sub_1005A0538;
          v144 = v32;
          aBlock = _NSConcreteStackBlock;
          v140 = 1107296256;
          v141 = sub_1005C3688;
          v142 = &unk_1010B42C8;
          v33 = _Block_copy(&aBlock);

          [v31 rotateIfNeeded:v28 before:v30 after:v33];
          _Block_release(v33);
          _Block_release(v30);

          return v29;
        }

        __break(1u);
        goto LABEL_67;
      }

      return 0;
    }

    if (v138 <= 1)
    {
      if (v138)
      {
        if (UIApp)
        {
          LODWORD(v138) = a5 >> 8;
          v98 = UIApp;
          v99 = v136;
          v100 = v137;
          v101 = String._bridgeToObjectiveC()();
          [v98 startedTest:v101];

          v102 = &v15[*(sub_10010FC20(&unk_1011841E0) + 48)];
          *v15 = 5;
          type metadata accessor for AppInterfaceContext.Activity.Destination(0);
          swift_storeEnumTagMultiPayload();
          *v102 = 0;
          v102[1] = 0;
          swift_storeEnumTagMultiPayload();
          v103 = swift_allocObject();
          *(v103 + 16) = v99;
          *(v103 + 24) = v100;
          v29 = 1;
          *(v103 + 32) = 1;
          *(v103 + 40) = 2;
          *(v103 + 41) = v138;
          sub_100115B50(v15, v12);
          sub_100115B50(v12, v9);
          v104 = (*(v135 + 80) + 32) & ~*(v135 + 80);
          v105 = swift_allocObject();
          *(v105 + 16) = sub_1005A058C;
          *(v105 + 24) = v103;
          sub_100115BB4(v9, v105 + v104);

          sub_100706900(v12, sub_100137E88, v105);

          sub_100115C8C(v12);
          sub_100115C8C(v15);
          return v29;
        }

        goto LABEL_69;
      }

      if (sub_10059D380(a5 >> 8, a1))
      {
        v52 = [objc_opt_self() mainRunLoop];
        Date.init(timeIntervalSinceNow:)();
        v53 = Date._bridgeToObjectiveC()().super.isa;
        (*(v17 + 8))(v20, v16);
        [v52 runUntilDate:v53];
      }

      return 0;
    }

    if (v138 == 2)
    {
      v74 = v137;
      if (UIApp)
      {
        v75 = UIApp;
        v76 = v136;
        v77 = String._bridgeToObjectiveC()();
        [v75 startedTest:v77];

        v78 = *(a1 + 32);
        v79 = (v78 & 0x7FFFFFFFFFFFFFFFLL);
        if (v78 >= 0)
        {
          v80 = *(a1 + 32);
        }

        else
        {
          v80 = (v78 & 0x7FFFFFFFFFFFFFFFLL);
        }

        v81 = swift_allocObject();
        *(v81 + 16) = v76;
        *(v81 + 24) = v74;
        *(v81 + 32) = 2;
        *(v81 + 40) = 2;
        *(v81 + 41) = a5 >> 8;
        v143 = sub_1005A0574;
        v144 = v81;
        aBlock = _NSConcreteStackBlock;
        v140 = 1107296256;
        v141 = sub_10002BC98;
        v142 = &unk_1010B4318;
        v82 = _Block_copy(&aBlock);

        v83 = v79;

        v29 = 1;
        [v80 dismissViewControllerAnimated:1 completion:v82];
        _Block_release(v82);

        return v29;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v41 = v137;
    v42 = a1;
    if (v138 == 3)
    {
      if ((sub_10059D380(a5 >> 8, a1) & 1) == 0)
      {
        return 0;
      }

      if (!UIApp)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v43 = UIApp;
      v44 = v136;
      v45 = String._bridgeToObjectiveC()();
      [v43 startedTest:v45];

      v46 = swift_allocObject();
      *(v46 + 16) = v44;
      *(v46 + 24) = v41;
      *(v46 + 32) = 3;
      *(v46 + 40) = 2;
      *(v46 + 41) = a5 >> 8;
      v47 = *(v42 + 32);
      if ((v47 & 0x8000000000000000) != 0)
      {
        v125 = UIApp;
        if (UIApp)
        {

          v126 = v125;
          v127 = String._bridgeToObjectiveC()();
          v29 = 1;
          [v126 finishedTest:v127 waitForCommit:1 extraResults:0];

          return v29;
        }

        goto LABEL_72;
      }

      if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {

        v131 = v47;
        sub_10010EFBC(_swiftEmptyArrayStorage);
        v49 = v132;
      }

      else
      {

        v48 = v47;
        v49 = &_swiftEmptySetSingleton;
      }

      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      __chkstk_darwin(v50);
      *(&v135 - 4) = v51;
      *(&v135 - 3) = sub_1005A0974;
      v133 = v46;
      UIViewController.traverseViewControllerHierarchy(_:)(sub_1005A097C, (&v135 - 6));
      sub_10059DF88(v50, sub_1005A0974, v46, &unk_1010B4148, sub_100029B6C, &unk_1010B4160);

      goto LABEL_52;
    }

    v84 = [*(a1 + 32) & 0x7FFFFFFFFFFFFFFFLL view];
    if (!v84)
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v85 = v84;
    v86 = [v84 window];

    if (!v86)
    {
      v134 = 0;
      v133 = 276;
      goto LABEL_75;
    }

    v87 = objc_allocWithZone(RPTResizeTestParameters);
    v88 = v86;
    v89 = String._bridgeToObjectiveC()();
    v90 = [v87 initWithTestName:v89 window:v88 completionHandler:0];

    [v90 setMinimumWindowSize:{375.0, 490.0}];
    v91 = [v88 screen];
    [v91 bounds];
    v93 = v92;
    v95 = v94;

    [v90 setMaximumWindowSize:{v93, v95}];
    v96 = objc_opt_self();
    v97 = v90;
    [v96 runTestWithParameters:v97];

    return 1;
  }

  v34 = a5 >> 8;
  v35 = a1;
  if ((sub_10059D380(a5 >> 8, a1) & 1) == 0)
  {
    return 0;
  }

  v36 = [objc_opt_self() mainRunLoop];
  Date.init(timeIntervalSinceNow:)();
  v37 = Date._bridgeToObjectiveC()().super.isa;
  (*(v17 + 8))(v20, v16);
  [v36 runUntilDate:v37];

  if (BYTE2(a5) != 255 && (a5 & 0xFF0000) == 0x10000)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v39 = v137;
    if (!Strong)
    {
      return 0;
    }

    v40 = Strong;
LABEL_25:
    v55 = [v40 contentScrollViewForEdge:{1, v135}];
    v56 = v55;
    if (!v55)
    {
      v57 = [v40 contentScrollView];
      if (!v57)
      {

        return 0;
      }

      v56 = v57;
      v55 = 0;
    }

    v58 = v138;
    v59 = v55;
    if (v58 != 2)
    {

      if (!UIApp)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v106 = UIApp;
      v107 = v136;
      v108 = String._bridgeToObjectiveC()();
      [v106 startedTest:v108];

      v109 = swift_allocObject();
      *(v109 + 16) = v107;
      *(v109 + 24) = v39;
      *(v109 + 32) = v138;
      *(v109 + 40) = 0;
      *(v109 + 41) = v34;
      v110 = swift_allocObject();
      *(v110 + 16) = 3;
      *(v110 + 24) = sub_1005A05D0;
      *(v110 + 32) = v109;
      *(v110 + 40) = v56;
      *(v110 + 48) = xmmword_100ED5670;
      v143 = sub_1005A05D4;
      v144 = v110;
      aBlock = _NSConcreteStackBlock;
      v140 = 1107296256;
      v141 = sub_10002BC98;
      v142 = &unk_1010B4408;
      v111 = _Block_copy(&aBlock);
      v112 = v56;

      [v112 _simulateScrollWithTranslation:0 duration:0 willBeginDragging:0 didEndDragging:v111 willBeginDecelerating:0.0 didEndDecelerating:{10.0, 0.0}];

      _Block_release(v111);

      return 1;
    }

    v60 = [v56 window];
    if (v60)
    {
      v61 = v60;
      [v60 bounds];
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v69 = v68;

      v70 = v69;
      v71 = v67;
      v72 = v65;
      v73 = v63;
    }

    else
    {
      [v56 bounds];
    }

    v113 = CGRectGetHeight(*&v73) * 20.0;
    if ((*&v113 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v113 > -2147483650.0)
    {
      if (v113 < 2147483650.0)
      {
        v114 = v113;
        v16 = swift_allocObject();
        v115 = v136;
        *(v16 + 16) = v56;
        *(v16 + 24) = v115;
        v116 = v138;
        *(v16 + 32) = v39;
        *(v16 + 40) = v116;
        *(v16 + 48) = 0;
        *(v16 + 49) = v34;
        *(v16 + 52) = 40;
        *(v16 + 56) = v114;
        v20 = *(v35 + 32);
        if ((v20 & 0x8000000000000000) != 0)
        {
          v123 = v56;

          v124 = String._bridgeToObjectiveC()();
          v29 = 1;
          [v123 _performScrollTest:v124 iterations:1 delta:40 length:v114];

          return v29;
        }

        if (!(_swiftEmptyArrayStorage >> 62))
        {
          goto LABEL_50;
        }

        goto LABEL_62;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v128 = v56;

        v129 = v20;
        sub_10010EFBC(_swiftEmptyArrayStorage);
        v119 = v130;
        goto LABEL_51;
      }

LABEL_50:
      v117 = v56;

      v118 = v20;
      v119 = &_swiftEmptySetSingleton;
LABEL_51:
      v120 = swift_allocObject();
      *(v120 + 16) = v119;
      __chkstk_darwin(v120);
      *(&v135 - 4) = v121;
      *(&v135 - 3) = sub_1005A05D8;
      v133 = v16;
      UIViewController.traverseViewControllerHierarchy(_:)(sub_1005A097C, (&v135 - 6));
      sub_10059DF88(v120, sub_1005A05D8, v16, &unk_1010B4148, sub_100029B6C, &unk_1010B4160);

LABEL_52:

      return 1;
    }

    __break(1u);
    goto LABEL_61;
  }

  v54 = *(v35 + 32);
  v39 = v137;
  if ((v54 & 0x8000000000000000) == 0)
  {
    v20 = v54;
    v40 = sub_1006BAD7C();

    if (!v40)
    {
      return 0;
    }

    goto LABEL_25;
  }

LABEL_73:
  v134 = 0;
  v133 = 190;
LABEL_75:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10059D2EC()
{
  if (UIApp)
  {
    v0 = UIApp;
    v1 = String._bridgeToObjectiveC()();
    [v0 finishedTest:v1 waitForCommit:1 extraResults:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_10059D380(__int16 a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for AppInterfaceContext.Activity(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v40 - v19;
  if (HIBYTE(a1) == 255)
  {
    goto LABEL_2;
  }

  if (!HIBYTE(a1))
  {
    v24 = &v20[*(sub_10010FC20(&unk_1011841E0) + 48)];
    *v20 = a1;
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    LOBYTE(v6) = 1;
    swift_storeEnumTagMultiPayload();
    *v24 = 0;
    v24[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100115B50(v20, v16);
    sub_100115B50(v16, v13);
    v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    sub_100115BB4(v13, v26 + v25);
    sub_100706900(v16, sub_100139B24, v26);

    sub_100115C8C(v16);
    sub_100115C8C(v20);
    return (v6 & 1);
  }

  if (HIBYTE(a1) == 1)
  {
    v21 = &v20[*(sub_10010FC20(&unk_1011841E0) + 48)];
    *v20 = a1;
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    swift_storeEnumTagMultiPayload();
    *v21 = 0;
    v21[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100115B50(v20, v16);
    sub_100115B50(v16, v13);
    v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    sub_100115BB4(v13, v23 + v22);
    sub_100706900(v16, sub_100139B24, v23);

    sub_100115C8C(v16);
    sub_100115C8C(v20);
LABEL_6:
    LOBYTE(v6) = 1;
    return (v6 & 1);
  }

  if (a1)
  {
    if (a1 != 1)
    {
      v37 = *(a2 + 32);
      if ((v37 & 0x8000000000000000) == 0)
      {
        v38 = v37;
        v39 = [v38 sidebar];
        [v39 setHidden:0];

        goto LABEL_6;
      }

      goto LABEL_2;
    }

    result = [*(a2 + 32) & 0x7FFFFFFFFFFFFFFFLL view];
    if (result)
    {
      v28 = result;
      v29 = [result window];

      if (v29)
      {
        v30 = [v29 windowScene];

        if (v30)
        {
          URL.init(string:)();
          v31 = type metadata accessor for URL();
          result = (*(*(v31 - 8) + 48))(v6, 1, v31);
          if (result != 1)
          {
            type metadata accessor for LaunchOptions(0);
            swift_allocObject();
            v32 = v30;
            sub_1002B8D68(v6, 0, v32);
            LOBYTE(v6) = sub_1002C5A04();

LABEL_20:

            return (v6 & 1);
          }

          goto LABEL_26;
        }
      }

LABEL_2:
      LOBYTE(v6) = 0;
      return (v6 & 1);
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = [*(a2 + 32) & 0x7FFFFFFFFFFFFFFFLL view];
  if (!result)
  {
    goto LABEL_25;
  }

  v33 = result;
  v34 = [result window];

  if (!v34)
  {
    goto LABEL_2;
  }

  v6 = [v34 windowScene];

  if (!v6)
  {
    return (v6 & 1);
  }

  URL.init(string:)();
  v35 = type metadata accessor for URL();
  result = (*(*(v35 - 8) + 48))(v9, 1, v35);
  if (result != 1)
  {
    type metadata accessor for LaunchOptions(0);
    swift_allocObject();
    v36 = v6;
    sub_1002B8D68(v9, 0, v36);
    LOBYTE(v6) = sub_1002C5A04();

    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_10059D960(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, double a5, double a6)
{
  if (a1)
  {
    v8 = a1 - 1;
    if (__OFSUB__(a1, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v8;
      *(v12 + 24) = a2;
      *(v12 + 32) = a3;
      *(v12 + 40) = a4;
      *(v12 + 48) = a5;
      *(v12 + 56) = a6;
      v15[4] = sub_1005A0978;
      v15[5] = v12;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_10002BC98;
      v15[3] = &unk_1010B4480;
      v13 = _Block_copy(v15);

      v14 = a4;

      [v14 _simulateScrollWithTranslation:0 duration:0 willBeginDragging:0 didEndDragging:v13 willBeginDecelerating:a5 didEndDecelerating:{a6, 0.0}];
      _Block_release(v13);
    }
  }

  else
  {
    a2();
  }
}

void sub_10059DA98()
{
  if (UIApp)
  {
    v0 = UIApp;
    v1 = String._bridgeToObjectiveC()();
    [v0 finishedTest:v1];
  }

  else
  {
    __break(1u);
  }
}

void sub_10059DB24()
{
  if (UIApp)
  {
    v0 = UIApp;
    v1 = String._bridgeToObjectiveC()();
    [v0 finishedTest:v1];
  }

  else
  {
    __break(1u);
  }
}

void sub_10059DBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (UIApp)
  {
    v7 = UIApp;
    v8 = String._bridgeToObjectiveC()();
    [v7 *a6];
  }

  else
  {
    __break(1u);
  }
}

void sub_10059DC3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (v9 && a1)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 8);
    v17 = a1;
    if (v12(ObjectType, v10))
    {
    }

    else
    {
      swift_beginAccess();
      v13 = v17;
      sub_1003B4A00(&v18, v13);
      swift_endAccess();

      v14 = swift_allocObject();
      v14[2] = a3;
      v14[3] = v13;
      v14[4] = a4;
      v14[5] = a5;
      v15 = *(v10 + 24);
      v16 = v13;

      v15(sub_10059FA90, v14, ObjectType, v10);
    }
  }
}

uint64_t sub_10059DDD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = sub_100195D24(a2);
  swift_endAccess();

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a3;
  v9[4] = a4;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {

    sub_10010EFBC(_swiftEmptyArrayStorage);
    v10 = v13;
  }

  else
  {

    v10 = &_swiftEmptySetSingleton;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v14[2] = __chkstk_darwin(v11);
  v14[3] = sub_10059FA9C;
  v14[4] = v9;
  UIViewController.traverseViewControllerHierarchy(_:)(sub_1005A097C, v14);
  sub_10059DF88(v11, sub_10059FA9C, v9, &unk_1010B4148, sub_100029B6C, &unk_1010B4160);
}

void sub_10059DF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v11 = *(a1 + 16);
  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = __CocoaSet.count.getter();

    if (v12)
    {
      return;
    }
  }

  else if (*(v11 + 16))
  {
    return;
  }

  v13 = UIApp;
  if (UIApp)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    aBlock[4] = a5;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = a6;
    v15 = _Block_copy(aBlock);
    v16 = v13;

    [v16 installCACommitCompletionBlock:v15];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10059E0E4(char *a1, char *a2)
{
  v56 = a1;
  v3 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v3 - 8);
  v55 = &v48 - v4;
  v49 = sub_10010CEA4(_swiftEmptyArrayStorage);
  v5 = static TabIdentifier.allCases.getter();
  v52 = v5[2];
  if (v52)
  {
    v6 = 0;
    v50 = v5;
    v51 = (v5 + 4);
LABEL_4:
    v7 = *(v51 + v6);
    v54 = v6;
    if (v7 > 2)
    {
      v8 = &_swiftEmptySetSingleton;
      if ((v7 - 5) < 2)
      {
        goto LABEL_15;
      }

      if (v7 == 3)
      {
        v9 = &off_10109A7F8;
      }

      else
      {
        v9 = &off_10109A828;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        v8 = sub_1000158E0(&off_10109A7A8);
        swift_arrayDestroy();
        goto LABEL_15;
      }

      v9 = &off_10109A748;
    }

    else
    {
      v9 = &off_10109A778;
    }

    v8 = sub_1000158E0(v9);
    sub_100015BB0((v9 + 4));
LABEL_15:
    v53 = v7;
    v10 = v8 + 56;
    v11 = 1 << v8[32];
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v8 + 7);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    v57 = v8;
    while (2)
    {
      v16 = v15;
      if (!v13)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v15 = v16;
LABEL_24:
        v17 = *(v8 + 6) + ((v15 << 10) | (16 * __clz(__rbit64(v13))));
        v18 = *v17;
        v19 = *(v17 + 8);
        v13 &= v13 - 1;
        v58[0] = v56;
        v58[1] = a2;
        v20 = a2;
        v58[5] = v18;
        v58[6] = v19;
        v21 = type metadata accessor for Locale();
        v22 = v55;
        (*(*(v21 - 8) + 56))(v55, 1, 1, v21);
        sub_100009838();

        v23 = StringProtocol.range<A>(of:options:range:locale:)();
        v25 = v24;
        v27 = v26;
        sub_1000095E8(v22, &unk_101182EA0);
        if ((v27 & 1) == 0)
        {
          break;
        }

        v16 = v15;
        a2 = v20;
        v8 = v57;
        if (!v13)
        {
          while (1)
          {
LABEL_21:
            v15 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
              goto LABEL_47;
            }

            if (v15 >= v14)
            {
              break;
            }

            v13 = *&v10[8 * v15];
            ++v16;
            if (v13)
            {
              goto LABEL_24;
            }
          }

          v6 = v54 + 1;
          if ((v54 + 1) == v52)
          {
            goto LABEL_38;
          }

          goto LABEL_4;
        }
      }

      v28 = v49;
      HIDWORD(v48) = swift_isUniquelyReferenced_nonNull_native();
      v58[0] = v28;
      v30 = sub_1006BE9AC(v53);
      v31 = *(v28 + 16);
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
LABEL_47:
        __break(1u);
      }

      else
      {
        if (*(v28 + 24) >= v33)
        {
          if ((v48 & 0x100000000) == 0)
          {
            LODWORD(v49) = v29;
            sub_1006CA208();
            LOBYTE(v29) = v49;
          }
        }

        else
        {
          LODWORD(v49) = v29;
          sub_1006C3D00(v33, SBYTE4(v48));
          v34 = sub_1006BE9AC(v53);
          v35 = v29 & 1;
          LOBYTE(v29) = v49;
          if ((v49 & 1) != v35)
          {
LABEL_49:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);

            __break(1u);
            return result;
          }

          v30 = v34;
        }

        v36 = v58[0];
        v49 = v58[0];
        if (v29)
        {
          v37 = (*(v58[0] + 7) + 16 * v30);
          *v37 = v23;
          v37[1] = v25;
LABEL_37:

          a2 = v20;
          v8 = v57;
          continue;
        }

        *&v58[0][8 * (v30 >> 6) + 64] |= 1 << v30;
        *(*(v36 + 6) + v30) = v53;
        v38 = (*(v36 + 7) + 16 * v30);
        *v38 = v23;
        v38[1] = v25;
        v39 = *(v36 + 2);
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (!v40)
        {
          *(v36 + 2) = v41;
          goto LABEL_37;
        }
      }

      break;
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_38:

  v42 = v49;
  v43 = *(v49 + 16);
  if (!v43)
  {
    goto LABEL_41;
  }

  v44 = sub_1003ADDB8(*(v49 + 16), 0);
  v45 = sub_10019776C(v58, (v44 + 32), v43, v42);

  sub_10005C9F8();
  if (v45 != v43)
  {
    __break(1u);
LABEL_41:
    v44 = _swiftEmptyArrayStorage;
  }

  v58[0] = v44;
  sub_10059E60C(v58);
  if (*(v58[0] + 2))
  {
    v46 = *(v58[0] + 32);
  }

  else
  {
    v46 = 7;
  }

  return v46;
}

Swift::Int sub_10059E60C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10059F058(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >> 14 >= *v13 >> 14)
          {
            break;
          }

          v14 = v13[16];
          v15 = *(v13 + 4);
          *(v13 + 1) = *(v13 - 8);
          *(v13 + 4) = *(v13 + 1);
          *(v13 - 8) = v14;
          *v13 = v11;
          *(v13 + 1) = v15;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10010FC20(&qword_101196A88);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_10059E77C(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10059E77C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v93 = *v93;
    if (!v93)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_10059F01C(v9);
      v9 = result;
    }

    v85 = v9 + 16;
    v86 = *(v9 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v9[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10059ED4C((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v93);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_112;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_113;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_114;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 24 * v8 + 8);
      v12 = 24 * v10;
      v13 = *a3 + 24 * v10;
      v14 = v11 >> 14;
      v15 = *(v13 + 8) >> 14;
      v16 = v10 + 2;
      v17 = (v13 + 56);
      while (v6 != v16)
      {
        v18 = *v17;
        v17 += 3;
        v19 = (v14 < v15) ^ (v18 >> 14 >= v11 >> 14);
        ++v16;
        v11 = v18;
        if ((v19 & 1) == 0)
        {
          v8 = v16 - 1;
          if (v14 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v14 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v20 = 0;
        v21 = 24 * v8;
        v22 = v10;
        do
        {
          if (v22 != v8 + v20 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v23 = (v28 + v12);
            v24 = v28 + v21;
            v25 = *v23;
            v26 = *(v23 + 8);
            v27 = *(v24 - 24);
            *(v23 + 2) = *(v24 - 8);
            *v23 = v27;
            *(v24 - 24) = v25;
            *(v24 - 16) = v26;
          }

          ++v22;
          --v20;
          v21 -= 24;
          v12 += 24;
        }

        while (v22 < v8 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100498FCC(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v39 = *(v9 + 2);
    v38 = *(v9 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      result = sub_100498FCC((v38 > 1), v39 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v40;
    v41 = &v9[16 * v39];
    *(v41 + 4) = v10;
    *(v41 + 5) = v8;
    v42 = *v93;
    if (!*v93)
    {
      goto LABEL_125;
    }

    if (v39)
    {
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v9 + 4);
          v45 = *(v9 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_103;
          }

          v60 = &v9[16 * v40];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = &v9[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_110;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v70 = &v9[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_71:
        if (v65)
        {
          goto LABEL_105;
        }

        v73 = &v9[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_108;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_78:
        v81 = v43 - 1;
        if (v43 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v82 = *&v9[16 * v81 + 32];
        v83 = *&v9[16 * v43 + 40];
        sub_10059ED4C((*a3 + 24 * v82), (*a3 + 24 * *&v9[16 * v43 + 32]), *a3 + 24 * v83, v42);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10059F01C(v9);
        }

        if (v81 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v84 = &v9[16 * v81];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10059EF90(v43);
        v40 = *(v9 + 2);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v9[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_101;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_102;
      }

      v55 = &v9[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_104;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = &v9[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_111;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 24 * v8;
  v31 = v10 - v8;
LABEL_30:
  v32 = *(v29 + 24 * v8 + 8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >> 14 >= *(v34 - 16) >> 14)
    {
LABEL_29:
      ++v8;
      v30 += 24;
      --v31;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *v34;
    v36 = *(v34 + 16);
    *v34 = *(v34 - 24);
    *(v34 + 16) = *(v34 - 8);
    *(v34 - 16) = v32;
    *(v34 - 8) = v36;
    *(v34 - 24) = v35;
    v34 -= 24;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_10059ED4C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 1) >> 14 < *(v4 + 1) >> 14)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 2) >> 14 < *(v6 - 2) >> 14)
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_10059EF90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10059F01C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10059F0D0(__int16 a1, __int16 a2)
{
  if (HIBYTE(a1))
  {
    if (HIBYTE(a1) == 1)
    {
      if (HIBYTE(a2) == 1)
      {
        if (a1 == 5)
        {
          if (a2 == 5)
          {
            return 1;
          }
        }

        else if (a2 != 5 && a2 == a1)
        {
          return 1;
        }
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        if (HIBYTE(a2) == 2 && a2 == 1)
        {
          return 1;
        }
      }

      else if (HIBYTE(a2) == 2 && a2 == 2)
      {
        return 1;
      }
    }

    else if (HIBYTE(a2) == 2 && !a2)
    {
      return 1;
    }

    return 0;
  }

  if (HIBYTE(a2))
  {
    return 0;
  }

  v3 = a2;
  v4 = Library.Menu.Identifier.rawValue.getter(a1);
  v6 = v5;
  if (v4 == Library.Menu.Identifier.rawValue.getter(v3) && v6 == v7)
  {

    return 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v8 & 1;
  }
}

uint64_t sub_10059F220()
{
  v0._countAndFlagsBits = 0x7469617274726F50;
  v0._object = 0xE800000000000000;
  if (String.hasSuffix(_:)(v0))
  {

    return 1;
  }

  else
  {
    v2._object = 0x8000000100E50C90;
    v2._countAndFlagsBits = 0xD000000000000012;
    if (String.hasSuffix(_:)(v2))
    {

      return 2;
    }

    else
    {
      v3._countAndFlagsBits = 0x70616373646E614CLL;
      v3._object = 0xE900000000000065;
      if (String.hasSuffix(_:)(v3))
      {

        return 3;
      }

      else
      {
        v4._object = 0xED00007466654C65;
        v4._countAndFlagsBits = 0x70616373646E614CLL;
        if (String.hasSuffix(_:)(v4))
        {

          return 4;
        }

        else
        {
          v5._object = 0xEE00746867695265;
          v5._countAndFlagsBits = 0x70616373646E614CLL;
          v6 = String.hasSuffix(_:)(v5);

          if (v6)
          {
            return 3;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

uint64_t sub_10059F378(char *a1, char *a2)
{
  v4 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;

  if (!sub_10059E0E4(a1, a2))
  {
    result = static Library.Menu.Identifier.allCases.getter();
    v8 = result;
    v9 = *(result + 16);
    if (v9)
    {
      for (i = 0; v9 != i; ++i)
      {
        if (i >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 + i + 32);
        if (*(v8 + i + 32) <= 3u)
        {
          if (*(v8 + i + 32) > 1u)
          {
            if (v11 == 2)
            {
              v13 = 0xE700000000000000;
              v12 = 0x73747369747241;
            }

            else
            {
              if (v11 != 3)
              {
                continue;
              }

              v13 = 0xE600000000000000;
              v12 = 0x736D75626C41;
            }

            goto LABEL_26;
          }

          if (*(v8 + i + 32))
          {
            v12 = 0x7473696C79616C50;
LABEL_14:
            v13 = 0xE900000000000073;
            goto LABEL_26;
          }

          v12 = 0x796C746E65636552;
          v13 = 0xED00006465646441;
        }

        else
        {
          if (*(v8 + i + 32) <= 6u)
          {
            if (v11 == 4)
            {
              v13 = 0xE500000000000000;
              v12 = 0x73676E6F53;
            }

            else
            {
              if (v11 != 6)
              {
                continue;
              }

              v12 = 0x646956636973754DLL;
              v13 = 0xEB00000000736F65;
            }

            goto LABEL_26;
          }

          switch(v11)
          {
            case 7:
              v13 = 0xE600000000000000;
              v12 = 0x7365726E6547;
              break;
            case 8:
              v12 = 0x74616C69706D6F43;
              v13 = 0xEC000000736E6F69;
              break;
            case 9:
              v12 = 0x7265736F706D6F43;
              goto LABEL_14;
            default:
              continue;
          }
        }

LABEL_26:
        v33 = a1;
        v34 = a2;
        v31 = v12;
        v32 = v13;
        v14 = type metadata accessor for Locale();
        (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
        sub_100009838();
        StringProtocol.range<A>(of:options:range:locale:)();
        v16 = v15;
        sub_1000095E8(v6, &unk_101182EA0);

        if ((v16 & 1) == 0)
        {

          return v11;
        }
      }
    }
  }

  v33 = a1;
  v34 = a2;
  v31 = 0xD000000000000010;
  v32 = 0x8000000100E50C50;
  v17 = type metadata accessor for Locale();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 1, 1, v17);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v20 = v19;
  sub_1000095E8(v6, &unk_101182EA0);
  if (v20)
  {
    v33 = a1;
    v34 = a2;
    v31 = 0xD000000000000013;
    v32 = 0x8000000100E50C70;
    v18(v6, 1, 1, v17);
    StringProtocol.range<A>(of:options:range:locale:)();
    v22 = v21;
    sub_1000095E8(v6, &unk_101182EA0);
    if (v22)
    {
      v33 = a1;
      v34 = a2;
      v31 = 0x72616265646953;
      v32 = 0xE700000000000000;
      v18(v6, 1, 1, v17);
      StringProtocol.range<A>(of:options:range:locale:)();
      v24 = v23;
      sub_1000095E8(v6, &unk_101182EA0);
      if (v24)
      {
        v33 = a1;
        v34 = a2;
        v31 = 0x6979616C50776F4ELL;
        v32 = 0xEA0000000000676ELL;
        v18(v6, 1, 1, v17);
        StringProtocol.range<A>(of:options:range:locale:)();
        v26 = v25;
        sub_1000095E8(v6, &unk_101182EA0);
        if (v26)
        {

          return 65280;
        }

        else
        {
          v33 = a1;
          v34 = a2;
          v31 = 0x6575657551;
          v32 = 0xE500000000000000;
          v18(v6, 1, 1, v17);
          StringProtocol.range<A>(of:options:range:locale:)();
          v28 = v27;
          sub_1000095E8(v6, &unk_101182EA0);
          if (v28)
          {
            v33 = a1;
            v34 = a2;
            v31 = 0x73636972794CLL;
            v32 = 0xE600000000000000;
            v18(v6, 1, 1, v17);
            StringProtocol.range<A>(of:options:range:locale:)();
            v30 = v29;
            sub_1000095E8(v6, &unk_101182EA0);

            if (v30)
            {
              return 261;
            }

            else
            {
              return 257;
            }
          }

          else
          {

            return 258;
          }
        }
      }

      else
      {

        return 514;
      }
    }

    else
    {

      return 513;
    }
  }

  else
  {

    return 512;
  }
}

uint64_t sub_10059FAE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v70 = a2;
  v6 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v6 - 8);
  v64 = &v61 - v7;
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v66 = &v61 - v9;
  v10 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - v11;
  v13 = type metadata accessor for URL();
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  __chkstk_darwin(v13);
  v65 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v69 = &v61 - v16;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_opt_self() mainRunLoop];
  Date.init(timeIntervalSinceNow:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v18 + 8))(v20, v17);
  [v21 runUntilDate:isa];

  if (!a1)
  {
    goto LABEL_30;
  }

  v23 = [a1 connectedScenes];
  sub_100009F78(0, &qword_1011839F0);
  sub_100061F5C();
  v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v24);
  v26 = v25;

  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_27:

    goto LABEL_34;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_27;
  }

LABEL_4:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = sub_1007E90D4(0, v26);
    goto LABEL_7;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    goto LABEL_33;
  }

  v27 = *(v26 + 32);
LABEL_7:
  v28 = v27;

  v29 = [v28 delegate];

  if (!v29)
  {
    goto LABEL_32;
  }

  v71 = v29;
  sub_10010FC20(&unk_101184050);
  sub_10010FC20(&unk_101184EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!*(&v74 + 1))
  {
LABEL_33:
    sub_1000095E8(&v73, &unk_101184EA0);
    goto LABEL_34;
  }

  v30 = v13;
  v31 = *(*sub_10000954C(&v73, *(&v74 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&v73);
  v32 = v68;
  v33 = v69;
  if (v31)
  {
    if (a3)
    {

      static MusicUIPPT.destinationURLForTestName(_:)();
      if ((*(v32 + 48))(v12, 1, v13) == 1)
      {

        sub_1000095E8(v12, &qword_101183A20);
      }

      else
      {
        v34 = *(v32 + 32);
        v34(v33, v12, v30);
        v35 = *(v31 + 16);
        if (v35)
        {
          v36 = type metadata accessor for TaskPriority();
          v37 = 1;
          (*(*(v36 - 8) + 56))(v66, 1, 1, v36);
          (*(v32 + 16))(v65, v33, v30);
          type metadata accessor for MainActor();
          v64 = v30;

          swift_retain_n();

          v61 = static MainActor.shared.getter();
          v62 = a3;
          v38 = *(v32 + 80);
          v39 = v32;
          v63 = v34;
          v40 = (v38 + 40) & ~v38;
          v41 = (v14 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
          v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
          v43 = swift_allocObject();
          v43[2] = v61;
          v43[3] = &protocol witness table for MainActor;
          v43[4] = v35;
          v44 = v43 + v40;
          v45 = v64;
          v63(v44, v65, v64);
          v46 = (v43 + v41);
          v47 = v62;
          *v46 = v70;
          v46[1] = v47;
          *(v43 + v42) = v31;
          v48 = v66;
          *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
          sub_1001F4CB8(0, 0, v48, &unk_100ED56F0, v43);

          (*(v39 + 8))(v69, v45);
          return v37 & 1;
        }

        (*(v32 + 8))(v33, v30);
      }

      v49 = sub_100061BE0(v70, a3);
      if (v50 == 0xFF)
      {

        v37 = 0;
      }

      else
      {
        v51 = v49;
        v52 = v50;
        if (v50 == 2 && v49 == 3 && (*&v73 = v70, *(&v73 + 1) = a3, v71 = 0x7262694C6D6F7246, v72 = 0xEB00000000797261, v53 = type metadata accessor for Locale(), v54 = v64, (*(*(v53 - 8) + 56))(v64, 1, 1, v53), sub_100009838(), StringProtocol.range<A>(of:options:range:locale:)(), v56 = v55, sub_1000095E8(v54, &unk_101182EA0), (v56 & 1) == 0))
        {
          *&v73 = v70;
          *(&v73 + 1) = a3;

          String.removeSubrange(_:)();
          v58 = *(&v73 + 1);
          v57 = v73;
        }

        else
        {

          v57 = v70;
          v58 = a3;
        }

        v59 = sub_10059F378(v57, v58);
        v37 = sub_10059C1BC(v31, v70, a3, v51, v52 | (v59 << 8));
      }

      return v37 & 1;
    }

    goto LABEL_31;
  }

LABEL_34:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005A036C(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10002F3F4;

  return sub_10059B87C(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

unint64_t sub_1005A04D4()
{
  result = qword_1011A4850;
  if (!qword_1011A4850)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4850);
  }

  return result;
}

void sub_1005A05D8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 52);
  v2 = *(v0 + 56);
  v4 = String._bridgeToObjectiveC()();
  [v1 _performScrollTest:v4 iterations:1 delta:v3 length:v2];
}

uint64_t sub_1005A064C()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for PerformanceTest.Destination(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for PerformanceTest.Destination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1005A07E4(unsigned __int8 *a1)
{
  if (a1[1] <= 1u)
  {
    return a1[1];
  }

  else
  {
    return *a1 + 2;
  }
}

_BYTE *sub_1005A07FC(_BYTE *result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  result[1] = a2;
  return result;
}

__n128 sub_1005A0824(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1005A0838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_1005A0880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005A090C()
{
  result = qword_101196AA8;
  if (!qword_101196AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196AA8);
  }

  return result;
}

char *sub_1005A0994()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5Music19SidebarActivityView_activities] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC5Music19SidebarActivityView_spacing] = 0x4020000000000000;
  *&v0[OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground] = 0;
  *&v0[OBJC_IVAR____TtC5Music19SidebarActivityView_separatorView] = 0;
  v2 = OBJC_IVAR____TtC5Music19SidebarActivityView_viewObservers;
  *&v0[v2] = sub_10010D754(_swiftEmptyArrayStorage);
  v3 = OBJC_IVAR____TtC5Music19SidebarActivityView_activityViewsMap;
  *&v0[v3] = sub_10010D874(_swiftEmptyArrayStorage);
  v23.receiver = v0;
  v23.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v23, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];

  [v6 setDirectionalLayoutMargins:{20.0, 30.0, 15.0, 30.0}];
  v8 = [v6 traitCollection];

  v9 = UITraitCollection.supportedMaterials.getter();
  LOBYTE(v8) = sub_100042A50(1, v9);

  if ((v8 & 1) == 0)
  {
    v10 = [objc_opt_self() effectWithStyle:10];
    v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

    v12 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v13 = [v5 secondarySystemBackgroundColor];
    [v12 setBackgroundColor:v13];

    v14 = [v11 contentView];
    [v14 addSubview:v12];

    v15 = *&v6[OBJC_IVAR____TtC5Music19SidebarActivityView_separatorView];
    *&v6[OBJC_IVAR____TtC5Music19SidebarActivityView_separatorView] = v12;
    v16 = v12;

    v17 = *&v6[OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground];
    *&v6[OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground] = v11;
    v18 = v11;

    sub_100009F78(0, &qword_101181620);
    if (static NSObject.== infix(_:_:)())
    {

      v22.receiver = v6;
      v22.super_class = ObjectType;
      objc_msgSendSuper2(&v22, "addSubview:", v18);
    }

    else
    {
      v19 = [v18 contentView];
      [v19 addSubview:v18];

      v16 = v18;
    }
  }

  v20 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle:0];
  [v6 addInteraction:v20];

  return v6;
}