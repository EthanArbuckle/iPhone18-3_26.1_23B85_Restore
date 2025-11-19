uint64_t sub_100014B60(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1000347F4();
  v124 = *(v6 - 8);
  v7 = *(v124 + 64);
  __chkstk_darwin(v6);
  v123 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000345A4();
  v126 = *(v9 - 8);
  v127 = v9;
  v10 = v126[8];
  v11 = __chkstk_darwin(v9);
  v125 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v111 - v13;
  v15 = sub_100034874();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v111 - v21;
  sub_100034834();
  v23 = sub_100034854();
  v24 = sub_100034C64();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = a1;
    *(v25 + 12) = 2048;
    *(v25 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v23, v24, "didReceiveTapAt: %f, %f", v25, 0x16u);
  }

  v28 = *(v16 + 8);
  v27 = v16 + 8;
  v26 = v28;
  result = v28(v22, v15);
  v30 = (v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
  if (*(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration) == 2)
  {
    v115 = v26;
    v113 = v6;
    v116 = v20;
    v117 = v27;
    v118 = v15;
    v32 = v30[4];
    v31 = v30[5];
    v34 = v30[2];
    v33 = v30[3];
    v112 = (v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    v35 = v3;
    v36 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
    swift_beginAccess();
    v37 = v126;
    v38 = v14;
    v39 = v14;
    v40 = v127;
    v114 = v126[2];
    v114(v39, v35 + v36, v127);
    v119 = v33;
    v120 = v34;
    v121 = v32;
    v122 = v31;
    sub_1000053EC(v32);
    LOBYTE(v33) = sub_100034554();
    v41 = v37[1];
    v41(v38, v40);
    if ((v33 & 1) == 0)
    {
      v46 = v125;
      v114(v125, v35 + v36, v40);
      v47 = sub_100034544();
      v41(v46, v40);
      if (v47)
      {
        goto LABEL_9;
      }

      v48 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState;
      swift_beginAccess();
      v49 = v124;
      v50 = v123;
      v51 = v113;
      (*(v124 + 16))(v123, v35 + v48, v113);
      LOBYTE(v48) = sub_100034794();
      (*(v49 + 8))(v50, v51);
      if ((v48 & 1) == 0)
      {
LABEL_9:
        sub_100010D4C();
        v52 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive;
        v53 = v35;
        if (*(v35 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive) == 1)
        {
          v54 = CACurrentMediaTime();
          v55 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationStartTime;
          *&v54 = v54 - *(v35 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationStartTime);
          v56 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationTimeOffset;
          v57 = *(v35 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationTimeOffset) + *&v54;
          if (v57 <= 1.5)
          {
            v58 = v57;
          }

          else
          {
            v58 = 1.5;
          }

          result = sub_100012024();
          v59 = (v58 + 0.1) * 1000000000.0;
          if (COERCE_INT(fabs(v59)) > 2139095039)
          {
            __break(1u);
          }

          else if (v59 > -1.0)
          {
            if (v59 < 1.8447e19)
            {
              sub_100012658(v59);
              v60 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager;
              v61 = *(v35 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
              v62 = qword_100047130;
              v63 = off_100047138;

              v132._countAndFlagsBits = v62;
              v132._object = v63;
              sub_100034684(v132);

              v64 = *(v35 + v60);
              v65 = *(v35 + 16);

              v66 = v65;

              sub_1000346C4();

              *(v35 + v55) = CACurrentMediaTime();
              *(v35 + v56) = 1.5 - v58;
              v67 = *(v35 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_displayLink);

              sub_100034514();

              sub_1000054D4(v121);

              *(v35 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed) = (*(v35 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed) & 1) == 0;
              return result;
            }

            goto LABEL_44;
          }

          __break(1u);
LABEL_44:
          __break(1u);
          return result;
        }

        v68 = *(v35 + 24);
        v69 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista;
        v70 = *(v53 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista);
        v71 = &qword_100047000;
        if (v70 == 2 && (v72 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista, *(v53 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) == 2))
        {
          v73 = [*(v53 + 24) vistaView];
          v74 = [v73 spheroidAtPoint:{a1, a2}];

          if (!v74)
          {
LABEL_40:

            return sub_1000054D4(v121);
          }

          *(v53 + v72) = 2;
          v126 = v74;
          [v74 type];
          *(v53 + v69) = NUNIAstronomyVistaView_SpheroidTypeToVista();
          v125 = *v112;
          v124 = *(v112 + 8);
          v75 = v112[2];
          v76 = v112[3];
          v77 = v112[4];
          v78 = v112[5];
          v79 = (v53 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
          swift_beginAccess();
          v80 = v79[1];
          v123 = *v79;
          v118 = v79[2];
          v127 = v53;
          v81 = v79[3];
          v117 = v79[4];
          v116 = v79[5];
          v82 = v124;
          *v79 = v125;
          v79[1] = v82;
          v79[2] = v75;
          v79[3] = v76;
          v79[4] = v77;
          v79[5] = v78;
          v83 = v76;
          v84 = v75;
          sub_1000053EC(v77);
          v85 = v81;
          v53 = v127;
          sub_10001CAF4(v123, v80, v118, v85, v117);
          v87 = sub_10000A884();
          if (v86[2] != 1)
          {
            *v86 = *(v53 + v69);
          }

          (v87)(&v128, 0);
          v89 = sub_10000A884();
          v71 = &qword_100047000;
          v90 = v126;
          if (*(v88 + 16) != 1)
          {
            *(v88 + 8) = 0;
          }

          (v89)(&v128, 0);
        }

        else if ((*(v53 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed) & 1) == 0)
        {
          v91 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista;
          *(v53 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista) = *(v53 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista);
          *(v53 + v91) = v70;
        }

        if (UIAccessibilityIsReduceMotionEnabled())
        {
          if ([v68 mode])
          {
            [v68 applyMode:0];
          }

          v92.n128_u64[0] = 0;
          sub_1000139A8(1.0, v92, 0.0);
          if (*(v53 + v69) == 2)
          {
            *(v53 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) = 2;
            v93 = (v53 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
            swift_beginAccess();
            v94 = *v93;
            v95 = v93[1];
            v96 = v93[2];
            v97 = v93[3];
            v98 = v93[4];
            v99 = v93[5];
            *v93 = 0;
            v93[1] = 0;
            v93[2] = 1;
            v93[3] = 0;
            v93[4] = 0;
            v93[5] = 0;
            sub_10001CAF4(v94, v95, v96, v97, v98);
            [v68 setVista:2];
            v128 = sub_10000B0AC();
            v129 = v100;
            v130 = v101;
            v131 = v102;
            [v68 applyStyleDefinition:&v128];
            if (*(v53 + v69) == 2)
            {
              goto LABEL_35;
            }
          }

          [v68 setVista:?];
          v128 = sub_10000B0AC();
          v129 = v103;
          v130 = v104;
          v131 = v105;
          [v68 applyStyleDefinition:&v128];
          if (*(v53 + v69))
          {
LABEL_35:
            sub_100012658(200000000);
          }

          else
          {
            sub_1000136A4();
            sub_100013320(1);
          }
        }

        else
        {
          *(v53 + v52) = 1;
          v106 = *(v53 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
          v107 = *(v53 + 16);

          v108 = v107;

          sub_1000346C4();

          if ([v68 mode])
          {
            [v68 applyMode:0];
          }

          sub_100012024();
          sub_100012658(1600000000);
          *(v53 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationStartTime) = CACurrentMediaTime();
          *(v53 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationTimeOffset) = 0;
          *(v53 + v71[53]) = 0;
          v109 = *(v53 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_displayLink);

          sub_100034514();

          v110.n128_u64[0] = 0;
          sub_1000139A8(0.0, v110, 0.0);
        }

        goto LABEL_40;
      }
    }

    v42 = v116;
    sub_100034834();
    v43 = sub_100034854();
    v44 = sub_100034C64();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Tap received while transitioning.  Not performing tap animation", v45, 2u);

      sub_1000054D4(v121);
    }

    else
    {

      sub_1000054D4(v121);
    }

    return v115(v42, v118);
  }

  return result;
}

id sub_100015728()
{
  v1 = v0;
  v2 = sub_1000345A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100034874();
  *&v104 = *(v7 - 8);
  v8 = *(v104 + 64);
  __chkstk_darwin(v7);
  *&v103 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000035B0(&qword_1000478A8, &qword_100036B50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v95 - v12;
  v14 = sub_1000345B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + 16);
  sub_100034BF4();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100007DDC(v13, &qword_1000478A8, &qword_100036B50);
  }

  else
  {
    v98 = v7;
    v95 = v6;
    v96 = v3;
    v97 = v2;
    v101 = v15;
    v20 = *(v15 + 32);
    v102 = v14;
    v20(v18, v13, v14);
    v21 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    LODWORD(v106) = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v23 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v22 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
    v25 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v24 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
    v26 = *(v1 + 16);
    v107 = v22;
    v27 = v18;
    v28 = v1;
    v29 = v23;
    sub_1000053EC(v25);
    v30 = [objc_msgSend(v26 "environment")];
    swift_unknownObjectRelease();
    v31 = *(v28 + 16);
    v32 = sub_100009638(v31, v30);
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = v32;

    v113 = v21;
    v114 = v106;
    *v115 = *v112;
    *&v115[3] = *&v112[3];
    v116 = v23;
    v117 = v22;
    v118 = v25;
    v119 = v24;
    v120 = v34;
    v121 = v36;
    v122 = v38;
    v123 = v39;
    v106 = v29;
    v105 = v107;
    v107 = v24;
    sub_1000053EC(v25);
    v100 = v27;
    sub_100006128(v27);
    v41 = v40;
    v42 = v28;
    v43 = [*(v28 + 24) vistaView];
    [v43 removeBackBuffers];

    v44 = v103;
    sub_100034824();
    v45 = v41;
    v46 = sub_100034854();
    v47 = sub_100034C44();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v45;
      *v49 = v45;
      v50 = v45;
      _os_log_impl(&_mh_execute_header, v46, v47, "Taking snapshot for key: %@", v48, 0xCu);
      sub_100007DDC(v49, &unk_1000478C0, &unk_100036B60);
    }

    v99 = v45;

    (*(v104 + 8))(v44, v98);
    v51 = v42;
    v52 = sub_100016628();
    v108 = sub_10000B0AC();
    v109 = v53;
    v110 = v54;
    v111 = v55;
    [v52 applyStyleDefinition:&v108];
    v56 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
    v57 = v106;
    [v52 updateLocation:v106 fallbackLocation:v56 animated:0];

    v58 = v25;
    sub_1000054D4(v25);

    v59 = [v52 vistaView];
    [v59 updateSunLocationAnimated:0];

    v60 = *(v51 + 16);
    v61 = sub_10000B9F0();
    v62 = [objc_msgSend(v60 "environment")];
    swift_unknownObjectRelease();
    v63 = v102;
    v64 = v101;
    if (v62)
    {

      v65 = 0.0;
      v66 = v100;
    }

    else
    {
      v66 = v100;
      if (v61)
      {
        v67 = v95;
        sub_100034BE4();
        v68 = sub_100034584();

        (*(v96 + 8))(v67, v97);
        v65 = 0.0;
        if (v68)
        {
          v65 = 1.0;
        }
      }

      else
      {

        v65 = 0.0;
      }
    }

    [v52 setLocationDotAlpha:v65];
    v69 = [objc_msgSend(*(v51 + 16) "environment")];
    swift_unknownObjectRelease();
    v70 = 0.0;
    if ((v69 - 2) < 3)
    {
      v70 = flt_100036BEC[(v69 - 2)];
    }

    v71 = [v52 vistaView];
    v72 = [v71 scene];

    [v72 restingCameraRoll];
    v74 = v73;
    [v72 cameraPosition];
    v104 = v75;
    [v72 cameraTarget];
    v103 = v76;
    [v72 cameraUp];
    *&v77 = v70 + v74;
    [v72 setCamera:*&v104 target:*&v103 up:v78 roll:v77];
    [v72 updateCamera];
    v79 = *(v51 + 16);
    sub_100034C04();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;

    v88 = sub_1000056D8();
    if (v88)
    {
      v89 = v88;
      v90 = [objc_opt_self() mainScreen];
      [v90 scale];
      v92 = v91;

      v93 = [v89 snapshotInRect:v81 scale:v83 time:{v85, v87, v92, 0.0}];
      sub_1000054D4(v58);

      (*(v64 + 8))(v66, v63);
      return v93;
    }

    (*(v64 + 8))(v66, v63);

    sub_1000054D4(v58);
  }

  return 0;
}

void sub_100016074(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = [objc_allocWithZone(CALayer) init];
  [v11 setFrame:{a2, a3, a4, a5}];
  [v11 setCompositingFilter:kCAFilterDestOut];
  [v11 setOpaque:0];
  sub_1000035B0(&qword_100047990, &qword_100036B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000369A0;
  *(inited + 32) = 0x73746E65746E6F63;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  sub_10001BA8C(inited);
  swift_setDeallocating();
  sub_100007DDC(inited + 32, &qword_100047998, &qword_100036B78);
  sub_1000035B0(&qword_1000479A0, &qword_100036B80);
  isa = sub_100034914().super.isa;

  [v11 setActions:isa];

  sub_10001CCAC(a1, v24, &qword_100047C40, &qword_100036B58);
  v14 = v25;
  if (v25)
  {
    v15 = sub_1000054E4(v24, v25);
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    __chkstk_darwin(v15);
    v19 = &v24[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19);
    v20 = sub_100034EB4();
    (*(v16 + 8))(v19, v14);
    sub_1000026BC(v24);
  }

  else
  {
    v20 = 0;
  }

  [v11 setContents:v20];
  swift_unknownObjectRelease();
  v21 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotMaskLayer;
  [*(v5 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotMaskLayer) removeFromSuperlayer];
  v22 = *(v5 + v21);
  *(v5 + v21) = v11;
}

void sub_10001635C()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundImageView;
  v8 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundImageView);
  if (v8)
  {
    v9 = v8;
    sub_100034824();
    v10 = sub_100034854();
    v11 = sub_100034C44();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Removing background snapshot image view", v12, 2u);
    }

    (*(v3 + 8))(v6, v2);
    [v9 removeFromSuperview];

    v13 = *(v1 + v7);
    *(v1 + v7) = 0;
  }

  v14 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundDebugColorView;
  v15 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundDebugColorView);
  if (v15)
  {
    [v15 removeFromSuperview];
    v16 = *(v1 + v14);
    *(v1 + v14) = 0;
  }
}

id sub_100016500(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(v2 + *a2);
  if (v5)
  {
    v6 = v5;
    [v6 setImage:a1];
    return v6;
  }

  else
  {
    v8 = [objc_allocWithZone(UIImageView) initWithImage:a1];
    [v8 setOpaque:0];
    v9 = *(v2 + v4);
    *(v2 + v4) = v8;
    v10 = v8;

    return v10;
  }
}

void sub_10001659C()
{
  v1 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingImageView;
  v2 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingImageView);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingDebugColorView;
  v5 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingDebugColorView);
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *(v0 + v4);
    *(v0 + v4) = 0;
  }
}

id sub_100016628()
{
  v1 = sub_1000342C4();
  v155 = *(v1 - 8);
  v2 = *(v155 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v134 - v6;
  v8 = type metadata accessor for Geotime();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v157 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000035B0(&qword_1000479B0, &qword_100036B90);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = (&v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = &v134 - v16;
  v18 = sub_100034874();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  __chkstk_darwin(v21);
  v24 = &v134 - v23;
  v156 = v0;
  v25 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotVistaController);
  if (v25)
  {

    return v25;
  }

  v142 = v8;
  v147 = v15;
  v136 = v22;
  v139 = v5;
  v140 = v7;
  v153 = v1;
  v154 = v17;
  v149 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotVistaController;
  sub_100034824();
  v27 = sub_100034854();
  v28 = sub_100034C44();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v155;
  if (v29)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "creating snapshotVistaController", v31, 2u);
  }

  v32 = *(v19 + 8);
  v138 = v18;
  v137 = v19 + 8;
  v135 = v32;
  v32(v24, v18);
  v33 = v156;
  v34 = [objc_msgSend(*(v156 + 16) "environment")];
  swift_unknownObjectRelease();
  v35 = *(v33 + 16);
  v143 = sub_100009638(v35, v34);

  v152 = *(v33 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
  v165 = *(v33 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
  v164[0] = *(v33 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 9);
  *(v164 + 3) = *(v33 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 12);
  v36 = *(v33 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
  v37 = *(v33 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
  v38 = *(v33 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
  v39 = *(v33 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
  v166 = v37;
  v40 = *(v33 + 16);
  v41 = v36;
  v42 = v40;
  sub_10001CCAC(&v166, &aBlock, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v38);
  v43 = sub_100034C14();

  v44 = [*(v33 + 16) backgroundView];
  [v44 bounds];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  (*(v30 + 56))(v154, 1, 1, v153);
  v53 = v41;
  if (!v36)
  {
    v53 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v151 = v53;
  v141 = v165;
  v54 = swift_allocObject();
  v55 = v152;
  *(v54 + 16) = v152;
  *(v54 + 24) = v165;
  *(v54 + 25) = v164[0];
  *(v54 + 28) = *(v164 + 3);
  *(v54 + 32) = v36;
  *(v54 + 40) = v37;
  *(v54 + 48) = v38;
  *(v54 + 56) = v39;
  v150 = v43;
  *(v54 + 64) = v43 & 1;
  v146 = v41;
  sub_10001CCAC(&v166, &aBlock, &unk_1000481C0, &qword_100036F70);
  v148 = v39;
  sub_1000053EC(v38);
  v56 = sub_100007FF8();
  v57 = [objc_allocWithZone(NUNIAstronomyVistaView) initWithFrame:v56 configuration:{v46, v48, v50, v52}];

  v58 = objc_allocWithZone(NUNIScene);
  v162 = sub_10001CC6C;
  v163 = v54;
  aBlock = _NSConcreteStackBlock;
  v159 = 1107296256;
  v160 = sub_100033AE4;
  v161 = &unk_100041B70;
  v59 = _Block_copy(&aBlock);

  v60 = [v58 initWithSphereoids:16515070 currentDateBlock:v59];
  _Block_release(v59);

  [v60 setSnap:3];
  [v60 setBackgroundType:2];
  v144 = v60;
  [v57 setScene:v60];
  v61 = [objc_allocWithZone(NUNIAstronomyVistaController) initWithVistaView:v57];
  [v61 setIsBacklightTransitionEnabled:1];
  [v61 setActiveModeFrameInterval:1];
  [v61 setVista:v55];
  [v61 setVistaTransitionStyle:1];
  v62 = [v57 scene];
  v63 = [v62 currentDateBlock];

  v64 = v63[2](v63);
  v65 = v157;
  sub_100034324();

  _Block_release(v63);
  v66 = v151;
  *(v65 + *(v142 + 20)) = v151;
  v67 = v38;
  v68 = v141;
  v145 = v57;
  if ((v141 & 1) == 0)
  {
    v82 = v66;

    v71 = v153;
    v74 = v147;
    v72 = v150;
    v73 = v143;
    if (v152 != 2)
    {
      if (v152 != 3)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    goto LABEL_40;
  }

  v69 = sub_100034EC4();
  v70 = v66;

  v71 = v153;
  v72 = v150;
  v73 = v143;
  if ((v69 & 1) != 0 && v152 != 2)
  {
    v74 = v147;
    if (v152 != 3)
    {
LABEL_13:
      v75 = v154;
      if (qword_100046A40 != -1)
      {
        v128 = v73;
        swift_once();
        v73 = v128;
      }

      v76 = &dword_100046E38;
      v77 = &dword_100046E50;
      v78 = &qword_100046E48;
      v79 = &qword_100046E40;
      v80 = (v73 - 3) >= 2;
      v81 = &dword_100046E18;
LABEL_21:
      v83 = v81 + 6;
      v84 = (v81 + 4);
      if (v80)
      {
        v85 = (v81 + 2);
      }

      else
      {
        v81 = v76;
        v85 = v79;
      }

      if (v80)
      {
        v78 = v84;
      }

      if (v80)
      {
        v77 = v83;
      }

      v86 = *v77;
      v87 = *v78;
      v88 = *v85;
      v89 = *v81;
      sub_100009914(v68, v73);
      goto LABEL_49;
    }

LABEL_18:
    v75 = v154;
    if (qword_100046A48 != -1)
    {
      v127 = v73;
      swift_once();
      v73 = v127;
    }

    v76 = &dword_100046E78;
    v77 = &dword_100046E90;
    v78 = &qword_100046E88;
    v79 = &qword_100046E80;
    v80 = (v73 - 3) >= 2;
    v81 = &dword_100046E58;
    goto LABEL_21;
  }

  if (v152 <= 2)
  {
    v74 = v147;
    if (!v152)
    {
      if (qword_100046A80 != -1)
      {
        v131 = v143;
        swift_once();
        v73 = v131;
      }

      v75 = v154;
      if ((v73 - 3) < 2)
      {
        v94 = &dword_100046F78;
        goto LABEL_44;
      }

      v99 = &dword_100046F58;
      goto LABEL_47;
    }

    if (v152 == 1)
    {
      v126 = v143;
      sub_100009BF0(v157, v143);
      v73 = v126;
      v75 = v154;
      goto LABEL_48;
    }

    if (v152 != 2)
    {
      goto LABEL_70;
    }

LABEL_40:
    if (qword_100046A10 != -1)
    {
      v129 = v73;
      swift_once();
      v73 = v129;
    }

    v75 = v154;
    if ((v73 - 3) < 2)
    {
      v94 = &dword_100046D38;
      goto LABEL_44;
    }

    v99 = &dword_100046D18;
LABEL_47:
    v100 = v99[6];
    v101 = *(v99 + 1);
    v102 = *(v99 + 2);
    v103 = *v99;
    goto LABEL_48;
  }

  v74 = v147;
  if ((v152 - 4) >= 6)
  {
    if (v152 == 3)
    {
      if (qword_100046A08 != -1)
      {
        v133 = v143;
        swift_once();
        v73 = v133;
      }

      v75 = v154;
      if ((v73 - 3) < 2)
      {
        v94 = &dword_100046CF8;
        goto LABEL_44;
      }

      v99 = &dword_100046CD8;
      goto LABEL_47;
    }

LABEL_70:
    if (qword_100046A00 != -1)
    {
      v132 = v143;
      swift_once();
      v73 = v132;
    }

    v75 = v154;
    if ((v73 - 3) < 2)
    {
      v94 = &dword_100046CB8;
      goto LABEL_44;
    }

    v99 = &dword_100046C98;
    goto LABEL_47;
  }

  if (qword_100046A18 != -1)
  {
    v130 = v143;
    swift_once();
    v73 = v130;
  }

  v75 = v154;
  if ((v73 - 3) >= 2)
  {
    v99 = &dword_100046D58;
    goto LABEL_47;
  }

  v94 = &dword_100046D78;
LABEL_44:
  v95 = *v94;
  v96 = *(v94 + 1);
  v97 = *(v94 + 2);
  v98 = v94[6];
LABEL_48:
  sub_100009914(v68, v73);
  v90 = v104 * 1.1;
LABEL_49:
  *&aBlock = v90;
  v159 = v91;
  v160 = v92;
  LODWORD(v161) = v93;
  [v61 applyStyleDefinition:&aBlock];
  sub_10001CCAC(v75, v74, &qword_1000479B0, &qword_100036B90);
  v105 = v155;
  if ((*(v155 + 48))(v74, 1, v71) == 1)
  {
    sub_100007DDC(v74, &qword_1000479B0, &qword_100036B90);
  }

  else
  {
    v152 = v67;
    v106 = v140;
    (*(v105 + 32))(v140, v74, v71);
    sub_1000342A4(v107);
    v109 = v108;
    [v61 setCacheDirectory:v108];

    v110 = v136;
    sub_100034804();
    v111 = v139;
    (*(v105 + 16))(v139, v106, v71);
    v112 = sub_100034854();
    v113 = sub_100034C54();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v143 = v114;
      v147 = swift_slowAlloc();
      aBlock = v147;
      *v114 = 136315138;
      sub_10001CD14(&qword_1000479B8, &type metadata accessor for URL);
      LODWORD(v142) = v113;
      v115 = sub_100034EA4();
      v116 = v71;
      v118 = v117;
      v119 = *(v105 + 8);
      v119(v111, v116);
      v120 = sub_10001AF94(v115, v118, &aBlock);

      v121 = v143;
      *(v143 + 1) = v120;
      _os_log_impl(&_mh_execute_header, v112, v142, "Vista Controller created with asset directory: %s", v121, 0xCu);
      sub_1000026BC(v147);

      v135(v110, v138);
      v119(v106, v153);
    }

    else
    {

      v122 = *(v105 + 8);
      v122(v111, v71);
      v135(v110, v138);
      v122(v106, v71);
    }

    v75 = v154;
    v67 = v152;
    v66 = v151;
    v72 = v150;
  }

  [v61 disableCloudDataFetch:v72 & 1];
  if ([v61 mode] != 1)
  {
    [v61 applyMode:1];
  }

  [v61 updateLocation:0 fallbackLocation:v66 animated:0];
  v123 = [v61 vistaView];
  [v123 updateSunLocationAnimated:0];

  sub_10000A5B0(v157);
  sub_100007DDC(v75, &qword_1000479B0, &qword_100036B90);
  if ([v61 mode] != 1)
  {
    [v61 applyMode:1];
  }

  sub_100007DDC(&v166, &unk_1000481C0, &qword_100036F70);
  sub_1000054D4(v67);
  v124 = *(v156 + v149);
  *(v156 + v149) = v61;
  v125 = v61;

  return v125;
}

uint64_t sub_100017744()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationQueue);
      __chkstk_darwin(result);
      v5 = v4;
      sub_1000035B0(&unk_100047890, &unk_100036B40);
      sub_100034CA4();

      v6 = v11;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v1 + 16);
    sub_1000178A4(v6, v7);

    v8 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
    v9 = qword_100047100;
    v10 = off_100047108;

    v12._countAndFlagsBits = v9;
    v12._object = v10;
    sub_100034684(v12);
  }

  return result;
}

void sub_1000178A4(void *a1, void *a2)
{
  v3 = v2;
  v71 = a1;
  v5 = sub_100034874();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  v7 = __chkstk_darwin(v5);
  v69 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v64 - v9;
  v67 = sub_1000347F4();
  v66 = *(v67 - 8);
  v10 = *(v66 + 64);
  __chkstk_darwin(v67);
  v65 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000345A4();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v64 - v18;
  v20 = *(v3 + 16);
  *(v3 + 16) = a2;
  v21 = a2;

  v68 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager;
  v22 = *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);

  sub_1000346C4();

  v23 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  v24 = v13[2];
  v24(v19, v3 + v23, v12);
  LOBYTE(v22) = sub_100034554();
  v25 = v13[1];
  v25(v19, v12);
  if (v22)
  {
    goto LABEL_2;
  }

  v24(v17, v3 + v23, v12);
  v33 = sub_100034544();
  v25(v17, v12);
  if (v33)
  {
    goto LABEL_7;
  }

  v34 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState;
  swift_beginAccess();
  v35 = v66;
  v36 = v65;
  v37 = v67;
  (*(v66 + 16))(v65, v3 + v34, v67);
  LOBYTE(v34) = sub_100034794();
  (*(v35 + 8))(v36, v37);
  if (v34)
  {
LABEL_2:
    v26 = v70;
    sub_100034834();
    v27 = sub_100034854();
    v28 = sub_100034C64();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Received location update call but currently transitioning; queue location update", v29, 2u);
    }

    (*(v72 + 8))(v26, v73);
    v30 = *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_queuedLocationUpdate);
    v31 = v71;
    *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_queuedLocationUpdate) = v71;
    v32 = v31;
  }

  else
  {
LABEL_7:
    v38 = (v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    v39 = *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v40 = v71;
    *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16) = v71;
    v41 = v40;

    v42 = *(v38 + 8);
    v43 = v38[3];
    v44 = v38[4];
    v45 = v38[5];
    v77 = *v38;
    v78 = v42;
    v79 = v40;
    v80 = v43;
    v81 = v44;
    v82 = v45;
    v46 = v43;
    sub_1000053EC(v44);
    sub_10000CBDC(&v77);

    sub_1000054D4(v44);
    v47 = *(v3 + 24);
    v48 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
    [v47 updateLocation:v41 fallbackLocation:v48 animated:0];

    [*(v3 + 16) noteContentSignificantlyChanged];
    v49 = *(v3 + 16);
    LOBYTE(v48) = sub_100034C14();

    [v47 disableCloudDataFetch:v48 & 1];
    v50 = *(v3 + 16);
    LOBYTE(v48) = sub_100034BD4();

    if (v48)
    {
      sub_10000E8E4();
    }

    else
    {
      sub_10000F9CC();
    }

    v51 = [v47 vistaView];
    [v51 purgeUnused];

    v52 = *(v3 + v68);
    v53 = qword_100047100;
    v54 = off_100047108;

    v83._countAndFlagsBits = v53;
    v83._object = v54;
    sub_100034684(v83);

    v55 = v69;
    sub_100034834();

    v56 = sub_100034854();
    v57 = sub_100034C64();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v76 = v59;
      *v58 = 136315138;
      v60 = v38[2];
      if (v60)
      {
        v61 = v38[2];
      }

      else
      {
        v61 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
        v60 = 0;
      }

      v74 = 0;
      v75 = 0xE000000000000000;
      v62 = v60;
      [v61 coordinate];
      sub_100034BA4();
      v84._countAndFlagsBits = 44;
      v84._object = 0xE100000000000000;
      sub_100034A14(v84);
      [v61 coordinate];
      sub_100034BA4();

      v63 = sub_10001AF94(v74, v75, &v76);

      *(v58 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v56, v57, "Updated location to %s", v58, 0xCu);
      sub_1000026BC(v59);

      (*(v72 + 8))(v69, v73);
    }

    else
    {

      (*(v72 + 8))(v55, v73);
    }
  }
}

uint64_t sub_10001804C(uint64_t a1)
{
  v2 = sub_1000341E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1000341D4();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100018140()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    sub_1000178A4(0, v2);

    v3 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
    v4 = qword_100047100;
    v5 = off_100047108;

    v6._countAndFlagsBits = v4;
    v6._object = v5;
    sub_100034684(v6);
  }

  return result;
}

uint64_t sub_100018200(void *a1, __n128 a2, float a3, float a4, uint64_t a5, float32x2_t *a6, float32x2_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *&v90 = a10;
  v91 = a2;
  v88 = sub_1000345C4();
  v21 = *(v88 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v88);
  v24 = &v81.i8[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    v85 = v21;
    v86 = a8;
    v87 = a11;
    v89 = a13;
    v27 = &a6[2];
    v28 = &a7[2];
    if (*(result + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive) == 1)
    {
      sub_1000139A8(a4, v91, a3);
    }

    else
    {
      v84 = a12;
      swift_beginAccess();
      v29 = a6[3];
      swift_beginAccess();
      [a1 setCameraOffset:{COERCE_DOUBLE(vmla_n_f32(v29, vsub_f32(a7[3], v29), v91.n128_f32[0]))}];
      if ((v90 & 0x10100000000) == 0)
      {
        v30 = *&v90;
        swift_beginAccess();
        v31 = *v27 + (a3 * ((*v27 * v30) - *v27));
        swift_beginAccess();
        *v27 = v31;
      }

      v32 = vdup_lane_s32(v91.n128_u64[0], 0);
      v33 = v89;
      if ((v89 & 0x10100000000) == 0)
      {
        swift_beginAccess();
        v34 = *v28 + (v91.n128_f32[0] * ((*v28 * *&v33) - *v28));
        swift_beginAccess();
        *v28 = v34;
      }

      v35 = v33 & 0x10000000000;
      v36 = *&v84;
      v83 = v35 | v84 & &_mh_execute_header;
      v82 = v90 & 0x10000000000 | a9 & &_mh_execute_header;
      swift_beginAccess();
      v37 = a6[2].f32[0];
      swift_beginAccess();
      *&v38 = v37 + (v91.n128_f32[0] * (a7[2].f32[0] - v37));
      [a1 setCameraOrbit:v38];
      swift_beginAccess();
      v39 = a6[4];
      swift_beginAccess();
      v40 = a7[4];
      v42 = CLLocationCoordinate2DMake(0.0, 0.0);
      *v41.i64 = v42.longitude;
      v43.i64[0] = *(v26 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      v44.i64[0] = 1;
      v41.i64[1] = *&v42.latitude;
      __asm { FMOV            V0.2S, #-15.0 }

      v81 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v43, v44).i64[0], 0), v41, vcvtq_f64_f32(vmul_f32(vmla_f32(v39, vsub_f32(v40, v39), v32), _D0)));
      v50 = *&a9;
      if (v82)
      {
        v50 = 0.0;
      }

      v51 = v36;
      if (v83)
      {
        v51 = 0.0;
      }

      CLLocationCoordinate2DMake(0.0, (((a3 * v50) + 0.0) + (v91.n128_f32[0] * (v51 - ((a3 * v50) + 0.0)))));
      NUNIAstronomyAddLocationCoordinates();
      [a1 setOffsetCoordinate:*&v81];
    }

    v52 = [a1 spheroidOfType:3];
    if (v52)
    {
      v53 = v52;
      swift_beginAccess();
      v54 = a6[5].f32[0];
      swift_beginAccess();
      *&v55 = sub_10001D128(v54, a7[5].f32[0], v91.n128_f32[0]);
      [v53 setCloudOpacity:v55];
    }

    if (sub_10000B9F0())
    {
      if ([*(v26 + 24) forceDisableLocationDot])
      {
        v56 = v85;
      }

      else
      {
        v59 = *(v26 + 16);
        v60 = sub_100034C14();

        v56 = v85;
        if ((v60 & 1) == 0)
        {
          sub_10000B9F0();
        }
      }

      v61 = enum case for TimingFunction.easeOutExpo(_:);
      v62 = *(v56 + 104);
      v63 = v88;
      v62(v24, enum case for TimingFunction.easeOutExpo(_:), v88);
      sub_100034974();
      v64 = *(v56 + 8);
      v64(v24, v63);
      CLKInterpolateBetweenFloatsClipped();
      *&v65 = v65;
      [a1 setLocationDotAlpha:v65];
      v62(v24, v61, v63);
      sub_100034974();
      v64(v24, v63);
      CLKInterpolateBetweenFloatsClipped();
      v57 = v58;
    }

    else
    {
      v57 = 0.0;
      [a1 setLocationDotAlpha:0.0];
    }

    v67 = *&v86;
    v66 = *&v87;
    v68 = v89 & 0x10000000000 | v87 & &_mh_execute_header;
    v69 = v90 & 0x10000000000 | v86 & &_mh_execute_header;
    *&v58 = v57;
    [a1 setLocationDotPulseOverrideAlpha:v58];
    if (v69)
    {
      v70 = 0.0;
    }

    else
    {
      v70 = v67;
    }

    if (v68)
    {
      v71 = 0.0;
    }

    else
    {
      v71 = v66;
    }

    v72 = *(v26 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator);

    v73 = sub_100034714();

    v74 = 0.0;
    if ((v73 - 2) <= 2)
    {
      v74 = flt_100036BEC[v73 - 2];
    }

    [a1 restingCameraRoll];
    v76 = (((a3 * v70) + 0.0) + (v91.n128_f32[0] * (v71 - ((a3 * v70) + 0.0)))) + (v74 + v75);
    [a1 cameraPosition];
    v91 = v77;
    [a1 cameraTarget];
    v90 = v78;
    [a1 cameraUp];
    *&v79 = v76;
    [a1 setCamera:v91.n128_f64[0] target:*&v90 up:v80 roll:v79];
  }

  return result;
}

void sub_10001889C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v240 = a3;
  v7 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v228 = &v219 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v224 = &v219 - v11;
  *&v238 = sub_100034354();
  v227 = *(v238 - 8);
  v12 = *(v227 + 64);
  v13 = __chkstk_darwin(v238 - 8);
  v229 = &v219 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v225 = &v219 - v15;
  v237 = type metadata accessor for Geotime();
  v16 = *(*(v237 - 1) + 64);
  v17 = __chkstk_darwin(v237);
  v19 = &v219 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v226 = &v219 - v20;
  v21 = sub_1000345A4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v232 = &v219 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v231 = &v219 - v26;
  v235 = sub_100034874();
  v27 = *(v235 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v235);
  v30 = &v219 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034834();
  v31 = sub_100034854();
  v32 = sub_100034C64();
  v33 = os_log_type_enabled(v31, v32);
  *&v239 = v4;
  *&v236 = a1;
  v230 = v19;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v241 = swift_slowAlloc();
    *v34 = 134218498;
    *(v34 + 4) = v240.n128_f32[0];
    *(v34 + 12) = 2080;
    v35 = sub_100034CD4();
    v234 = v21;
    v37 = v22;
    v38 = sub_10001AF94(v35, v36, &v241);

    *(v34 + 14) = v38;
    *(v34 + 22) = 2080;
    v39 = sub_100034CD4();
    v41 = sub_10001AF94(v39, v40, &v241);
    v21 = v234;

    *(v34 + 24) = v41;
    v22 = v37;
    a1 = v236;
    _os_log_impl(&_mh_execute_header, v31, v32, "Renderer rotating: %f from: %s to: %s", v34, 0x20u);
    swift_arrayDestroy();
    v4 = v239;
  }

  (*(v27 + 8))(v30, v235);
  v42 = 0.0;
  v43 = 0.0;
  if ((a1 - 2) <= 2)
  {
    v43 = flt_100036BEC[a1 - 2];
  }

  if ((a2 - 2) <= 2)
  {
    v42 = flt_100036BEC[a2 - 2];
  }

  v44 = vabds_f32(v43, v42);
  if (v44 == 3.1416)
  {
    if (v43 < v42)
    {
      v42 = v42 + -6.2832;
    }
  }

  else if (v44 > 3.1416)
  {
    if (v43 >= v42)
    {
      v45 = -6.2832;
    }

    else
    {
      v45 = 6.2832;
    }

    v43 = v43 + v45;
  }

  v46 = [*(v4 + 24) vistaView];
  v47 = [v46 scene];

  v48 = (v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationStartEnvironment);
  if (*(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationStartEnvironment + 24))
  {
    v49 = *(v4 + 16);
    *&v233 = sub_100009638(v49, v236);
  }

  else
  {
    *&v233 = *(v48 + 2);
    v50 = *v48;
    v51 = v48[1];
    v52 = v48[2];
  }

  v53 = *(v4 + 16);
  v234 = sub_100009638(v53, a2);

  v54 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  v55 = v231;
  (*(v22 + 16))(v231, v4 + v54, v21);
  v56 = v232;
  sub_100034574();
  LOBYTE(v53) = sub_100034564();
  v57 = *(v22 + 8);
  v57(v56, v21);
  v57(v55, v21);
  v235 = v47;
  if ((v53 & 1) != 0 || UIAccessibilityIsReduceMotionEnabled())
  {
    v58 = (v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
    swift_beginAccess();
    v59 = *v58;
    v60 = v58[1];
    v61 = v58[2];
    v62 = v58[3];
    v64 = v58[4];
    v63 = v58[5];
    if (v61 == 1)
    {
      v220 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      LODWORD(v232) = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
      v65 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
      v67 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
      v66 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
      v223 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
      v68 = v223;
      *&v236 = v65;
      v69 = v65;
      sub_1000053EC(v67);
    }

    else
    {
      v220 = *v58;
      LODWORD(v232) = v60;
      *&v236 = v61;
      v223 = v62;
      v67 = v64;
      v66 = v63;
    }

    v222 = v67;
    v221 = v66;
    if (v67)
    {
      sub_10001BC90(v59, v60, v61, v62, v64);
      v70 = v224;
      v67();
      v71 = v227;
      v72 = *(v227 + 56);
      v73 = v238;
      (v72)(v70, 0, 1, v238);
      v74 = v225;
      (*(v71 + 32))(v225, v70, v73);
      v75 = v226;
    }

    else
    {
      v76 = v227;
      v77 = v224;
      v73 = v238;
      v231 = *(v227 + 56);
      (v231)(v224, 1, 1, v238);
      v78 = v60;
      v71 = v76;
      sub_10001BC90(v59, v78, v61, v62, v64);
      v74 = v225;
      sub_100034334();
      if ((*(v76 + 48))(v77, 1, v73) != 1)
      {
        sub_100007DDC(v77, &unk_100048480, &qword_100036730);
      }

      v75 = v226;
      v72 = v231;
    }

    v79 = v232;
    v80 = v236;
    if (!v236)
    {
      v80 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
    }

    v81 = *(v71 + 32);
    v81(v75, v74, v73);
    *(v75 + v237[5]) = v80;
    v232 = (v71 + 32);
    v231 = v81;
    if (v220 <= 2)
    {
      v82 = v222;
      if (v220)
      {
        if (v220 == 1)
        {
          if (v79)
          {
            v84 = v236;
            v125 = v233;
            sub_100009BF0(v75, v233);
            v85 = v125;
            goto LABEL_73;
          }
        }

        else if (v220 == 2)
        {
          v87 = qword_100046A10;
          v84 = v236;
          if (v87 != -1)
          {
            swift_once();
          }

          v85 = v233;
          if ((v233 - 3) < 2)
          {
            v86 = &dword_100046D38;
            goto LABEL_67;
          }

          v99 = &dword_100046D18;
LABEL_72:
          v131 = v99[6];
          v132 = *(v99 + 1);
          v133 = *(v99 + 2);
          v134 = *v99;
LABEL_73:
          v135 = v223;
          sub_100009914(v79 & 1, v85);
          v101 = v136;
          v236 = v137;
          v104 = v138;
          sub_10000A5B0(v75);

          sub_1000054D4(v82);
          v139 = *v58;
          v140 = v58[1];
          v142 = v58[2];
          v141 = v58[3];
          v144 = v58[4];
          v143 = v58[5];
          if (v142 == 1)
          {
            v224 = *(v239 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
            LODWORD(v223) = *(v239 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
            v227 = v144;
            v145 = v140;
            v146 = v139;
            v147 = v141;
            v148 = *(v239 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
            v149 = v71;
            v150 = v72;
            v151 = *(v239 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
            v152 = *(v239 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
            *&v233 = *(v239 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
            v153 = v233;
            v225 = v148;
            v154 = v148;
            v141 = v147;
            v139 = v146;
            v140 = v145;
            v144 = v227;
            v226 = v152;
            v72 = v150;
            v71 = v149;
            v155 = v223;
            sub_1000053EC(v151);
          }

          else
          {
            v224 = v139;
            v155 = v140;
            v225 = v142;
            *&v233 = v141;
            v151 = v144;
            v226 = v143;
          }

          v227 = v151;
          if (v151)
          {
            sub_10001BC90(v139, v140, v142, v141, v144);
            v156 = v228;
            v151();
            v157 = v238;
            (v72)(v156, 0, 1, v238);
            v158 = v229;
            v159 = v156;
            v160 = v231;
            (v231)(v229, v159, v157);
          }

          else
          {
            v161 = v228;
            v162 = v72;
            v163 = v71;
            v157 = v238;
            (v162)(v228, 1, 1, v238);
            sub_10001BC90(v139, v140, v142, v141, v144);
            v158 = v229;
            sub_100034334();
            v164 = (*(v163 + 48))(v161, 1, v157);
            v160 = v231;
            if (v164 != 1)
            {
              sub_100007DDC(v161, &unk_100048480, &qword_100036730);
            }
          }

          v121 = v239;
          v165 = v230;
          v166 = v225;
          if (v225)
          {
            v167 = v225;
          }

          else
          {
            v167 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
          }

          (v160)(v165, v158, v157);
          *(v165 + v237[5]) = v167;
          if (v224 <= 2)
          {
            if (v224)
            {
              if (v224 == 1)
              {
                if (v155)
                {
                  v169 = v166;
                  v177 = v234;
                  sub_100009BF0(v165, v234);
                  v170 = v177;
                  v122 = v235;
                  v171 = v233;
LABEL_119:
                  sub_100009914(v155 & 1, v170);
                  v116 = v187;
                  v238 = v188;
                  v119 = v189;
                  sub_10000A5B0(v165);

                  sub_1000054D4(v227);
                  goto LABEL_120;
                }
              }

              else if (v224 == 2)
              {
                v173 = qword_100046A10;
                v169 = v166;
                if (v173 != -1)
                {
                  swift_once();
                }

                v170 = v234;
                v122 = v235;
                v171 = v233;
                if ((v234 - 3) < 2)
                {
                  v172 = &dword_100046D38;
                  goto LABEL_113;
                }

                v174 = &dword_100046D18;
LABEL_118:
                v183 = v174[6];
                v184 = *(v174 + 1);
                v185 = *(v174 + 2);
                v186 = *v174;
                goto LABEL_119;
              }
            }

            else if (v155)
            {
              v176 = qword_100046A80;
              v169 = v166;
              if (v176 != -1)
              {
                swift_once();
              }

              v170 = v234;
              v122 = v235;
              v171 = v233;
              if ((v234 - 3) < 2)
              {
                v172 = &dword_100046F78;
                goto LABEL_113;
              }

              v174 = &dword_100046F58;
              goto LABEL_118;
            }
          }

          else
          {
            if ((v224 - 4) < 6)
            {
              v168 = qword_100046A18;
              v169 = v166;
              if (v168 != -1)
              {
                swift_once();
              }

              v170 = v234;
              v122 = v235;
              v171 = v233;
              if ((v234 - 3) < 2)
              {
                v172 = &dword_100046D78;
LABEL_113:
                v179 = *v172;
                v180 = *(v172 + 1);
                v181 = *(v172 + 2);
                v182 = v172[6];
                goto LABEL_119;
              }

              v174 = &dword_100046D58;
              goto LABEL_118;
            }

            if (v224 == 3)
            {
              v175 = qword_100046A08;
              v169 = v166;
              if (v175 != -1)
              {
                swift_once();
              }

              v170 = v234;
              v122 = v235;
              v171 = v233;
              if ((v234 - 3) < 2)
              {
                v172 = &dword_100046CF8;
                goto LABEL_113;
              }

              v174 = &dword_100046CD8;
              goto LABEL_118;
            }
          }

          v178 = qword_100046A00;
          v169 = v166;
          if (v178 != -1)
          {
            swift_once();
          }

          v170 = v234;
          v122 = v235;
          v171 = v233;
          if ((v234 - 3) < 2)
          {
            v172 = &dword_100046CB8;
            goto LABEL_113;
          }

          v174 = &dword_100046C98;
          goto LABEL_118;
        }
      }

      else if (v79)
      {
        v124 = qword_100046A80;
        v84 = v236;
        if (v124 != -1)
        {
          swift_once();
        }

        v85 = v233;
        if ((v233 - 3) < 2)
        {
          v86 = &dword_100046F78;
          goto LABEL_67;
        }

        v99 = &dword_100046F58;
        goto LABEL_72;
      }
    }

    else
    {
      v82 = v222;
      if ((v220 - 4) < 6)
      {
        v83 = qword_100046A18;
        v84 = v236;
        if (v83 != -1)
        {
          swift_once();
        }

        v85 = v233;
        if ((v233 - 3) < 2)
        {
          v86 = &dword_100046D78;
LABEL_67:
          v127 = *v86;
          v128 = *(v86 + 1);
          v129 = *(v86 + 2);
          v130 = v86[6];
          goto LABEL_73;
        }

        v99 = &dword_100046D58;
        goto LABEL_72;
      }

      if (v220 == 3)
      {
        v123 = qword_100046A08;
        v84 = v236;
        if (v123 != -1)
        {
          swift_once();
        }

        v85 = v233;
        if ((v233 - 3) < 2)
        {
          v86 = &dword_100046CF8;
          goto LABEL_67;
        }

        v99 = &dword_100046CD8;
        goto LABEL_72;
      }
    }

    v126 = qword_100046A00;
    v84 = v236;
    if (v126 != -1)
    {
      swift_once();
    }

    v85 = v233;
    if ((v233 - 3) < 2)
    {
      v86 = &dword_100046CB8;
      goto LABEL_67;
    }

    v99 = &dword_100046C98;
    goto LABEL_72;
  }

  v88 = (v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[1];
  v91 = v88[2];
  v92 = v88[3];
  v93 = v88[4];
  v94 = v88[5];
  if (v91 == 1)
  {
    v95 = v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
    v237 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    LODWORD(v236) = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v96 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v97 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v98 = *(v95 + 40);
    *&v238 = *(v95 + 24);
    v232 = v96;
    sub_1000053EC(v97);
  }

  else
  {
    *&v238 = v88[3];
    v232 = v91;
    v237 = v89;
    LODWORD(v236) = v90;
    v96 = v91;
    v97 = v93;
    v98 = v94;
  }

  sub_10001BC90(v89, v90, v91, v92, v93);
  sub_100009EC0(v237, v236 & 1, v96, v97, v98, v233);
  v101 = v100;
  v236 = v102;
  v104 = v103;

  sub_1000054D4(v97);
  v105 = *v88;
  v106 = v88[1];
  v107 = v88[2];
  v108 = v88[3];
  v109 = v88[4];
  v110 = v88[5];
  if (v107 == 1)
  {
    *&v238 = *(v239 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    v111 = *(v239 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v112 = *(v239 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v113 = *(v239 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v114 = *(v239 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
    v237 = *(v239 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
    *&v233 = v112;
    sub_1000053EC(v113);
  }

  else
  {
    v237 = v88[3];
    *&v233 = v107;
    *&v238 = v105;
    v111 = v106;
    v112 = v107;
    v113 = v109;
    v114 = v110;
  }

  sub_10001BC90(v105, v106, v107, v108, v109);
  sub_100009EC0(v238, v111 & 1, v112, v113, v114, v234);
  v116 = v115;
  v238 = v117;
  v119 = v118;

  sub_1000054D4(v113);
  v121 = v239;
  v122 = v235;
LABEL_120:
  *&v120 = v101 + (v240.n128_f32[0] * (v116 - v101));
  [v122 setCameraOrbit:v120];
  *&v190 = vceqz_f32(*&v236);
  if ((vpmin_u32(*&v190, *&v190).u32[0] & 0x80000000) != 0 || (v191 = vceqz_f32(*&v238), (vpmin_u32(v191, v191).u32[0] & 0x80000000) != 0) || (vceq_f32(*&v236, *&v238).u8[0] & 1) != 0 || (v192 = *(&v236 + 1), v193 = *(&v238 + 1), *(&v236 + 1) == *(&v238 + 1)))
  {
    v194 = vmla_n_f32(*&v236, vsub_f32(*&v238, *&v236), v240.n128_f32[0]);
  }

  else
  {
    *&v239 = v42;
    *&v190 = vmul_f32(*&v236, *&v236);
    v208 = vadd_f32(*&v190, vdup_lane_s32(*&v190, 1)).u32[0];
    v209 = vmul_f32(*&v238, *&v238);
    LODWORD(v237) = sqrtf(vaddv_f32(*&v190));
    *&v190 = vadd_f32(v209, vdup_lane_s32(v209, 1));
    v233 = v190;
    LODWORD(v234) = sqrtf(vaddv_f32(v209));
    v210 = vrsqrte_f32(v208);
    v211 = vmul_f32(v210, vrsqrts_f32(v208, vmul_f32(v210, v210)));
    v212 = acosf(fminf(fmaxf(vmul_f32(*&v236, vmul_f32(v211, vrsqrts_f32(v208, vmul_f32(v211, v211)))).f32[0], -1.0), 1.0));
    if (v192 >= 0.0)
    {
      v213 = v212;
    }

    else
    {
      v213 = 6.2832 - v212;
    }

    v214 = vrsqrte_f32(v233);
    v215 = vmul_f32(v214, vrsqrts_f32(v233, vmul_f32(v214, v214)));
    v216 = acosf(fminf(fmaxf(vmul_f32(*&v238, vmul_f32(v215, vrsqrts_f32(v233, vmul_f32(v215, v215)))).f32[0], -1.0), 1.0));
    if (v193 < 0.0)
    {
      v216 = 6.2832 - v216;
    }

    if ((v216 - v213) >= 3.1406)
    {
      v213 = v213 + 6.2832;
    }

    else if ((v213 - v216) > 3.1426)
    {
      v216 = v216 + 6.2832;
    }

    v42 = *&v239;
    *&v217 = *&v237 + (v240.n128_f32[0] * (*&v234 - *&v237));
    v239 = v217;
    v218 = __sincosf_stret(v213 + (v240.n128_f32[0] * (v216 - v213)));
    v194 = vmul_n_f32(__PAIR64__(LODWORD(v218.__sinval), LODWORD(v218.__cosval)), *&v239);
  }

  [v122 setCameraOffset:*&v194];
  *&v195 = *&CLLocationCoordinate2DMake(0.0, 0.0);
  if (*(v121 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration) == 1)
  {
    v196.f64[1] = v195;
  }

  else
  {
    __asm { FMOV            V0.2S, #-15.0 }

    v196 = vcvtq_f64_f32(vmul_f32(vmla_n_f32(v104, vsub_f32(v119, v104), v240.n128_f32[0]), _D0));
  }

  [v122 setOffsetCoordinate:v196.f64[1]];
  [v122 restingCameraRoll];
  v203 = v202;
  [v122 cameraPosition];
  v239 = v204;
  [v122 cameraTarget];
  v238 = v205;
  [v122 cameraUp];
  *&v206 = (v43 + (v240.n128_f32[0] * (v42 - v43))) + v203;
  [v122 setCamera:*&v239 target:*&v238 up:v207 roll:v206];
  [v122 updateCamera];
}

void sub_100019F98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v142 = &v127 - v6;
  v7 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v138 = &v127 - v9;
  v140 = sub_100034354();
  *&v145 = *(v140 - 8);
  v10 = *(v145 + 64);
  __chkstk_darwin(v140);
  v144 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for Geotime();
  v12 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139);
  v141 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000345A4();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v147 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v127 - v19;
  v21 = sub_100034874();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v26 = sub_100034854();
  v27 = sub_100034C64();
  v28 = os_log_type_enabled(v26, v27);
  v148 = v14;
  *&v149 = a1;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v146 = v21;
    v30 = v29;
    v31 = swift_slowAlloc();
    v143 = v22;
    v32 = v31;
    v150 = v31;
    *v30 = 136315138;
    v33 = sub_100034CD4();
    v35 = v20;
    v36 = v15;
    v37 = v2;
    v38 = sub_10001AF94(v33, v34, &v150);
    v14 = v148;

    *(v30 + 4) = v38;
    v2 = v37;
    v15 = v36;
    v20 = v35;
    a1 = v149;
    _os_log_impl(&_mh_execute_header, v26, v27, "Renderer didRotate: %s", v30, 0xCu);
    sub_1000026BC(v32);

    (v143)[1](v25, v146);
  }

  else
  {

    (*(v22 + 8))(v25, v21);
  }

  v39 = 0.0;
  if ((a1 - 2) <= 2)
  {
    v39 = flt_100036BEC[a1 - 2];
  }

  v40 = [*(v2 + 24) vistaView];
  v143 = [v40 scene];

  v41 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  v42 = v15[2];
  v42(v20, v2 + v41, v14);
  v43 = v147;
  sub_100034574();
  LOBYTE(v40) = sub_100034564();
  v44 = v15[1];
  v44(v43, v14);
  v147 = v44;
  v44(v20, v14);
  v146 = v15 + 1;
  if ((v40 & 1) == 0)
  {
    *&v61 = sub_10000A8E8();
    v63 = v62;
    v65 = v64;
    v66 = v143;
    goto LABEL_55;
  }

  v131 = v42;
  v132 = v15 + 2;
  v133 = v41;
  v134 = v20;
  v45 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator);

  v46 = sub_100034714();

  v47 = *(v2 + 16);
  v130 = sub_100009638(v47, v46);

  v48 = (v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  swift_beginAccess();
  v49 = *v48;
  v50 = v48[1];
  v52 = v48[2];
  v51 = v48[3];
  v54 = v48[4];
  v53 = v48[5];
  v135 = v2;
  if (v52 == 1)
  {
    v127 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    v136 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v56 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v55 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
    v57 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v58 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
    v59 = v55;
    v128 = v56;
    v60 = v56;
    v137 = v58;
    sub_1000053EC(v57);
  }

  else
  {
    v127 = v49;
    v136 = v50;
    v128 = v52;
    v55 = v51;
    v57 = v54;
    v137 = v53;
  }

  v66 = v143;
  v143 = v55;
  v67 = v138;
  v129 = v57;
  if (v57)
  {
    sub_10001BC90(v49, v50, v52, v51, v54);
    v57();
    v68 = v145;
    v69 = v140;
    (*(v145 + 56))(v67, 0, 1, v140);
    (*(v68 + 32))(v144, v67, v69);
  }

  else
  {
    v70 = v145;
    v69 = v140;
    (*(v145 + 56))(v138, 1, 1, v140);
    sub_10001BC90(v49, v50, v52, v51, v54);
    sub_100034334();
    if ((*(v70 + 48))(v67, 1, v69) != 1)
    {
      sub_100007DDC(v67, &unk_100048480, &qword_100036730);
    }
  }

  v71 = v141;
  v42 = v131;
  v72 = v128;
  if (v128)
  {
    v73 = v128;
  }

  else
  {
    v73 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v20 = v134;
  (*(v145 + 32))(v71, v144, v69);
  *(v71 + *(v139 + 20)) = v73;
  if (v127 > 2)
  {
    if ((v127 - 4) < 6)
    {
      v74 = qword_100046A18;
      v75 = v72;
      if (v74 != -1)
      {
        swift_once();
      }

      v76 = v130;
      v2 = v135;
      v14 = v148;
      v77 = v143;
      if ((v130 - 3) < 2)
      {
        v78 = &dword_100046D78;
LABEL_48:
        v85 = *v78;
        v86 = *(v78 + 1);
        v87 = *(v78 + 2);
        v88 = v78[6];
        goto LABEL_54;
      }

      v80 = &dword_100046D58;
      goto LABEL_53;
    }

    if (v127 == 3)
    {
      v81 = qword_100046A08;
      v75 = v72;
      v2 = v135;
      if (v81 != -1)
      {
        swift_once();
      }

      v76 = v130;
      v14 = v148;
      v77 = v143;
      if ((v130 - 3) < 2)
      {
        v78 = &dword_100046CF8;
        goto LABEL_48;
      }

      v80 = &dword_100046CD8;
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  if (!v127)
  {
    if (v136)
    {
      v82 = qword_100046A80;
      v75 = v72;
      v2 = v135;
      if (v82 != -1)
      {
        swift_once();
      }

      v76 = v130;
      v14 = v148;
      v77 = v143;
      if ((v130 - 3) < 2)
      {
        v78 = &dword_100046F78;
        goto LABEL_48;
      }

      v80 = &dword_100046F58;
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  if (v127 != 1)
  {
    if (v127 == 2)
    {
      v79 = qword_100046A10;
      v75 = v72;
      v2 = v135;
      if (v79 != -1)
      {
        swift_once();
      }

      v76 = v130;
      v14 = v148;
      v77 = v143;
      if ((v130 - 3) < 2)
      {
        v78 = &dword_100046D38;
        goto LABEL_48;
      }

      v80 = &dword_100046D18;
LABEL_53:
      v89 = v80[6];
      v90 = *(v80 + 1);
      v91 = *(v80 + 2);
      v92 = *v80;
      goto LABEL_54;
    }

LABEL_44:
    v84 = qword_100046A00;
    v75 = v72;
    v2 = v135;
    if (v84 != -1)
    {
      swift_once();
    }

    v76 = v130;
    v14 = v148;
    v77 = v143;
    if ((v130 - 3) < 2)
    {
      v78 = &dword_100046CB8;
      goto LABEL_48;
    }

    v80 = &dword_100046C98;
    goto LABEL_53;
  }

  if ((v136 & 1) == 0)
  {
    goto LABEL_44;
  }

  v75 = v72;
  v83 = v130;
  sub_100009BF0(v71, v130);
  v76 = v83;
  v2 = v135;
  v14 = v148;
  v77 = v143;
LABEL_54:
  sub_100009914(v136 & 1, v76);
  v94 = v93;
  v63 = v95;
  v65 = v96;
  sub_10000A5B0(v71);

  sub_1000054D4(v129);
  LODWORD(v61) = v94;
  v41 = v133;
LABEL_55:
  [v66 setCameraOrbit:{v61, v127}];
  [v66 setCameraOffset:v63];
  v97 = *(v2 + 16);
  v98 = sub_100009638(v97, v149);
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v105 = v98;

  v106 = v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationStartEnvironment;
  *v106 = v100 | (v102 << 32);
  *(v106 + 8) = v104;
  *(v106 + 16) = v105;
  *(v106 + 24) = 0;
  v108 = CLLocationCoordinate2DMake(0.0, 0.0);
  *v107.i64 = v108.longitude;
  v109.i64[0] = 1;
  v110.i64[0] = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
  v107.i64[1] = *&v108.latitude;
  __asm { FMOV            V0.2S, #-15.0 }

  [v66 setOffsetCoordinate:{COERCE_DOUBLE(vbslq_s8(vdupq_lane_s64(vceqq_s64(v110, v109), 0), v107, vcvtq_f64_f32(vmul_f32(v65, _D0))).i64[1])}];
  [v66 restingCameraRoll];
  v117 = v116;
  [v66 cameraPosition];
  v149 = v118;
  [v66 cameraTarget];
  v145 = v119;
  [v66 cameraUp];
  *&v120 = v39 + v117;
  [v66 setCamera:*&v149 target:*&v145 up:v121 roll:v120];
  [v66 updateCamera];
  v42(v20, v2 + v41, v14);
  LOBYTE(v97) = sub_100034544();
  (v147)(v20, v14);
  if (v97)
  {
    sub_100012108(0);
  }

  else
  {
    v122 = sub_100034B44();
    v123 = v142;
    (*(*(v122 - 8) + 56))(v142, 1, 1, v122);
    v124 = swift_allocObject();
    swift_weakInit();
    sub_100034B24();

    v125 = sub_100034B14();
    v126 = swift_allocObject();
    *(v126 + 16) = v125;
    *(v126 + 24) = &protocol witness table for MainActor;
    *(v126 + 32) = v124;
    *(v126 + 40) = 0;

    sub_10000E0F4(0, 0, v123, &unk_100036AE8, v126);
  }
}

uint64_t sub_10001ADA4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AE9C;

  return v7(a1);
}

uint64_t sub_10001AE9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001AF94(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001B060(v11, 0, 0, 1, a1, a2);
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
    sub_100007EA8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000026BC(v11);
  return v7;
}

unint64_t sub_10001B060(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001B16C(a5, a6);
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
    result = sub_100034DD4();
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

char *sub_10001B16C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001B1B8(a1, a2);
  sub_10001B2E8(&off_1000411A0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001B1B8(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001B3D4(v5, 0);
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

  result = sub_100034DD4();
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
        v10 = sub_100034A24();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001B3D4(v10, 0);
        result = sub_100034D94();
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

uint64_t sub_10001B2E8(uint64_t result)
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

  result = sub_10001B448(result, v12, 1, v3);
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

void *sub_10001B3D4(uint64_t a1, uint64_t a2)
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

  sub_1000035B0(&unk_100047870, &qword_100036AF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001B448(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000035B0(&unk_100047870, &qword_100036AF0);
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

unint64_t sub_10001B53C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100034EF4();
  sub_100034A04();
  v6 = sub_100034F14();

  return sub_10001B5F8(a1, a2, v6);
}

unint64_t sub_10001B5B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100034D64(*(v2 + 40));

  return sub_10001B6B0(a1, v4);
}

unint64_t sub_10001B5F8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100034EC4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001B6B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100007E3C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100034D74();
      sub_10001CD88(v8);
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

unint64_t sub_10001B778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000035B0(&qword_1000479F8, &qword_100036BE0);
    v3 = sub_100034E74();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001B53C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10001B874(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000035B0(&qword_1000479F0, &qword_100036BD8);
    v3 = sub_100034E74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001B53C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10001B978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000035B0(&qword_100046B88, &qword_100036750);
    v3 = sub_100034E74();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10001B53C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_10001BA8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000035B0(&qword_1000479A8, &qword_100036B88);
    v3 = sub_100034E74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10001B53C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_10001BB90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001BBCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001D270;

  return sub_10000D1A4(a1, v4, v5, v6, v7);
}

void sub_10001BC90(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (a3 != 1)
  {
    v8 = a4;
    v9 = a3;

    sub_1000053EC(a5);
  }
}

uint64_t sub_10001BCF0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001BD28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001D270;

  return sub_10001ADA4(a1, v5);
}

void *sub_10001BDE0(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v66 = a2;
  v64 = a1;
  v65 = sub_1000347F4();
  v6 = *(v65 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v65);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000345A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[4] = 0;
  v15 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager;
  v16 = sub_1000346F4();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v3 + v15) = sub_1000346E4();
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista) = 2;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) = 2;
  v19 = (v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  *v19 = 0;
  v19[1] = 0;
  v19[2] = 1;
  v19[3] = 0;
  v19[4] = 0;
  v19[5] = 0;
  v20 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_displayLink;
  v21 = sub_100034534();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v3 + v20) = sub_100034524();
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationDuration) = 1069547520;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationTimeOffset) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationStartTime) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isFirstDraw) = 1;
  sub_1000342D4();
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_pulseWaitTime) = 0x407E000000000000;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isCurrentConfigurationChange) = 1;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isRotationChange) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_hasPortraitWidgets) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_queuedLocationUpdate) = 0;
  v24 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator;
  v25 = sub_100034784();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v3 + v24) = sub_100034774();
  v28 = v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationStartEnvironment;
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  v28[24] = 1;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotVistaController) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundImageView) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundDebugColorView) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingImageView) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingDebugColorView) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotMaskLayer) = 0;
  v29 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotManager;
  v30 = sub_100034614();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *(v3 + v29) = sub_100034604();
  v33 = v64;
  v3[2] = a3;
  v3[3] = v33;
  v34 = a3;
  v35 = v33;
  sub_100034BE4();
  (*(v11 + 32))(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState, v14, v10);
  sub_100034C24();
  (*(v6 + 32))(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState, v9, v65);
  v36 = v34;
  [objc_msgSend(v36 "environment")];
  swift_unknownObjectRelease();
  swift_getObjectType();
  v37 = sub_10001D800();
  v39 = v38;
  v41 = v40;

  swift_unknownObjectRelease();
  if (v41 == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = v37;
  }

  if (v41 == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  v44 = v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
  *v44 = v42;
  v44[8] = (v41 != 1) & v39;
  *(v44 + 2) = v43;
  *(v44 + 3) = 0;
  *(v44 + 4) = 0;
  *(v44 + 5) = 0;
  v45 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator;
  v46 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator);
  sub_10001CD14(&qword_100047888, type metadata accessor for AegirRenderingCoordinator);

  sub_100034764();

  v47 = *(v4 + v45);

  sub_100034724();

  [v35 setPulseAnimationDelegate:v4];
  [v35 setVistaTransitionStyle:0];
  v48 = [v35 vistaView];
  [v48 setObserver:v4];

  sub_10000BB98();
  v49 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
  v69 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
  v70 = v49;
  v68 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
  v71 = v69;
  v50 = v49;
  sub_10001CCAC(&v71, v67, &unk_100047890, &unk_100036B40);
  sub_10001CCAC(&v71 + 8, v67, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v50);
  sub_10000CBDC(&v68);
  sub_100007DDC(&v71, &unk_100047890, &unk_100036B40);
  sub_100007DDC(&v71 + 8, &unk_1000481C0, &qword_100036F70);
  sub_1000054D4(v50);
  v51 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_displayLink;
  v52 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_displayLink);
  sub_10001CD14(&qword_1000478A0, type metadata accessor for AegirRenderingCoordinator);

  sub_100034504();

  v53 = *(v4 + v51);

  sub_100034514();

  v54 = *(v4 + v51);
  v55 = objc_opt_self();

  v56.super.isa = [v55 currentRunLoop];
  isa = v56.super.isa;
  sub_1000344F4(v56, NSRunLoopCommonModes);

  v58 = v4[3];
  v59 = v4[2];
  v60 = sub_100034C14();

  [v58 disableCloudDataFetch:v60 & 1];
  v61 = v4[2];
  LOBYTE(v58) = sub_100034BD4();

  if (v58)
  {
    sub_10000E8E4();
  }

  else
  {
    sub_10000F9CC();
  }

  v62 = [v4[3] vistaView];
  [v62 purgeUnused];

  return v4;
}

uint64_t sub_10001C508()
{
  v1 = [objc_allocWithZone(SBSWallpaperService) init];
  v0[175] = v1;
  v2 = swift_task_alloc();
  v0[176] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  type metadata accessor for CGRect(0);
  swift_asyncLet_begin();
  v3 = swift_task_alloc();
  v0[177] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = 1;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 167, sub_10001C620, v0 + 162);
}

uint64_t sub_10001C63C()
{
  *(v0 + 1424) = CGRectGetMinY(*(v0 + 1336));

  return _swift_asyncLet_get(v0 + 656, v0 + 1368, sub_10001C6B8, v0 + 1296);
}

uint64_t sub_10001C6D4()
{
  *(v0 + 1432) = CGRectGetMinY(*(v0 + 1368));

  return _swift_asyncLet_finish(v0 + 656, v0 + 1368, sub_10001C750, v0 + 1296);
}

uint64_t sub_10001C76C()
{
  v1 = *(v0 + 1416);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1336, sub_10001C7D8, v0 + 656);
}

uint64_t sub_10001C7F4()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1400);

  [v2 invalidate];

  v3 = *(v0 + 8);
  v4 = *(v0 + 1424) != *(v0 + 1432);

  return v3(v4);
}

uint64_t sub_10001C87C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001D270;

  return sub_10000E3F4(a1, v5, v4);
}

uint64_t sub_10001C928(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001C9D4;

  return sub_10000E694(a1, v5, v4);
}

uint64_t sub_10001C9D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_10001CAF4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (a3 != 1)
  {

    sub_1000054D4(a5);
  }
}

unint64_t sub_10001CB50()
{
  result = qword_1000478B0;
  if (!qword_1000478B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000478B0);
  }

  return result;
}

uint64_t sub_10001CC10(uint64_t a1)
{
  if (*(v1 + 48))
  {
    v3 = *(v1 + 56);
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10001CC94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001CCAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000035B0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001CD14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001CF10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001CF50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001D270;

  return sub_100012850(a1, v4, v5, v7, v6);
}

unint64_t sub_10001D010()
{
  result = qword_1000479D8;
  if (!qword_1000479D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000479D8);
  }

  return result;
}

uint64_t sub_10001D074()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 86, 7);
}

uint64_t sub_10001D13C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001C9D4;

  return sub_10000D1A4(a1, v4, v5, v6, v7);
}

uint64_t sub_10001D200()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

void sub_10001D240(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
  }
}

uint64_t sub_10001D27C(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x79726572724FLL;
      }

      if (a1 == 3)
      {
        return 0x6E7275746153;
      }

      return 0x7972756372654DLL;
    }

    if (!a1)
    {
      return 0x6874726145;
    }

    if (a1 == 1)
    {
      return 1852796749;
    }

    return 0;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0x7265746970754ALL;
      case 8:
        return 0x73756E617255;
      case 9:
        return 0x656E757470654ELL;
    }

    return 0;
  }

  if (a1 == 5)
  {
    return 0x73756E6556;
  }

  else
  {
    return 1936875853;
  }
}

uint64_t sub_10001D3B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6874726145 && a2 == 0xE500000000000000)
  {
    return 0;
  }

  if (sub_100034EC4())
  {
    return 0;
  }

  if (a1 == 1852796749 && a2 == 0xE400000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x79726572724FLL && a2 == 0xE600000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x7972756372654DLL && a2 == 0xE700000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x73756E6556 && a2 == 0xE500000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 1936875853 && a2 == 0xE400000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x7265746970754ALL && a2 == 0xE700000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0x6E7275746153 && a2 == 0xE600000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x73756E617255 && a2 == 0xE600000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x656E757470654ELL && a2 == 0xE700000000000000)
  {
    return 9;
  }

  if (sub_100034EC4())
  {
    return 9;
  }

  return 0;
}

uint64_t sub_10001D678()
{
  sub_100034DB4(38);
  v1._countAndFlagsBits = 0x203A6B636F6C6E75;
  v1._object = 0xE800000000000000;
  sub_100034A14(v1);
  sub_100034BC4();
  v2._countAndFlagsBits = 0x203A656B6177203BLL;
  v2._object = 0xE800000000000000;
  sub_100034A14(v2);
  sub_100034BC4();
  v3._object = 0x80000001000378B0;
  v3._countAndFlagsBits = 0xD000000000000010;
  sub_100034A14(v3);
  sub_100034BC4();
  return 0;
}

uint64_t sub_10001D784()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_10001D678();
}

uint64_t initializeBufferWithCopyOfBuffer for AegirSceneUpdateDriver(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AegirSceneUpdateDriver(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AegirSceneUpdateDriver(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_10001D800()
{
  v1 = sub_100034874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v48 - v8;
  __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v51[0] = 0;
  v12 = [v0 loadUserInfoWithError:v51];
  v13 = v51[0];
  if (!v12)
  {
    v34 = v51[0];
    sub_100034294();

    swift_willThrow();
    sub_100034804();
    swift_errorRetain();
    v35 = sub_100034854();
    v36 = sub_100034C54();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51[0] = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v39 = sub_100034EE4();
      v41 = sub_10001AF94(v39, v40, v51);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to load configuration from contents %s", v37, 0xCu);
      sub_1000026BC(v38);
    }

    else
    {
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }

  v14 = v12;
  v15 = sub_100034924();
  v16 = v13;

  v49 = 0x6174736956;
  v50 = 0xE500000000000000;
  sub_100034D84();
  if (!*(v15 + 16) || (v17 = sub_10001B5B4(v51), (v18 & 1) == 0))
  {

    sub_10001CD88(v51);
LABEL_13:
    sub_100034804();
    v31 = sub_100034854();
    v32 = sub_100034C54();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Vista not available in userInfo", v33, 2u);
    }

    (*(v2 + 8))(v9, v1);
    return 0;
  }

  sub_100007EA8(*(v15 + 56) + 32 * v17, v52);
  sub_10001CD88(v51);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v20 = v49;
  v19 = v50;
  v49 = 0x656C797453;
  v50 = 0xE500000000000000;
  sub_100034D84();
  if (*(v15 + 16) && (v21 = sub_10001B5B4(v51), (v22 & 1) != 0))
  {
    sub_100007EA8(*(v15 + 56) + 32 * v21, v52);
    sub_10001CD88(v51);
    if (swift_dynamicCast())
    {
      v24 = v49;
      v23 = v50;
      v49 = 0x6E6F697461636F4CLL;
      v50 = 0xE800000000000000;
      sub_100034D84();
      if (*(v15 + 16) && (v25 = sub_10001B5B4(v51), (v26 & 1) != 0))
      {
        sub_100007EA8(*(v15 + 56) + 32 * v25, v52);
        sub_10001CD88(v51);

        if (swift_dynamicCast())
        {
          v27 = v49;
          v28 = v50;
          sub_10001DE38();
          v29 = sub_100001E48(v27, v28);
          v30 = v29;
LABEL_30:
          v46 = sub_10001D3B8(v20, v19);

          v47._rawValue = &off_100041468;
          v53._countAndFlagsBits = v24;
          v53._object = v23;
          sub_100034E94(v47, v53);

          return v46;
        }
      }

      else
      {

        sub_10001CD88(v51);
      }

      v29 = 0;
      goto LABEL_30;
    }
  }

  else
  {

    sub_10001CD88(v51);
  }

  sub_100034804();
  v43 = sub_100034854();
  v44 = sub_100034C64();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Style not available in configuration", v45, 2u);
  }

  (*(v2 + 8))(v11, v1);
  return 0;
}

unint64_t sub_10001DE38()
{
  result = qword_1000470C0;
  if (!qword_1000470C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000470C0);
  }

  return result;
}

id sub_10001DE84(int a1)
{
  v1 = BYTE2(a1) * 0.00392156863;
  v2 = BYTE1(a1) * 0.00392156863;
  v3 = a1 * 0.00392156863;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = [objc_allocWithZone(UIColor) initWithRed:v1 green:v2 blue:v3 alpha:1.0];
  v6 = [v4 initWithColor:v5];

  return v6;
}

Swift::Int sub_10001DF78()
{
  v1 = *v0;
  sub_100034EF4();
  sub_100034F04(dword_100036D30[v1]);
  return sub_100034F14();
}

Swift::Int sub_10001E000()
{
  v1 = *v0;
  sub_100034EF4();
  sub_100034F04(dword_100036D30[v1]);
  return sub_100034F14();
}

uint64_t sub_10001E04C@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11AegirPoster12PlanetColorsO8rawValueACSgs6UInt32V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s11AegirPoster12PlanetColorsO8rawValueACSgs6UInt32V_tcfC_0(int a1)
{
  if (a1 <= 10589062)
  {
    if (a1 > 8308449)
    {
      if (a1 == 8308450)
      {
        return 7;
      }

      if (a1 == 9211020)
      {
        return 3;
      }
    }

    else
    {
      if (a1 == 6920424)
      {
        return 8;
      }

      if (a1 == 7442351)
      {
        return 2;
      }
    }
  }

  else if (a1 <= 12426328)
  {
    if (a1 == 10589063)
    {
      return 0;
    }

    if (a1 == 11435597)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 12426329:
        return 6;
      case 12544846:
        return 5;
      case 14452348:
        return 4;
    }
  }

  return 9;
}

unint64_t sub_10001E1A4()
{
  result = qword_100047B80;
  if (!qword_100047B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047B80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlanetColors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlanetColors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10001E368()
{
  v0 = sub_100034874();
  sub_100007D20(v0, qword_1000493E8);
  sub_100007CE8(v0, qword_1000493E8);
  sub_100034844();
  return sub_100034864();
}

id sub_10001E3D0()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AegirUpdatingController();
  v1 = objc_msgSendSuper2(&v7, "init");
  if (qword_100046AA0 != -1)
  {
    swift_once();
  }

  v2 = sub_100034874();
  sub_100007CE8(v2, qword_1000493E8);
  v3 = sub_100034854();
  v4 = sub_100034C64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AegirUpdatingController created", v5, 2u);
  }

  return v1;
}

id sub_10001E4F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AegirUpdatingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001E54C()
{
  sub_1000035B0(&qword_100047C48, &qword_100036DE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100036D60;
  sub_10000A83C(0, &qword_100046B68, PRPosterColor_ptr);
  v1 = sub_10001DE84(7442351);
  v2 = PRTimeFontIdentifierSoft;
  *(v0 + 32) = 0x747261452D313056;
  *(v0 + 40) = 0xE900000000000068;
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  *(v0 + 72) = &off_1000414B8;
  v3 = v2;
  v4 = sub_10001DE84(9211020);
  v5 = PRTimeFontIdentifierRounded;
  *(v0 + 80) = 0x6E6F6F4D2D323056;
  *(v0 + 88) = 0xE800000000000000;
  *(v0 + 96) = 1;
  *(v0 + 104) = v4;
  *(v0 + 112) = v5;
  *(v0 + 120) = &off_1000414F0;
  v6 = v5;
  v7 = sub_10001DE84(14452348);
  v8 = PRTimeFontIdentifierStencil;
  *(v0 + 128) = 0x7372614D2D333056;
  *(v0 + 136) = 0xE800000000000000;
  *(v0 + 144) = 6;
  *(v0 + 152) = v7;
  *(v0 + 160) = v8;
  *(v0 + 168) = &off_100041528;
  v9 = v8;
  v10 = sub_10001DE84(12544846);
  v11 = PRTimeFontIdentifierNewYork;
  *(v0 + 176) = 0x6970754A2D343056;
  *(v0 + 184) = 0xEB00000000726574;
  *(v0 + 192) = 7;
  *(v0 + 200) = v10;
  *(v0 + 208) = v11;
  *(v0 + 216) = &off_100041560;
  v12 = v11;
  v13 = sub_10001DE84(12426329);
  v14 = PRTimeFontIdentifierSlab;
  *(v0 + 224) = 0x757461532D353056;
  *(v0 + 232) = 0xEA00000000006E72;
  *(v0 + 240) = 3;
  *(v0 + 248) = v13;
  *(v0 + 256) = v14;
  *(v0 + 264) = &off_100041598;
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 vibrantMaterialColor];
  v18 = PRTimeFontIdentifierRail;
  *(v0 + 272) = 0x6572724F2D363056;
  *(v0 + 280) = 0xEA00000000007972;
  *(v0 + 288) = 2;
  *(v0 + 296) = v17;
  *(v0 + 304) = v18;
  *(v0 + 312) = &off_1000415D0;
  off_100047B90 = v0;

  return _objc_retain_x1();
}

void sub_10001E908(uint64_t a1, uint64_t a2)
{
  sub_1000035B0(&qword_1000483A0, qword_100037210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100036D70;
  v3 = objc_allocWithZone(ATXComplication);
  v4 = sub_100034984();
  v5 = sub_100034984();
  v6 = sub_100034984();
  v7 = [v3 initWithExtensionBundleIdentifier:v4 kind:v5 containerBundleIdentifier:v6 widgetFamily:11 intent:0 source:5];

  *(inited + 32) = v7;
  v125 = inited + 32;
  v8 = objc_allocWithZone(ATXComplication);
  v9 = sub_100034984();
  v10 = sub_100034984();
  v11 = sub_100034984();
  v12 = [v8 initWithExtensionBundleIdentifier:v9 kind:v10 containerBundleIdentifier:v11 widgetFamily:10 intent:0 source:5];

  *(inited + 40) = v12;
  v13 = objc_allocWithZone(ATXComplication);
  v14 = sub_100034984();
  v15 = sub_100034984();
  v16 = sub_100034984();
  v17 = [v13 initWithExtensionBundleIdentifier:v14 kind:v15 containerBundleIdentifier:v16 widgetFamily:10 intent:0 source:5];

  *(inited + 48) = v17;
  v18 = objc_allocWithZone(ATXComplication);
  v19 = sub_100034984();
  v20 = sub_100034984();
  v21 = sub_100034984();
  v22 = [v18 initWithExtensionBundleIdentifier:v19 kind:v20 containerBundleIdentifier:v21 widgetFamily:10 intent:0 source:5];

  *(inited + 56) = v22;
  v23 = objc_allocWithZone(ATXComplication);
  v24 = sub_100034984();
  v25 = sub_100034984();
  v26 = sub_100034984();
  v27 = [v23 initWithExtensionBundleIdentifier:v24 kind:v25 containerBundleIdentifier:v26 widgetFamily:10 intent:0 source:5];

  *(inited + 64) = v27;
  v28 = objc_allocWithZone(ATXComplication);
  v29 = sub_100034984();
  v30 = sub_100034984();
  v31 = sub_100034984();
  v32 = [v28 initWithExtensionBundleIdentifier:v29 kind:v30 containerBundleIdentifier:v31 widgetFamily:10 intent:0 source:5];

  *(inited + 72) = v32;
  v33 = [objc_opt_self() currentDevice];
  v126 = [v33 userInterfaceIdiom];

  if (qword_100046AA8 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v34 = off_100047B90;
    v129 = *(off_100047B90 + 2);
    if (!v129)
    {
      break;
    }

    v124 = inited & 0xC000000000000001;
    v127 = inited & 0xFFFFFFFFFFFFFF8;
    inited = 0;
    v35 = (off_100047B90 + 72);
    v36 = a1;
    v128 = off_100047B90;
    while (inited < v34[2])
    {
      v38 = *(v35 - 5);
      v37 = *(v35 - 4);
      v40 = *(v35 - 3);
      v39 = *(v35 - 2);
      v41 = *(v35 - 1);
      v42 = *v35;
      v43 = *(v36 + 16);
      swift_bridgeObjectRetain_n();
      v44 = v39;
      v45 = v38;
      log = v44;
      v46 = v41;
      v134 = v42;

      if (v43)
      {
        v47 = sub_10001B53C(v45, v37);
        if (v48)
        {
          v49 = v45;
          v50 = *(*(v36 + 56) + 8 * v47);
          v51 = sub_100034984();
          v52 = [v50 objectForUserInfoKey:v51];

          if (v52)
          {
            sub_100034D44();
            swift_unknownObjectRelease();
          }

          else
          {
            v139 = 0u;
            v140 = 0u;
          }

          v141[0] = v139;
          v141[1] = v140;
          v45 = v49;
          if (*(&v140 + 1))
          {
            if ((swift_dynamicCast() & 1) != 0 && *&v138[0] == 1000)
            {
              if (qword_100046AA0 != -1)
              {
                swift_once();
              }

              v53 = sub_100034874();
              sub_100007CE8(v53, qword_1000493E8);

              v54 = sub_100034854();
              v55 = sub_100034C64();

              if (os_log_type_enabled(v54, v55))
              {
                v56 = v45;
                v57 = swift_slowAlloc();
                v58 = swift_slowAlloc();
                *&v141[0] = v58;
                *v57 = 136315138;
                v59 = sub_10001AF94(v56, v37, v141);
                v60 = v46;
                v61 = v59;

                *(v57 + 4) = v61;
                v46 = v60;
                _os_log_impl(&_mh_execute_header, v54, v55, "Reusing descriptor %s", v57, 0xCu);
                sub_1000026BC(v58);
                v36 = a1;
              }

              else
              {
              }

              goto LABEL_46;
            }
          }

          else
          {

            sub_10001FCF8(v141);
          }
        }
      }

      if (qword_100046AA0 != -1)
      {
        swift_once();
      }

      v133 = inited;
      v62 = sub_100034874();
      sub_100007CE8(v62, qword_1000493E8);

      v63 = sub_100034854();
      v64 = sub_100034C64();

      v137 = v46;
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v141[0] = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_10001AF94(v45, v37, v141);
        _os_log_impl(&_mh_execute_header, v63, v64, "Creating descriptor %s", v65, 0xCu);
        sub_1000026BC(v66);
      }

      v131 = v45;
      v67 = sub_100034984();
      v68 = [objc_opt_self() mutableDescriptorWithIdentifier:v67];

      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_100036D80;
      v70 = v37;
      v71 = objc_allocWithZone(PRTimeFontConfiguration);
      v50 = v68;
      *(v69 + 32) = [v71 initWithTimeFontIdentifier:v137];
      sub_10000A83C(0, &qword_100047C30, PRTimeFontConfiguration_ptr);
      isa = sub_100034AB4().super.isa;

      [v50 setPreferredTimeFontConfigurations:isa];

      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_100036D80;
      *(v73 + 32) = log;
      sub_10000A83C(0, &qword_100046B68, PRPosterColor_ptr);
      v132 = log;
      v74 = sub_100034AB4().super.isa;

      [v50 setPreferredTitleColors:v74];

      v75 = [objc_allocWithZone(PRPosterRenderingConfiguration) initWithDepthEffectDisabled:0 motionEffectsDisabled:1];
      [v50 setPreferredRenderingConfiguration:v75];

      *&v139 = 0x6174736956;
      *(&v139 + 1) = 0xE500000000000000;
      sub_100034D84();
      v76 = sub_10001D27C(v40);
      *(&v140 + 1) = &type metadata for String;
      *&v139 = v76;
      *(&v139 + 1) = v77;
      sub_100007E98(&v139, v138);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000071FC(v138, v141, isUniquelyReferenced_nonNull_native);
      sub_10001CD88(v141);
      *&v139 = 0x656C797453;
      *(&v139 + 1) = 0xE500000000000000;
      sub_100034D84();
      *(&v140 + 1) = &type metadata for String;
      *&v139 = 1819047238;
      *(&v139 + 1) = 0xE400000000000000;
      sub_100007E98(&v139, v138);
      v79 = swift_isUniquelyReferenced_nonNull_native();
      sub_1000071FC(v138, v141, v79);
      sub_10001CD88(v141);
      *&v139 = 0x6E6F6973726576;
      *(&v139 + 1) = 0xE700000000000000;
      sub_100034D84();
      *(&v140 + 1) = &type metadata for Int;
      *&v139 = 1000;
      sub_100007E98(&v139, v138);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      sub_1000071FC(v138, v141, v80);
      sub_10001CD88(v141);
      v81 = sub_100034914().super.isa;

      *&v141[0] = 0;
      LODWORD(v71) = [v50 storeUserInfo:v81 error:v141];

      v82 = *&v141[0];
      if (v71)
      {
        v83 = objc_allocWithZone(ATXPosterDescriptorGalleryOptions);
        v84 = v82;
        v85 = [v83 init];
        [v85 setAllowsSystemSuggestedComplications:0];
        [v85 setFeaturedConfidenceLevel:1];
        if (v126)
        {
          inited = v133;
          [v85 setAllowsSystemSuggestedComplicationsInLandscape:(v133 & 1) == 0];
        }

        else
        {
          v95 = swift_allocObject();
          *(v95 + 16) = xmmword_100036610;
          inited = v133;
          if (!v134[2])
          {
            goto LABEL_59;
          }

          v96 = v95;
          v97 = v134[4];
          if (v124)
          {
            v96[4] = sub_100034DC4();
            if (v134[2] < 2uLL)
            {
              goto LABEL_61;
            }

            v120 = v134[5];
            v96[5] = sub_100034DC4();
            if (v134[2] < 3uLL)
            {
              goto LABEL_64;
            }

            v121 = v134[6];
            v106 = sub_100034DC4();
          }

          else
          {
            if ((v97 & 0x8000000000000000) != 0)
            {
              goto LABEL_60;
            }

            if (v97 >= *(v127 + 16))
            {
              goto LABEL_62;
            }

            v98 = *(v125 + 8 * v97);
            v96[4] = v98;
            v99 = v134[2];
            v100 = v98;
            if (v99 < 2)
            {
              goto LABEL_61;
            }

            v101 = v134[5];
            if ((v101 & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }

            if (v101 >= *(v127 + 16))
            {
              goto LABEL_65;
            }

            v102 = *(v125 + 8 * v101);
            v96[5] = v102;
            v103 = v134[2];
            v104 = v102;
            if (v103 < 3)
            {
              goto LABEL_64;
            }

            v105 = v134[6];
            if ((v105 & 0x8000000000000000) != 0)
            {
              goto LABEL_66;
            }

            if (v105 >= *(v127 + 16))
            {
              goto LABEL_67;
            }

            v106 = *(v125 + 8 * v105);
          }

          v96[6] = v106;
          sub_10000A83C(0, &qword_100047C38, ATXComplication_ptr);
          v107 = sub_100034AB4().super.isa;

          [v85 setModularComplications:v107];
        }

        *&v141[0] = 0;
        if ([v50 storeGalleryOptions:v85 error:v141])
        {
          v108 = *&v141[0];

          v36 = a1;
          v46 = v137;
LABEL_46:
          v109 = v50;
          sub_100034AA4();
          if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v119 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_100034AE4();
          }

          sub_100034AF4();

          goto LABEL_6;
        }

        v110 = *&v141[0];
        v111 = sub_100034294();

        swift_willThrow();

        swift_errorRetain();
        v112 = sub_100034854();
        v113 = sub_100034C54();

        loga = v112;
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *&v141[0] = swift_slowAlloc();
          *v114 = 136315394;
          v115 = sub_10001AF94(v131, v70, v141);

          *(v114 + 4) = v115;
          *(v114 + 12) = 2082;
          *&v139 = v111;
          swift_errorRetain();
          sub_1000035B0(&qword_1000479D0, &unk_100036DD0);
          v116 = sub_1000349C4();
          v118 = sub_10001AF94(v116, v117, v141);

          *(v114 + 14) = v118;
          _os_log_impl(&_mh_execute_header, loga, v113, "Unable to store gallery options %s error=%{public}s", v114, 0x16u);
          swift_arrayDestroy();
          inited = v133;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v36 = a1;
      }

      else
      {
        v86 = *&v141[0];
        v87 = sub_100034294();

        swift_willThrow();

        swift_errorRetain();
        v88 = sub_100034854();
        v89 = sub_100034C54();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *&v141[0] = swift_slowAlloc();
          *v90 = 136315394;
          v91 = sub_10001AF94(v45, v70, v141);

          *(v90 + 4) = v91;
          *(v90 + 12) = 2082;
          *&v139 = v87;
          swift_errorRetain();
          sub_1000035B0(&qword_1000479D0, &unk_100036DD0);
          v92 = sub_1000349C4();
          v94 = sub_10001AF94(v92, v93, v141);

          *(v90 + 14) = v94;
          _os_log_impl(&_mh_execute_header, v88, v89, "Unable to store user info %s error=%{public}s", v90, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v36 = a1;
        inited = v133;
      }

LABEL_6:
      ++inited;
      v35 += 6;
      v34 = v128;
      if (v129 == inited)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

LABEL_57:

  sub_10000A83C(0, &unk_100047C20, PRPosterDescriptor_ptr);
  v122 = sub_100034AB4().super.isa;
  (*(a2 + 16))(a2, v122, 0);
}

uint64_t sub_10001FBEC(uint64_t a1, uint64_t a2)
{
  if (qword_100046AA0 != -1)
  {
    swift_once();
  }

  v4 = sub_100034874();
  sub_100007CE8(v4, qword_1000493E8);
  v5 = sub_100034854();
  v6 = sub_100034C64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "updateConfiguration", v7, 2u);
  }

  v8 = *(a2 + 16);

  return v8(a2, a1, 0);
}

uint64_t sub_10001FCF8(uint64_t a1)
{
  v2 = sub_1000035B0(&qword_100047C40, &qword_100036B58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001FD60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10001FDA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

AegirPoster::AegirPosterCropStyle __swiftcall AegirPosterCropStyle.init(name:)(Swift::String name)
{
  object = name._object;
  v5._countAndFlagsBits = name._countAndFlagsBits;
  v2._rawValue = &off_100041468;
  v5._object = object;
  v3 = sub_100034E94(v2, v5);

  return v3 == 1;
}

AegirPoster::AegirPosterCropStyle_optional __swiftcall AegirPosterCropStyle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_100041468;
  v6._object = object;
  v3 = sub_100034E94(v2, v6);

  if (v3 == 1)
  {
    v4.value = AegirPoster_AegirPosterCropStyle_detail;
  }

  else
  {
    v4.value = AegirPoster_AegirPosterCropStyle_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t AegirPosterCropStyle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C6961746544;
  }

  else
  {
    return 1819047238;
  }
}

uint64_t sub_10001FECC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C6961746544;
  }

  else
  {
    v4 = 1819047238;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C6961746544;
  }

  else
  {
    v6 = 1819047238;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100034EC4();
  }

  return v9 & 1;
}

Swift::Int sub_10001FF68()
{
  v1 = *v0;
  sub_100034EF4();
  sub_100034A04();

  return sub_100034F14();
}

uint64_t sub_10001FFE0()
{
  *v0;
  sub_100034A04();
}

Swift::Int sub_100020044()
{
  v1 = *v0;
  sub_100034EF4();
  sub_100034A04();

  return sub_100034F14();
}

uint64_t sub_1000200B8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100041468;
  v8._object = v3;
  v5 = sub_100034E94(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100020118(uint64_t *a1@<X8>)
{
  v2 = 1819047238;
  if (*v1)
  {
    v2 = 0x6C6961746544;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100020170(float32_t a1, int8x8_t a2, int8x8_t a3, float32_t a4, int8x8_t a5, int8x8_t a6)
{
  v6 = vext_s8(a3, a2, 4uLL);
  *v7.f32 = vdup_lane_s32(a3, 0);
  *&v7.u32[2] = v6;
  v7.f32[0] = a1;
  v8 = vext_s8(a6, a5, 4uLL);
  *v9.f32 = vdup_lane_s32(a6, 0);
  *&v9.u32[2] = v8;
  v9.f32[0] = a4;
  v10 = vmovn_s32(vceqq_f32(v7, v9));
  v10.i16[0] = vminv_u16(v10);
  return v10.i32[0] & vceq_f32(*&a2, *&a5).i32[1] & 1;
}

unint64_t sub_1000201B8()
{
  result = qword_100047C50;
  if (!qword_100047C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047C50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AegirPosterCropStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AegirPosterCropStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_100020368()
{
  v1 = sub_100034874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator] = 0;
  v6 = type metadata accessor for AegirEditingController();
  v12.receiver = v0;
  v12.super_class = v6;
  v7 = objc_msgSendSuper2(&v12, "init");
  sub_100034814();
  v8 = sub_100034854();
  v9 = sub_100034C64();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "AegirEditingController created", v10, 2u);
  }

  (*(v2 + 8))(v5, v1);
  nw_parameters_create();
  sub_1000349E4();
  swift_unknownObjectRetain();
  nw_parameters_set_source_application_by_bundle_id();

  swift_unknownObjectRelease_n();

  return v7;
}

id sub_100020554()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AegirEditingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000205BC(void *a1, void *a2)
{
  v3 = v2;
  v12[4] = sub_10002070C;
  v12[5] = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100020770;
  v12[3] = &unk_100041EE8;
  v6 = _Block_copy(v12);

  [a1 updatePreferences:v6];
  _Block_release(v6);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v8 = [a2 deviceOrientation];
    type metadata accessor for AegirEditingCoordinator();
    swift_allocObject();
    v9 = a1;
    v10 = sub_10002C5E0(v8, v9);

    v11 = *(v3 + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator);
    *(v3 + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator) = v10;
  }

  return result;
}

id sub_10002070C(void *a1)
{
  [a1 setDepthEffectEnabled:1];
  [a1 setAdaptiveTimeMode:3];

  return [a1 setComplicationRowMode:1];
}

uint64_t sub_100020770(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_100020D54()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v7 = sub_100034854();
  v8 = sub_100034C64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Editor did update. Updating editingCoordinator.", v9, 2u);
  }

  result = (*(v3 + 8))(v6, v2);
  if (*(v1 + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator))
  {
    v11 = *(v1 + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator);

    sub_10002CAC0();
  }

  return result;
}

void sub_100020EC0(uint64_t a1, const void *a2)
{
  v4 = sub_100034874();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a2);
  sub_100034814();
  v9 = sub_100034854();
  v10 = sub_100034C64();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "finalizeWithCompletion", v11, 2u);
  }

  (*(v5 + 8))(v8, v4);
  if (*(a1 + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator))
  {
    _Block_copy(a2);

    sub_10002CC4C(v12, a2);
    _Block_release(a2);
  }

  _Block_release(a2);
}

uint64_t sub_10002104C()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v7 = sub_100034854();
  v8 = sub_100034C64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "AegirEditingController invalidated", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator);
  *(v1 + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator) = 0;
}

uint64_t sub_1000211A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 56);
  v8 = *(v1 + 40);
  v9 = v2;
  v7 = *(v1 + 24);
  v10 = v8;
  v3 = v2;

  sub_10001CCAC(&v10, v6, &unk_100047890, &unk_100036B40);
  sub_10001CCAC(&v10 + 8, v6, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v3);
  v4 = sub_100004930(&v7);
  sub_100007DDC(&v10, &unk_100047890, &unk_100036B40);
  sub_100007DDC(&v10 + 8, &unk_1000481C0, &qword_100036F70);
  sub_1000054D4(v3);

  return v4;
}

unint64_t sub_1000212C8()
{
  result = qword_100047CF0;
  if (!qword_100047CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100047CF0);
  }

  return result;
}

uint64_t sub_100021314(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002132C()
{
  v0 = sub_100034874();
  sub_100007D20(v0, qword_100049400);
  sub_100007CE8(v0, qword_100049400);
  return sub_100034864();
}

uint64_t CLAuthorizationStatus.description.getter(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6574654420746F4ELL;
    }

    if (a1 == 1)
    {
      return 0x7463697274736552;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 == 2)
  {
    return 0x6465696E6544;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      return 0xD000000000000016;
    }

    return 0x6E776F6E6B6E55;
  }

  return 0x7A69726F68747541;
}

uint64_t sub_100021478()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6574654420746F4ELL;
    }

    if (v1 == 1)
    {
      return 0x7463697274736552;
    }

    return 0x6E776F6E6B6E55;
  }

  if (v1 == 2)
  {
    return 0x6465696E6544;
  }

  if (v1 != 3)
  {
    if (v1 == 4)
    {
      return 0xD000000000000016;
    }

    return 0x6E776F6E6B6E55;
  }

  return 0x7A69726F68747541;
}

NSString sub_100021544()
{
  result = sub_100034984();
  qword_100049418 = result;
  return result;
}

NSString sub_10002157C()
{
  result = sub_100034984();
  qword_100049420 = result;
  return result;
}

id sub_1000215B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager__location);
  *a2 = v2;
  return v2;
}

void sub_1000215EC(int a1)
{
  v23 = a1;
  v2 = sub_100034C74();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = sub_1000348B4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100034C84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager__location] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager] = 0;
  v22 = OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationQueue;
  v21 = sub_10000A83C(0, &qword_100047DB0, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  sub_1000348A4();
  v25 = &_swiftEmptyArrayStorage;
  sub_10002345C(&qword_100047DB8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000035B0(&qword_100047DC0, "h#");
  sub_1000234A4(&qword_100047DC8, &qword_100047DC0, "h#");
  sub_100034D54();
  *&v1[v22] = sub_100034CC4();
  v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_isInEditor] = v23;
  v11 = type metadata accessor for AegirLocationManager();
  v24.receiver = v1;
  v24.super_class = v11;
  v12 = objc_msgSendSuper2(&v24, "init");
  v13 = objc_allocWithZone(CLLocationManager);
  v14 = v12;
  v15 = [v13 init];
  v16 = OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager;
  v17 = *&v14[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager];
  *&v14[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager] = v15;
  v18 = v15;

  if (!v18)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v18 setDelegate:v14];

  v19 = *&v14[v16];
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v19 setDesiredAccuracy:kCLLocationAccuracyThreeKilometers];
  v20 = *&v14[v16];
  if (v20)
  {
    [v20 setShowsBackgroundLocationIndicator:0];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100021958(unint64_t a1)
{
  v4 = v1;
  if ((*&v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus] - 3) > 1)
  {
    v10 = *&v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager__location];
    *&v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager__location] = 0;

    return;
  }

  if (a1)
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v11 = a1;
      v6 = sub_100034E44();
      a1 = v11;
      if (v6)
      {
LABEL_5:
        v7 = __OFSUB__(v6, 1);
        v8 = v6 - 1;
        if (v7)
        {
          __break(1u);
        }

        else if ((a1 & 0xC000000000000001) == 0)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v8 < *(v5 + 16))
          {
            v9 = *(a1 + 8 * v8 + 32);
LABEL_10:
            v2 = v9;
            goto LABEL_14;
          }

          __break(1u);
          goto LABEL_46;
        }

        v9 = sub_100034DC4();
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_5;
      }
    }
  }

  v2 = 0;
LABEL_14:
  v3 = OBJC_IVAR____TtC11AegirPoster20AegirLocationManager__location;
  v12 = *&v4[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager__location];
  if (!v12)
  {
    if (!v2)
    {
      return;
    }

    if (qword_100046AB0 == -1)
    {
LABEL_29:
      v31 = sub_100034874();
      sub_100007CE8(v31, qword_100049400);
      v32 = v2;
      v33 = sub_100034854();
      v34 = sub_100034C64();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v49 = v36;
        *v35 = 136380675;

        [v32 coordinate];
        sub_100034BA4();
        v52._countAndFlagsBits = 44;
        v52._object = 0xE100000000000000;
        sub_100034A14(v52);
        [v32 coordinate];
        sub_100034BA4();
        v37 = sub_10001AF94(0, 0xE000000000000000, &v49);

        *(v35 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v33, v34, "current location: nil; new location: %{private}s)", v35, 0xCu);
        sub_1000026BC(v36);

LABEL_37:

        goto LABEL_39;
      }

LABEL_36:

      goto LABEL_37;
    }

LABEL_46:
    swift_once();
    goto LABEL_29;
  }

  if (!v2)
  {
    if (qword_100046AB0 != -1)
    {
      swift_once();
    }

    v38 = sub_100034874();
    sub_100007CE8(v38, qword_100049400);
    v32 = v4;
    v33 = sub_100034854();
    v39 = sub_100034C64();
    if (os_log_type_enabled(v33, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v41;
      *v40 = 136380675;
      v42 = *&v4[v3];
      if (!v42)
      {

        __break(1u);
        return;
      }

      v43 = v41;
      v44 = v42;

      [v44 coordinate];
      sub_100034BA4();
      v53._countAndFlagsBits = 44;
      v53._object = 0xE100000000000000;
      sub_100034A14(v53);
      [v44 coordinate];
      sub_100034BA4();

      v45 = sub_10001AF94(0, 0xE000000000000000, &v49);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v33, v39, "current location: %{private}s); new location: nil", v40, 0xCu);
      sub_1000026BC(v43);

      v2 = 0;
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v13 = v2;
  v14 = v12;
  [v14 coordinate];
  v16 = v15;
  [v13 coordinate];
  v18 = (v16 - v17) * 40.0;
  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v19 = floor(v18);
  v20 = sub_100034874();
  sub_100007CE8(v20, qword_100049400);
  v21 = v13;
  v22 = v14;
  v23 = sub_100034854();
  v24 = sub_100034C64();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v25 = 136381187;
    v49 = v48;
    [v22 coordinate];
    sub_100034BA4();
    v47 = v24;
    v50._countAndFlagsBits = 44;
    v50._object = 0xE100000000000000;
    sub_100034A14(v50);
    [v22 coordinate];
    sub_100034BA4();
    v26 = sub_10001AF94(0, 0xE000000000000000, &v49);

    *(v25 + 4) = v26;
    *(v25 + 12) = 2081;
    [v21 coordinate];
    sub_100034BA4();
    v51._countAndFlagsBits = 44;
    v51._object = 0xE100000000000000;
    sub_100034A14(v51);
    [v21 coordinate];
    sub_100034BA4();
    v27 = sub_10001AF94(0, 0xE000000000000000, &v49);

    *(v25 + 14) = v27;
    *(v25 + 22) = 2080;
    if (v19 == 0.0)
    {
      v28 = 7562585;
    }

    else
    {
      v28 = 28494;
    }

    if (v19 == 0.0)
    {
      v29 = 0xE300000000000000;
    }

    else
    {
      v29 = 0xE200000000000000;
    }

    v30 = sub_10001AF94(v28, v29, &v49);

    *(v25 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v23, v47, "current location: %{private}s); new location: %{private}s); areEqual? %s", v25, 0x20u);
    swift_arrayDestroy();

    if (v19 == 0.0)
    {
      goto LABEL_40;
    }

LABEL_39:
    v46 = *&v4[v3];
    *&v4[v3] = v2;

    return;
  }

  if (v19 != 0.0)
  {
    goto LABEL_39;
  }

LABEL_40:
}

void sub_1000220FC(void *a1, void *a2)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (*a1 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:*a2 object:0];
}

void sub_1000221A0(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_isInEditor) == 1)
  {
    v2 = v1;
    v4 = *(v1 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus);
    if (qword_100046AB0 != -1)
    {
      swift_once();
    }

    v5 = sub_100034874();
    sub_100007CE8(v5, qword_100049400);
    v6 = sub_100034854();
    v7 = sub_100034C64();
    if (!os_log_type_enabled(v6, v7))
    {
LABEL_26:

      v16 = *(v2 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager);
      if (a1)
      {
        if (v16)
        {
          v17 = "requestWhenInUseAuthorizationWithPrompt";
LABEL_31:

          [v16 v17];
          return;
        }

        __break(1u);
      }

      else if (v16)
      {
        v17 = "requestWhenInUseAuthorization";
        goto LABEL_31;
      }

      __break(1u);
      return;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    if (v4 <= 1)
    {
      if (!v4)
      {
        v10 = 0xEE0064656E696D72;
        v11 = 0x6574654420746F4ELL;
        goto LABEL_25;
      }

      if (v4 != 1)
      {
        goto LABEL_24;
      }

      v11 = 0x7463697274736552;
    }

    else
    {
      if (v4 == 2)
      {
        v10 = 0xE600000000000000;
        v11 = 0x6465696E6544;
        goto LABEL_25;
      }

      if (v4 != 3)
      {
        if (v4 == 4)
        {
          v10 = 0x8000000100037C40;
          v11 = 0xD000000000000016;
LABEL_25:
          v15 = sub_10001AF94(v11, v10, &v19);

          *(v8 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v6, v7, "Requesting authorization (current: %s", v8, 0xCu);
          sub_1000026BC(v9);

          goto LABEL_26;
        }

LABEL_24:
        v10 = 0xE700000000000000;
        v11 = 0x6E776F6E6B6E55;
        goto LABEL_25;
      }

      v11 = 0x7A69726F68747541;
    }

    v10 = 0xEA00000000006465;
    goto LABEL_25;
  }

  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v12 = sub_100034874();
  sub_100007CE8(v12, qword_100049400);
  oslog = sub_100034854();
  v13 = sub_100034C54();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v13, "Tried to request location authorization outside of editor. This is not allowed.", v14, 2u);
  }
}

id sub_1000224F0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus);
  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v3 = sub_100034874();
  sub_100007CE8(v3, qword_100049400);
  v4 = sub_100034854();
  v5 = sub_100034C64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    if (v2 <= 1)
    {
      if (!v2)
      {
        v8 = 0xEE0064656E696D72;
        v9 = 0x6574654420746F4ELL;
        goto LABEL_17;
      }

      if (v2 != 1)
      {
        goto LABEL_16;
      }

      v9 = 0x7463697274736552;
    }

    else
    {
      if (v2 == 2)
      {
        v8 = 0xE600000000000000;
        v9 = 0x6465696E6544;
        goto LABEL_17;
      }

      if (v2 != 3)
      {
        if (v2 == 4)
        {
          v8 = 0x8000000100037C40;
          v9 = 0xD000000000000016;
LABEL_17:
          v10 = sub_10001AF94(v9, v8, &v12);

          *(v6 + 4) = v10;
          _os_log_impl(&_mh_execute_header, v4, v5, "startUpdatingLocation (authorization: %s", v6, 0xCu);
          sub_1000026BC(v7);

          goto LABEL_18;
        }

LABEL_16:
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E55;
        goto LABEL_17;
      }

      v9 = 0x7A69726F68747541;
    }

    v8 = 0xEA00000000006465;
    goto LABEL_17;
  }

LABEL_18:

  result = *(v1 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager);
  if (result)
  {

    return [result _startMonitoringSignificantLocationChangesOfDistance:1 withPowerBudget:50000.0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100022740()
{
  v1 = v0;
  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v2 = sub_100034874();
  sub_100007CE8(v2, qword_100049400);
  v3 = sub_100034854();
  v4 = sub_100034C64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "stopUpdatingLocation", v5, 2u);
  }

  result = *(v1 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager);
  if (result)
  {

    return [result stopMonitoringSignificantLocationChanges];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100022878()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AegirLocationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100022A28(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus;
  v4 = *(v2 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus);
  v5 = [a1 authorizationStatus];
  *(v2 + v3) = v5;
  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v6 = sub_100034874();
  sub_100007CE8(v6, qword_100049400);
  v7 = sub_100034854();
  v8 = sub_100034C64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = 0xEE0064656E696D72;
    v10 = 0x6574654420746F4ELL;
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v11 = 136315394;
    if (v4 <= 1)
    {
      v12 = 0x6574654420746F4ELL;
      v13 = 0xEE0064656E696D72;
      if (!v4)
      {
        goto LABEL_16;
      }

      if (v4 != 1)
      {
        goto LABEL_15;
      }

      v12 = 0x7463697274736552;
    }

    else
    {
      if (v4 == 2)
      {
        v13 = 0xE600000000000000;
        v12 = 0x6465696E6544;
        goto LABEL_16;
      }

      if (v4 != 3)
      {
        if (v4 == 4)
        {
          v12 = 0xD000000000000016;
          v13 = 0x8000000100037C40;
          goto LABEL_16;
        }

LABEL_15:
        v13 = 0xE700000000000000;
        v12 = 0x6E776F6E6B6E55;
LABEL_16:
        v14 = sub_10001AF94(v12, v13, &v16);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2080;
        if (v5 <= 1)
        {
          if (!v5)
          {
            goto LABEL_28;
          }

          if (v5 != 1)
          {
LABEL_27:
            v9 = 0xE700000000000000;
            v10 = 0x6E776F6E6B6E55;
            goto LABEL_28;
          }

          v10 = 0x7463697274736552;
        }

        else
        {
          if (v5 == 2)
          {
            v9 = 0xE600000000000000;
            v10 = 0x6465696E6544;
            goto LABEL_28;
          }

          if (v5 != 3)
          {
            if (v5 == 4)
            {
              v10 = 0xD000000000000016;
              v9 = 0x8000000100037C40;
LABEL_28:
              v15 = sub_10001AF94(v10, v9, &v16);

              *(v11 + 14) = v15;
              _os_log_impl(&_mh_execute_header, v7, v8, "Location manager didChangeAuthorization: %s -> %s", v11, 0x16u);
              swift_arrayDestroy();

              goto LABEL_29;
            }

            goto LABEL_27;
          }

          v10 = 0x7A69726F68747541;
        }

        v9 = 0xEA00000000006465;
        goto LABEL_28;
      }

      v12 = 0x7A69726F68747541;
    }

    v13 = 0xEA00000000006465;
    goto LABEL_16;
  }

LABEL_29:

  if (v5 >= 3)
  {
    if ((v5 - 3) <= 1)
    {

      sub_1000224F0();
    }
  }

  else
  {

    sub_100022740();
  }
}

uint64_t sub_100022E0C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100022E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100034894();
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000348B4();
  v8 = *(v15 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v15);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A83C(0, &qword_100047DB0, OS_dispatch_queue_ptr);
  v12 = sub_100034C94();
  aBlock[4] = a1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002DEC8;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);
  sub_1000348A4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002345C(&qword_100047DD0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000035B0(&unk_1000483C0, "j#");
  sub_1000234A4(&qword_100047DE0, &unk_1000483C0, "j#");
  sub_100034D54();
  sub_100034CB4();
  _Block_release(v13);

  (*(v16 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v15);
}

void sub_1000230F8(unint64_t a1)
{
  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v2 = sub_100034874();
  sub_100007CE8(v2, qword_100049400);

  v3 = sub_100034854();
  v4 = sub_100034C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136380675;
    sub_10000A83C(0, &qword_1000470C0, CLLocation_ptr);
    v7 = sub_100034AD4();
    v9 = sub_10001AF94(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Location manager didUpdateLocations: %{private}s", v5, 0xCu);
    sub_1000026BC(v6);
  }

  sub_100021958(a1);
  if (v10)
  {
    sub_100022E54(sub_1000220B4, &unk_100041F38);
  }
}

uint64_t sub_1000232A4()
{
  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v0 = sub_100034874();
  sub_100007CE8(v0, qword_100049400);
  swift_errorRetain();
  v1 = sub_100034854();
  v2 = sub_100034C54();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = sub_100034EE4();
    v7 = sub_10001AF94(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Location manager didFailWithError: %s", v3, 0xCu);
    sub_1000026BC(v4);
  }

  sub_100021958(0);
  return sub_100022E54(sub_1000220D8, &unk_100041F10);
}

uint64_t sub_100023444(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002345C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000234A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100022E0C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100023500(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000035B0(&qword_100046B90, &qword_100036758);
    v2 = sub_100034E74();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100007E98(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100007E98(v33, v34);
    result = sub_100034D64(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_100007E98(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000237C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10001CCAC(a3, v24 - v10, &unk_100047860, &unk_100036AD0);
  v12 = sub_100034B44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007DDC(v11, &unk_100047860, &unk_100036AD0);
  }

  else
  {
    sub_100034B34();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100034B04();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000349E4() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100007DDC(a3, &unk_100047860, &unk_100036AD0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007DDC(a3, &unk_100047860, &unk_100036AD0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_100023ACC(void *a1)
{
  v3 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v103 - v5;
  v7 = sub_100034354();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Geotime();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 96);
  if (!v16 || *(v1 + 112) != 1)
  {
    return;
  }

  v116 = v16;
  [a1 contentOffset];
  v18 = v17;
  [a1 frame];
  v19 = v18 / CGRectGetWidth(v125);
  if (qword_1000469B0 != -1)
  {
    swift_once();
  }

  if (v19 < 0.0)
  {
    v20 = [objc_opt_self() mainScreen];
    v21 = [v20 traitCollection];

    v22 = [v21 layoutDirection];
    v24 = *(qword_1000493C0 + 16);
    v112 = v8;
    if (v22 == 1)
    {
      if (v24)
      {
        v111 = v15;
        v25 = (qword_1000493C0 + 48 * v24);
        v26 = (v25 - 2);
        v27 = v25 - 1;
        v28 = v25 + 1;
        v29 = (v25 + 2);
        v30 = (v25 + 3);
LABEL_15:
        v41 = *v27;
        v42 = *v26;
        v43 = *v29;
        v44 = *v25;
        v45 = *v30;
        v113 = *v28;
        v114 = v42;
        v46 = v113;
        v47 = v44;
        v48 = v44;
        *&v115 = v45;
        sub_1000053EC(v43);
        v15 = v111;
        goto LABEL_17;
      }
    }

    else if (v24)
    {
      v111 = v15;
      v26 = (qword_1000493C0 + 32);
      v27 = (qword_1000493C0 + 40);
      v25 = (qword_1000493C0 + 48);
      v28 = (qword_1000493C0 + 56);
      v29 = (qword_1000493C0 + 64);
      v30 = (qword_1000493C0 + 72);
      goto LABEL_15;
    }

    v113 = 0;
    v114 = 0;
    v41 = 0;
    v43 = 0;
    *&v115 = 0;
    v47 = 1;
LABEL_17:
    v49 = fabs(v19);
    LODWORD(v23) = -1.5;
    if (v47 == 1)
    {
      goto LABEL_18;
    }

LABEL_26:
    v107 = v23;
    v56 = v41;
    v108 = v41;
    v57 = v113;
    sub_10001BC90(v114, v56, v47, v113, v43);
    v106 = v57;
    sub_10002A3CC();
    v58 = *(v1 + 96);
    v109 = v43;
    v111 = v47;
    if (v58)
    {
      v59 = v58;
      if ([v59 mode])
      {
        [v59 applyMode:0];
      }

      sub_1000054D4(v43);
    }

    else
    {
      sub_1000054D4(v43);
    }

    v60 = *(v1 + 56);
    v61 = *(v1 + 152);
    v62 = v112;
    v110 = *(v1 + 64);
    if (v61 || (v61 = *(v1 + 40)) != 0)
    {
      sub_1000053EC(v60);
      sub_1000053EC(v60);
      v63 = v61;
    }

    else
    {
      v77 = *(v1 + 48);
      v105 = objc_allocWithZone(CLLocation);
      sub_1000053EC(v60);
      sub_1000053EC(v60);
      sub_1000053EC(v60);
      v104 = v77;
      v63 = [v105 initWithLatitude:37.33182 longitude:-122.03118];

      sub_1000054D4(v60);
    }

    v64 = *(v1 + 72);
    v65 = *(v1 + 76);
    v66 = *(v1 + 80);
    v67 = *(v1 + 88);
    if (v60)
    {
      v60(v63);
      (*(v62 + 56))(v6, 0, 1, v7);
      (*(v62 + 32))(v11, v6, v7);
    }

    else
    {
      (*(v62 + 56))(v6, 1, 1, v7);
      v68 = v63;
      sub_100034334();
      if ((*(v62 + 48))(v6, 1, v7) != 1)
      {
        sub_100007DDC(v6, &unk_100048480, &qword_100036730);
      }
    }

    (*(v62 + 32))(v15, v11, v7);
    *&v15[*(v12 + 20)] = v63;
    v69 = v114;
    if (v114 <= 2)
    {
      v70 = v108;
      if (v114)
      {
        if (v114 == 1)
        {
          if (v108)
          {
            v82 = v63;
            sub_100009BF0(v15, v67);
LABEL_75:
            sub_100009914(v70, v67);
            v94 = v93;
            v96 = v95;
            v98 = v97;
            v100 = v99;
            sub_10000A5B0(v15);
            v101 = v106;

            sub_1000054D4(v60);
            *&v102 = v107;
            v115 = v102;
            [v116 setVista:v69];
            v120 = v94;
            v121 = v96;
            v122 = v98;
            v123 = v100;
            v117 = 1091188195;
            v118 = v115;
            v119 = 1065353216;
            [v116 applyTransitionFraction:&v120 fromStyleDefinition:&v117 toStyleDefinition:v49];
            sub_10001CAF4(v69, v70, v111, v113, v109);

            sub_1000054D4(v60);
            return;
          }
        }

        else if (v114 == 2)
        {
          v74 = qword_100046A10;
          v75 = v63;
          if (v74 != -1)
          {
            swift_once();
          }

          if ((v67 - 3) < 2)
          {
            v73 = &dword_100046D38;
            goto LABEL_69;
          }

          v76 = &dword_100046D18;
LABEL_74:
          v89 = v76[6];
          v90 = *(v76 + 1);
          v91 = *(v76 + 2);
          v92 = *v76;
          goto LABEL_75;
        }
      }

      else if (v108)
      {
        v80 = qword_100046A80;
        v81 = v63;
        if (v80 != -1)
        {
          swift_once();
        }

        if ((v67 - 3) < 2)
        {
          v73 = &dword_100046F78;
          goto LABEL_69;
        }

        v76 = &dword_100046F58;
        goto LABEL_74;
      }
    }

    else
    {
      v70 = v108;
      if ((v114 - 4) < 6)
      {
        v71 = qword_100046A18;
        v72 = v63;
        if (v71 != -1)
        {
          swift_once();
        }

        if ((v67 - 3) < 2)
        {
          v73 = &dword_100046D78;
LABEL_69:
          v85 = *v73;
          v86 = *(v73 + 1);
          v87 = *(v73 + 2);
          v88 = v73[6];
          goto LABEL_75;
        }

        v76 = &dword_100046D58;
        goto LABEL_74;
      }

      if (v114 == 3)
      {
        v78 = qword_100046A08;
        v79 = v63;
        if (v78 != -1)
        {
          swift_once();
        }

        if ((v67 - 3) < 2)
        {
          v73 = &dword_100046CF8;
          goto LABEL_69;
        }

        v76 = &dword_100046CD8;
        goto LABEL_74;
      }
    }

    v83 = qword_100046A00;
    v84 = v63;
    if (v83 != -1)
    {
      swift_once();
    }

    if ((v67 - 3) < 2)
    {
      v73 = &dword_100046CB8;
      goto LABEL_69;
    }

    v76 = &dword_100046C98;
    goto LABEL_74;
  }

  if (v19 > (*(qword_1000493C0 + 16) - 1))
  {
    v31 = [objc_opt_self() mainScreen];
    v32 = [v31 traitCollection];

    v33 = [v32 layoutDirection];
    v34 = *(qword_1000493C0 + 16);
    v112 = v8;
    if (v33 == 1)
    {
      if (v34)
      {
        v111 = v15;
        v35 = (qword_1000493C0 + 32);
        v36 = (qword_1000493C0 + 40);
        v37 = (qword_1000493C0 + 48);
        v38 = (qword_1000493C0 + 56);
        v39 = (qword_1000493C0 + 64);
        v40 = (qword_1000493C0 + 72);
LABEL_23:
        v41 = *v36;
        v51 = *v35;
        v43 = *v39;
        v52 = *v37;
        v53 = *v40;
        v113 = *v38;
        v114 = v51;
        v54 = v113;
        v47 = v52;
        v55 = v52;
        *&v115 = v53;
        sub_1000053EC(v43);
        v15 = v111;
        goto LABEL_25;
      }
    }

    else if (v34)
    {
      v111 = v15;
      v37 = (qword_1000493C0 + 48 * v34);
      v35 = (v37 - 2);
      v36 = v37 - 1;
      v38 = v37 + 1;
      v39 = (v37 + 2);
      v40 = (v37 + 3);
      goto LABEL_23;
    }

    v113 = 0;
    v114 = 0;
    v41 = 0;
    v43 = 0;
    *&v115 = 0;
    v47 = 1;
LABEL_25:
    *&v23 = fmod(v19, 1.0);
    v49 = *&v23;
    LODWORD(v23) = 1.5;
    if (v47 == 1)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_18:
  v50 = v116;
}

id sub_1000245B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _AegirEditingCoordinatorScrollViewScrollObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100024620(void *a1)
{
  v2 = *(v1 + 152);
  *(v1 + 152) = a1;
  v6 = a1;

  v3 = *(v1 + 96);
  if (v3)
  {
    v4 = v3;
    if (![v4 vista])
    {
      v5 = 0.0;
      if (((*(v1 + 152) != 0) & *(v1 + 144)) != 0)
      {
        v5 = 1.0;
      }

      [v4 setLocationDotAlpha:v5];
    }
  }
}

void sub_1000246C0()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v7 = sub_100034854();
  v8 = sub_100034C64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Setup location manager", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  if (qword_100046AB8 != -1)
  {
    swift_once();
  }

  v12 = qword_100049418;
  v13 = swift_allocObject();
  swift_weakInit();
  v29 = sub_10002D628;
  v30 = v13;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_10001804C;
  v28 = &unk_100042050;
  v14 = _Block_copy(&aBlock);

  v15 = [v11 addObserverForName:v12 object:0 queue:0 usingBlock:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();

  v16 = [v10 defaultCenter];
  if (qword_100046AC0 != -1)
  {
    swift_once();
  }

  v17 = qword_100049420;
  v18 = swift_allocObject();
  swift_weakInit();
  v29 = sub_10002D630;
  v30 = v18;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_10001804C;
  v28 = &unk_100042078;
  v19 = _Block_copy(&aBlock);

  v20 = [v16 addObserverForName:v17 object:0 queue:0 usingBlock:v19];
  _Block_release(v19);
  swift_unknownObjectRelease();

  v21 = objc_allocWithZone(type metadata accessor for AegirLocationManager());
  sub_1000215EC(1);
  v22 = *(v1 + 104);
  *(v1 + 104) = v23;
  v24 = v23;

  sub_1000221A0(0);
  sub_1000224F0();
}

uint64_t sub_100024A8C(uint64_t a1)
{
  v2 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v117 = &v110 - v4;
  v5 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v110 - v7;
  *&v121 = sub_100034354();
  *&v120 = *(v121 - 8);
  v9 = *(v120 + 64);
  __chkstk_darwin(v121);
  v11 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Geotime();
  v12 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v14 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100034874();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v20 = sub_100034854();
  v21 = sub_100034C64();
  v22 = os_log_type_enabled(v20, v21);
  v118 = v11;
  v119 = v14;
  v116 = v8;
  if (v22)
  {
    v23 = v15;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v124 = v25;
    *v24 = 136315138;
    v26 = a1;
    v27 = sub_100034CD4();
    v29 = sub_10001AF94(v27, v28, &v124);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Editor didRotate: %s", v24, 0xCu);
    sub_1000026BC(v25);

    result = (*(v16 + 8))(v19, v23);
  }

  else
  {
    v26 = a1;

    result = (*(v16 + 8))(v19, v15);
  }

  v31 = *(v123 + 96);
  if (v31)
  {
    v33 = *(v123 + 40);
    v32 = *(v123 + 48);
    v34 = *(v123 + 56);
    v35 = *(v123 + 64);
    v36 = v26;
    v37 = 0.0;
    if ((v26 - 2) <= 2)
    {
      v37 = flt_100037134[v26 - 2];
    }

    v38 = v123;
    v39 = *(v123 + 24);
    v114 = *(v123 + 32);
    v113 = v32;
    v40 = v31;
    v122 = v33;
    sub_1000053EC(v34);
    v112 = v40;
    v41 = [v40 vistaView];
    v111 = [v41 scene];

    v42 = *(v38 + 16);
    v43 = sub_100009644(v42, v36);
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = v43;

    *(v38 + 72) = v45;
    *(v38 + 76) = v47;
    *(v38 + 80) = v49;
    *(v38 + 88) = v50;
    if (v34)
    {
      v51 = v116;
      v34();
      v52 = v120;
      v53 = v121;
      (*(v120 + 56))(v51, 0, 1, v121);
      v54 = *(v52 + 32);
      v55 = v118;
      v54(v118, v51, v53);
    }

    else
    {
      v56 = v120;
      v57 = v116;
      v58 = v121;
      (*(v120 + 56))(v116, 1, 1, v121);
      v55 = v118;
      sub_100034334();
      v34 = 0;
      if ((*(v56 + 48))(v57, 1, v58) != 1)
      {
        sub_100007DDC(v57, &unk_100048480, &qword_100036730);
      }
    }

    v59 = v122;
    if (!v33)
    {
      v59 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
    }

    v60 = v119;
    (*(v120 + 32))(v119, v55, v121);
    *(v60 + *(v115 + 20)) = v59;
    if (v39 <= 2)
    {
      if (v39)
      {
        if (v39 == 1)
        {
          if (v114)
          {
            v71 = v122;
            sub_100009BF0(v60, v50);
LABEL_49:
            sub_100009914(v114, v50);
            v83 = v82;
            v85 = v84;
            v87 = v86;
            sub_10000A5B0(v60);
            v88 = v111;
            LODWORD(v89) = v83;
            [v111 setCameraOrbit:v89];
            [v88 setCameraOffset:v85];
            v91 = CLLocationCoordinate2DMake(0.0, 0.0);
            *v90.i64 = v91.longitude;
            v92.i64[0] = v39;
            v93.i64[0] = 1;
            v90.i64[1] = *&v91.latitude;
            __asm { FMOV            V0.2S, #-15.0 }

            [v88 setOffsetCoordinate:{COERCE_DOUBLE(vbslq_s8(vdupq_lane_s64(vceqq_s64(v92, v93), 0), v90, vcvtq_f64_f32(vmul_f32(v87, _D0))).i64[1])}];
            [v88 restingCameraRoll];
            v100 = v99;
            [v88 cameraPosition];
            v121 = v101;
            [v88 cameraTarget];
            v120 = v102;
            [v88 cameraUp];
            *&v103 = v37 + v100;
            [v88 setCamera:*&v121 target:*&v120 up:v104 roll:v103];
            [v88 updateCamera];
            v105 = sub_100034B44();
            v106 = v117;
            (*(*(v105 - 8) + 56))(v117, 1, 1, v105);
            v107 = swift_allocObject();
            swift_weakInit();
            sub_100034B24();

            v108 = sub_100034B14();
            v109 = swift_allocObject();
            v109[2] = v108;
            v109[3] = &protocol witness table for MainActor;
            v109[4] = v107;

            sub_10000E0F4(0, 0, v106, &unk_100037110, v109);

            sub_10002A9F0();

            return sub_1000054D4(v34);
          }
        }

        else if (v39 == 2)
        {
          v64 = qword_100046A10;
          v65 = v122;
          if (v64 != -1)
          {
            swift_once();
          }

          if ((v50 - 3) < 2)
          {
            v63 = &dword_100046D38;
            goto LABEL_43;
          }

          v66 = &dword_100046D18;
LABEL_48:
          v78 = v66[6];
          v79 = *(v66 + 1);
          v80 = *(v66 + 2);
          v81 = *v66;
          goto LABEL_49;
        }
      }

      else if (v114)
      {
        v69 = qword_100046A80;
        v70 = v122;
        if (v69 != -1)
        {
          swift_once();
        }

        if ((v50 - 3) < 2)
        {
          v63 = &dword_100046F78;
          goto LABEL_43;
        }

        v66 = &dword_100046F58;
        goto LABEL_48;
      }
    }

    else
    {
      if ((v39 - 4) < 6)
      {
        v61 = qword_100046A18;
        v62 = v122;
        if (v61 != -1)
        {
          swift_once();
        }

        if ((v50 - 3) < 2)
        {
          v63 = &dword_100046D78;
LABEL_43:
          v74 = *v63;
          v75 = *(v63 + 1);
          v76 = *(v63 + 2);
          v77 = v63[6];
          goto LABEL_49;
        }

        v66 = &dword_100046D58;
        goto LABEL_48;
      }

      if (v39 == 3)
      {
        v67 = qword_100046A08;
        v68 = v122;
        if (v67 != -1)
        {
          swift_once();
        }

        if ((v50 - 3) < 2)
        {
          v63 = &dword_100046CF8;
          goto LABEL_43;
        }

        v66 = &dword_100046CD8;
        goto LABEL_48;
      }
    }

    v72 = qword_100046A00;
    v73 = v122;
    if (v72 != -1)
    {
      swift_once();
    }

    if ((v50 - 3) < 2)
    {
      v63 = &dword_100046CB8;
      goto LABEL_43;
    }

    v66 = &dword_100046C98;
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_10002546C()
{
  sub_10002551C();
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = [v1 vistaView];
    [v2 purgeUnused];
  }

  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  sub_1000054D4(v4);
  v6 = *(v0 + 120);

  v7 = *(v0 + 136);

  return v0;
}

void sub_10002551C()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 104);
  if (v7)
  {
    v8 = v7;
    sub_100034814();
    v9 = sub_100034854();
    v10 = sub_100034C64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Teardown location manager", v11, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v12 = [objc_opt_self() defaultCenter];
    [v12 removeObserver:v1];

    sub_100022740();
    v13 = *(v1 + 104);
    *(v1 + 104) = 0;
  }
}

uint64_t sub_1000256BC()
{
  sub_10002546C();

  return _swift_deallocClassInstance(v0, 160, 7);
}

void sub_100025714(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v251 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v267 = &v251 - v11;
  v12 = sub_100034354();
  v268 = *(v12 - 8);
  v13 = *(v268 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v251 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v269 = &v251 - v17;
  *&v271 = type metadata accessor for Geotime();
  v18 = *(*(v271 - 8) + 64);
  v19 = __chkstk_darwin(v271);
  v21 = &v251 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  *&v272 = &v251 - v22;
  v23 = sub_100034874();
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v251 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v251 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v251 - v32;
  v34 = __chkstk_darwin(v31);
  v37 = &v251 - v36;
  if (*(v3 + 112) != 1)
  {
    return;
  }

  v266 = v35;
  v270 = v34;
  v263 = v16;
  v265 = v12;
  v264 = v10;
  v262 = v21;
  v38 = [*(v3 + 16) currentLook];
  v39 = [v38 identifier];

  v40 = sub_1000349B4();
  v42 = v41;

  v43 = sub_10000386C(v40, v42);
  if (v44)
  {
    sub_100034814();
    v45 = a1;
    v46 = sub_100034854();
    v47 = sub_100034C54();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v45;
      *v49 = v45;
      v50 = v45;
      _os_log_impl(&_mh_execute_header, v46, v47, "Current look identifier can not convert to Int: %@", v48, 0xCu);
      sub_100007DDC(v49, &unk_1000478C0, &unk_100036B60);
    }

    (*(v266 + 8))(v27, v270);
    return;
  }

  v51 = v43;
  v52 = [a1 identifier];
  v53 = sub_1000349B4();
  v55 = v54;

  v56 = sub_10000386C(v53, v55);
  if (v57)
  {
    sub_100034814();
    v58 = a1;
    v59 = sub_100034854();
    v60 = sub_100034C54();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      *(v61 + 4) = v58;
      *v62 = v58;
      v63 = v58;
      _os_log_impl(&_mh_execute_header, v59, v60, "Transitioning look identifier can not convert to Int: %@", v61, 0xCu);
      sub_100007DDC(v62, &unk_1000478C0, &unk_100036B60);
    }

    (*(v266 + 8))(v30, v270);
    return;
  }

  v64 = v56;
  v261 = v3;
  sub_100034814();
  v65 = sub_100034854();
  v66 = sub_100034C44();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 134218496;
    *(v67 + 4) = v51;
    *(v67 + 12) = 2048;
    *(v67 + 14) = v64;
    *(v67 + 22) = 2048;
    *(v67 + 24) = a2;
    _os_log_impl(&_mh_execute_header, v65, v66, "Scrolling from: %ld to index: %ld, progress: %f", v67, 0x20u);
  }

  v68 = v266 + 8;
  v69 = *(v266 + 8);
  v69(v37, v270);
  v70 = *(v261 + 96);
  if (v70)
  {
    if (v51 == v64)
    {
      v71 = v70;
      sub_100034814();
      v72 = sub_100034854();
      v73 = sub_100034C44();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 134217984;
        *(v74 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v72, v73, "Scrolled to: %ld", v74, 0xCu);
      }

      v69(v33, v270);
      if ([v71 mode] != 1)
      {
        [v71 applyMode:1];
      }

      return;
    }

    v75 = qword_1000469B0;
    v257 = v70;
    if (v75 == -1)
    {
      if ((v64 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      swift_once();
      if ((v64 & 0x8000000000000000) == 0)
      {
LABEL_22:
        v76 = *(qword_1000493C0 + 16);
        if (v64 < v76)
        {
          if (v51 < v76)
          {
            v77 = qword_1000493C0 + 32 + 48 * v64;
            v266 = *v77;
            v260 = *(v77 + 8);
            v78 = *(v77 + 16);
            v270 = *(v77 + 24);
            v80 = *(v77 + 32);
            v79 = *(v77 + 40);
            v81 = qword_1000493C0 + 32 + 48 * v51;
            v82 = *v81;
            v254 = *(v81 + 8);
            v83 = *(v81 + 16);
            v84 = *(v81 + 24);
            v66 = *(v81 + 32);
            v259 = *(v81 + 40);
            v251 = v84;
            v256 = v83;
            v255 = v66;
            v258 = v78;
            v253 = v79;
            v252 = v80;
            if (v51 >= v64)
            {
              v93 = v270;
              v94 = v78;
              sub_1000053EC(v80);
              v95 = v84;
              v96 = v83;
              sub_1000053EC(v66);
              v53 = v82;
              v3 = v261;
              v68 = v260;
            }

            else
            {
              v85 = objc_opt_self();
              v86 = v270;
              v87 = v78;
              sub_1000053EC(v80);
              v88 = v84;
              v89 = v83;
              sub_1000053EC(v66);
              v90 = [v85 mainScreen];
              v91 = [v90 traitCollection];

              v92 = [v91 layoutDirection];
              v53 = v82;
              v3 = v261;
              v68 = v260;
              if (v92 != 1)
              {
LABEL_30:
                v75 = v270;
                if (v51 < *(qword_1000493C0 + 16))
                {
                  v100 = qword_1000493C0 + 48 * v51;
                  v266 = *(v100 + 32);
                  v260 = *(v100 + 40);
                  v66 = *(v100 + 48);
                  v101 = *(v100 + 56);
                  v102 = *(v100 + 64);
                  v103 = *(v100 + 72);
                  v104 = v101;
                  v105 = v66;
                  sub_1000053EC(v102);

                  sub_1000054D4(v252);
                  if (v64 < *(qword_1000493C0 + 16))
                  {
                    v106 = qword_1000493C0 + 48 * v64;
                    v53 = *(v106 + 32);
                    v254 = *(v106 + 40);
                    v68 = *(v106 + 48);
                    v107 = *(v106 + 56);
                    v108 = *(v106 + 64);
                    v109 = *(v106 + 72);
                    v110 = v107;
                    v111 = v68;
                    sub_1000053EC(v108);

                    sub_1000054D4(v255);
                    v255 = v108;
                    v259 = v109;
                    v256 = v68;
                    v112 = v102;
                    v270 = v101;
                    v113 = v66;
                    v114 = v107;
                    LODWORD(v68) = v260;
                    goto LABEL_35;
                  }

LABEL_165:
                  __break(1u);
                  goto LABEL_166;
                }

LABEL_164:
                __break(1u);
                goto LABEL_165;
              }
            }

            if (v64 < v51)
            {
              v97 = [objc_opt_self() mainScreen];
              v98 = v53;
              v53 = [v97 traitCollection];

              v99 = [v53 layoutDirection];
              if (v99 == 1)
              {
                goto LABEL_30;
              }

              v53 = v98;
            }

            a2 = 1.0 - a2;
            v114 = v251;
            v113 = v258;
            v112 = v252;
LABEL_35:
            v115 = v266;
            if (v266 == v53)
            {
              if (v68)
              {
                v116 = 0x6C6961746544;
              }

              else
              {
                v116 = 1819047238;
              }

              if (v68)
              {
                v117 = 0xE600000000000000;
              }

              else
              {
                v117 = 0xE400000000000000;
              }

              if (v254)
              {
                v118 = 0x6C6961746544;
              }

              else
              {
                v118 = 1819047238;
              }

              if (v254)
              {
                v119 = 0xE600000000000000;
              }

              else
              {
                v119 = 0xE400000000000000;
              }

              if (v116 == v118 && v117 == v119)
              {
                sub_1000054D4(v112);

LABEL_56:
                v124 = v255;

                sub_1000054D4(v124);
                return;
              }

              v123 = sub_100034EC4();
              sub_1000054D4(v112);

              v115 = v266;
              if (v123)
              {

                goto LABEL_56;
              }
            }

            else
            {
              sub_1000054D4(v112);
            }

            v266 = v115;
            v120 = *(v3 + 56);
            v121 = *(v3 + 64);
            v122 = *(v3 + 152);
            v260 = v68;
            if (v122)
            {
              sub_1000053EC(v120);
              sub_1000053EC(v120);
              v258 = v122;
              sub_1000054D4(v255);
            }

            else
            {
              v125 = *(v3 + 40);
              v126 = *(v3 + 48);
              if (v125)
              {
                sub_1000053EC(v120);
                sub_1000053EC(v120);
                v127 = v125;
                sub_1000053EC(v120);
                v128 = v126;
                v129 = v127;
                sub_1000054D4(v255);

                v258 = v129;
              }

              else
              {
                v130 = objc_allocWithZone(CLLocation);
                sub_1000053EC(v120);
                sub_1000053EC(v120);
                sub_1000053EC(v120);
                v131 = v126;
                v258 = [v130 initWithLatitude:37.33182 longitude:-122.03118];
                sub_1000054D4(v255);
              }

              sub_1000054D4(v120);
            }

            v132 = *(v3 + 56);
            v133 = *(v3 + 64);
            v134 = *(v3 + 152);
            v255 = v132;
            v253 = v120;
            if (v134 || (v134 = *(v3 + 40)) != 0)
            {
              sub_1000053EC(v132);
              sub_1000053EC(v132);
              v135 = v258;
              v136 = v134;
            }

            else
            {
              v168 = *(v3 + 48);
              v169 = objc_allocWithZone(CLLocation);
              sub_1000053EC(v132);
              sub_1000053EC(v132);
              sub_1000053EC(v132);
              v170 = v168;
              v171 = v258;
              v136 = [v169 initWithLatitude:37.33182 longitude:-122.03118];

              sub_1000054D4(v132);
            }

            v137 = *(v3 + 120);
            v256 = v136;

            v138 = sub_100034714();
            v139 = v261;
            v140 = v138;

            v141 = *(v139 + 16);
            v142 = sub_100009644(v141, v140);
            v144 = v143;
            v146 = v145;
            v148 = v147;
            v149 = v142;

            *(v139 + 72) = v144;
            *(v139 + 76) = v146;
            *(v139 + 80) = v148;
            v150 = v149;
            *(v139 + 88) = v149;
            v151 = v253;
            v251 = v53;
            v252 = v121;
            v152 = v114;
            if (v253)
            {
              v153 = v270;
              v154 = v267;
              v151(v153);
              v3 = v268;
              v155 = v265;
              v75 = *(v268 + 56);
              (v75)(v154, 0, 1, v265);
              v156 = v269;
              (*(v3 + 32))(v269, v154, v155);
            }

            else
            {
              v3 = v268;
              v157 = v267;
              v158 = v265;
              v75 = *(v268 + 56);
              (v75)(v267, 1, 1, v265);
              v159 = v270;
              sub_100034334();
              if ((*(v3 + 48))(v157, 1, v158) != 1)
              {
                sub_100007DDC(v157, &unk_100048480, &qword_100036730);
              }

              v155 = v265;
              v156 = v269;
            }

            v53 = *(v3 + 32);
            v160 = v272;
            (v53)(v272, v156, v155);
            *(v160 + *(v271 + 20)) = v258;
            v259 = v133;
            if (v266 <= 2)
            {
              v66 = v152;
              if (v266)
              {
                v68 = v150;
                if (v266 == 1)
                {
                  v163 = v253;
                  if (v260)
                  {
                    v176 = v258;
                    sub_100009BF0(v272, v68);
                    goto LABEL_105;
                  }
                }

                else
                {
                  v163 = v253;
                  if (v266 == 2)
                  {
                    v165 = qword_100046A10;
                    v166 = v258;
                    if (v165 != -1)
                    {
                      swift_once();
                    }

                    if ((v68 - 3) < 2)
                    {
                      v164 = &dword_100046D38;
                      goto LABEL_99;
                    }

                    v167 = &dword_100046D18;
LABEL_104:
                    v183 = v167[6];
                    v184 = *(v167 + 1);
                    v185 = *(v167 + 2);
                    v186 = *v167;
LABEL_105:
                    v187 = v254;
                    sub_100009914(v260, v68);
                    v189 = v188;
                    v191 = v190;
                    v193 = v192;
                    v195 = v194;
                    sub_10000A5B0(v272);

                    sub_1000054D4(v163);
                    v196 = v255;
                    if (v255)
                    {
                      v197 = v66;
                      v198 = v66;
                      v199 = v264;
                      v196(v198);
                      v200 = v265;
                      (v75)(v199, 0, 1, v265);
                      v201 = v263;
                      (v53)(v263, v199, v200);
                      v202 = v261;
                    }

                    else
                    {
                      v203 = v66;
                      v204 = v264;
                      v205 = v3;
                      v200 = v265;
                      (v75)(v264, 1, 1, v265);
                      v197 = v203;
                      v206 = v203;
                      v201 = v263;
                      sub_100034334();
                      v207 = (*(v205 + 48))(v204, 1, v200);
                      v202 = v261;
                      if (v207 != 1)
                      {
                        sub_100007DDC(v204, &unk_100048480, &qword_100036730);
                      }
                    }

                    v208 = v262;
                    (v53)(v262, v201, v200);
                    v209 = v208;
                    v210 = v256;
                    *(v208 + *(v271 + 20)) = v256;
                    v211 = v251;
                    if (v251 <= 2)
                    {
                      v212 = v197;
                      v213 = v187;
                      if (v251)
                      {
                        if (v251 == 1)
                        {
                          if (v187)
                          {
                            v224 = v210;
                            sub_100009BF0(v208, v68);
LABEL_145:
                            sub_100009914(v213, v68);
                            v236 = v235;
                            v271 = v237;
                            v272 = v238;
                            v240 = v239;
                            sub_10000A5B0(v209);

                            v241 = v255;
                            sub_1000054D4(v255);
                            sub_10002A3CC();
                            v242 = *(v202 + 96);
                            v243 = v253;
                            if (v242)
                            {
                              v244 = v242;
                              if ([v244 mode])
                              {
                                [v244 applyMode:0];
                              }
                            }

                            v245 = [v257 vista];
                            if (v266 == v211)
                            {
                              if (v245 != v211)
                              {
                                [v257 setVista:v211];
                              }

                              v277 = v189;
                              v278 = v191;
                              v279 = v193;
                              v280 = v195;
                              v273 = v271;
                              v274 = v236;
                              v275 = v272;
                              v276 = v240;
                              v246 = v257;
                              [v257 applyTransitionFraction:&v277 fromStyleDefinition:&v273 toStyleDefinition:a2];
                            }

                            else
                            {
                              if (v245 != v266)
                              {
                                [v257 setVista:v266];
                              }

                              [v257 styleDefinition];
                              *v247.f32 = vdup_lane_s32(v279, 0);
                              *&v247.u32[2] = vext_s8(v279, v278, 4uLL);
                              v247.i32[0] = v277;
                              v248 = v272;
                              *v249.f32 = vdup_lane_s32(*&v272, 0);
                              *&v249.u32[2] = vext_s8(*&v272, v236, 4uLL);
                              v250 = v271;
                              v249.i32[0] = v271;
                              if ((vminv_u16(vmovn_s32(vceqq_f32(v247, v249))) & 1) == 0 || (vceq_f32(*&v278, v236).i32[1] & 1) == 0)
                              {
                                v277 = v271;
                                v278 = v236;
                                v279 = v272;
                                v280 = v240;
                                [v257 setStyleDefinition:&v277];
                                v250 = v271;
                                v248 = v272;
                              }

                              v277 = v189;
                              v278 = v191;
                              v279 = v193;
                              v280 = v195;
                              v273 = v250;
                              v274 = v236;
                              v275 = v248;
                              v276 = v240;
                              v246 = v257;
                              [v257 applyTransitionFraction:v266 fromVista:&v277 fromStyleDefinition:v211 toVista:&v273 toStyleDefinition:a2];
                            }

                            sub_1000054D4(v241);
                            sub_1000054D4(v243);

                            return;
                          }
                        }

                        else if (v251 == 2)
                        {
                          v217 = qword_100046A10;
                          v218 = v210;
                          if (v217 != -1)
                          {
                            swift_once();
                          }

                          if ((v68 - 3) < 2)
                          {
                            v216 = &dword_100046D38;
                            goto LABEL_139;
                          }

                          v219 = &dword_100046D18;
LABEL_144:
                          v231 = v219[6];
                          v232 = *(v219 + 1);
                          v233 = *(v219 + 2);
                          v234 = *v219;
                          goto LABEL_145;
                        }
                      }

                      else if (v187)
                      {
                        v222 = qword_100046A80;
                        v223 = v210;
                        if (v222 != -1)
                        {
                          swift_once();
                        }

                        if ((v68 - 3) < 2)
                        {
                          v216 = &dword_100046F78;
                          goto LABEL_139;
                        }

                        v219 = &dword_100046F58;
                        goto LABEL_144;
                      }
                    }

                    else
                    {
                      v212 = v197;
                      v213 = v187;
                      if ((v251 - 4) < 6)
                      {
                        v214 = qword_100046A18;
                        v215 = v210;
                        if (v214 != -1)
                        {
                          swift_once();
                        }

                        if ((v68 - 3) < 2)
                        {
                          v216 = &dword_100046D78;
LABEL_139:
                          v227 = *v216;
                          v228 = *(v216 + 1);
                          v229 = *(v216 + 2);
                          v230 = v216[6];
                          goto LABEL_145;
                        }

                        v219 = &dword_100046D58;
                        goto LABEL_144;
                      }

                      if (v251 == 3)
                      {
                        v220 = qword_100046A08;
                        v221 = v210;
                        if (v220 != -1)
                        {
                          swift_once();
                        }

                        if ((v68 - 3) < 2)
                        {
                          v216 = &dword_100046CF8;
                          goto LABEL_139;
                        }

                        v219 = &dword_100046CD8;
                        goto LABEL_144;
                      }
                    }

                    v225 = qword_100046A00;
                    v226 = v210;
                    if (v225 != -1)
                    {
                      swift_once();
                    }

                    if ((v68 - 3) < 2)
                    {
                      v216 = &dword_100046CB8;
                      goto LABEL_139;
                    }

                    v219 = &dword_100046C98;
                    goto LABEL_144;
                  }
                }
              }

              else
              {
                v68 = v150;
                v163 = v253;
                if (v260)
                {
                  v174 = qword_100046A80;
                  v175 = v258;
                  if (v174 != -1)
                  {
                    swift_once();
                  }

                  if ((v68 - 3) < 2)
                  {
                    v164 = &dword_100046F78;
                    goto LABEL_99;
                  }

                  v167 = &dword_100046F58;
                  goto LABEL_104;
                }
              }
            }

            else
            {
              v66 = v152;
              if ((v266 - 4) < 6)
              {
                v161 = qword_100046A18;
                v162 = v258;
                v68 = v150;
                if (v161 == -1)
                {
LABEL_72:
                  v163 = v253;
                  if ((v68 - 3) < 2)
                  {
                    v164 = &dword_100046D78;
LABEL_99:
                    v179 = *v164;
                    v180 = *(v164 + 1);
                    v181 = *(v164 + 2);
                    v182 = v164[6];
                    goto LABEL_105;
                  }

                  v167 = &dword_100046D58;
                  goto LABEL_104;
                }

LABEL_166:
                swift_once();
                goto LABEL_72;
              }

              v68 = v150;
              v163 = v253;
              if (v266 == 3)
              {
                v172 = qword_100046A08;
                v173 = v258;
                if (v172 != -1)
                {
                  swift_once();
                }

                if ((v68 - 3) < 2)
                {
                  v164 = &dword_100046CF8;
                  goto LABEL_99;
                }

                v167 = &dword_100046CD8;
                goto LABEL_104;
              }
            }

            v177 = qword_100046A00;
            v178 = v258;
            if (v177 != -1)
            {
              swift_once();
            }

            if ((v68 - 3) < 2)
            {
              v164 = &dword_100046CB8;
              goto LABEL_99;
            }

            v167 = &dword_100046C98;
            goto LABEL_104;
          }

LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

LABEL_162:
        __break(1u);
        goto LABEL_163;
      }
    }

    __break(1u);
    goto LABEL_162;
  }
}

void sub_100027060(void *a1)
{
  v2 = v1;
  v4 = sub_100034874();
  v121 = *(v4 - 1);
  v5 = *(v121 + 64);
  __chkstk_darwin(v4);
  v7 = &v114[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v114[-v10];
  v12 = sub_100034354();
  v119 = *(v12 - 8);
  v13 = *(v119 + 64);
  __chkstk_darwin(v12);
  v15 = &v114[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = type metadata accessor for Geotime();
  v16 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v120 = &v114[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = [a1 identifier];
  v19 = sub_1000349B4();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  v23 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v24 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

    goto LABEL_64;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v122 = v19;
      v123 = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (!v22)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (--v22)
        {
          v19 = 0;
          v36 = &v122 + 1;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            v38 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              break;
            }

            ++v36;
            if (!--v22)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v19 == 45)
      {
        if (!v22)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (--v22)
        {
          v19 = 0;
          v30 = &v122 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v22)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v22)
      {
        v19 = 0;
        v41 = &v122;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            break;
          }

          v43 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v43 + v42;
          if (__OFADD__(v43, v42))
          {
            break;
          }

          v41 = (v41 + 1);
          if (!--v22)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if ((v19 & 0x1000000000000000) != 0)
    {
      v25 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v25 = sub_100034DD4();
    }

    v26 = *v25;
    if (v26 == 43)
    {
      if (v23 < 1)
      {
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      v22 = v23 - 1;
      if (v23 == 1)
      {
        goto LABEL_61;
      }

      v19 = 0;
      if (v25)
      {
        v33 = v25 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            goto LABEL_61;
          }

          v35 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            goto LABEL_61;
          }

          v19 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            goto LABEL_61;
          }

          ++v33;
          if (!--v22)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v26 == 45)
    {
      if (v23 < 1)
      {
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

      v22 = v23 - 1;
      if (v23 == 1)
      {
        goto LABEL_61;
      }

      v19 = 0;
      if (v25)
      {
        v27 = v25 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            goto LABEL_61;
          }

          v29 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            goto LABEL_61;
          }

          v19 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            goto LABEL_61;
          }

          ++v27;
          if (!--v22)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else
    {
      if (!v23)
      {
LABEL_61:
        v19 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_62;
      }

      v19 = 0;
      if (v25)
      {
        do
        {
          v39 = *v25 - 48;
          if (v39 > 9)
          {
            goto LABEL_61;
          }

          v40 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            goto LABEL_61;
          }

          v19 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            goto LABEL_61;
          }

          ++v25;
        }

        while (--v23);
      }
    }

    LOBYTE(v22) = 0;
LABEL_62:
    v126 = v22;
    v18 = v22;
    goto LABEL_63;
  }

  v126 = 0;
  v19 = sub_100003B6C(v19, v21, 10);
  v18 = v112;
LABEL_63:

  if (v18)
  {
LABEL_64:
    sub_100034814();
    v44 = a1;
    v45 = sub_100034854();
    v46 = sub_100034C54();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v44;
      *v48 = v44;
      v49 = v44;
      _os_log_impl(&_mh_execute_header, v45, v46, "Current look identifier can not convert to Int: %@", v47, 0xCu);
      sub_100007DDC(v48, &unk_1000478C0, &unk_100036B60);
    }

    (*(v121 + 8))(v7, v4);
    return;
  }

  v50 = *(v2 + 96);
  if (!v50)
  {
    return;
  }

  v51 = qword_1000469B0;
  v52 = v50;
  if (v51 == -1)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v113 = v52;
  swift_once();
  v52 = v113;
  if (v19 < 0)
  {
    goto LABEL_132;
  }

LABEL_70:
  if (v19 >= *(qword_1000493C0 + 16))
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v53 = v15;
  v54 = qword_1000493C0 + 48 * v19;
  v116 = *(v54 + 32);
  v117 = v52;
  v115 = *(v54 + 40);
  v55 = *(v54 + 56);
  a1 = *(v2 + 56);
  v56 = *(v2 + 152);
  v121 = *(v2 + 64);
  if (v56)
  {
    v15 = v55;
    v57 = v55;
    sub_1000053EC(a1);
    v58 = v57;
    sub_1000053EC(a1);
    v59 = v56;
  }

  else
  {
    v15 = v55;
    v60 = *(v2 + 40);
    if (v60)
    {
      v61 = v55;
      sub_1000053EC(a1);
      v62 = v61;
      sub_1000053EC(a1);
      v63 = v60;
    }

    else
    {
      v64 = objc_allocWithZone(CLLocation);
      v65 = v15;
      sub_1000053EC(a1);
      v66 = v65;
      sub_1000053EC(a1);
      v63 = [v64 initWithLatitude:37.33182 longitude:-122.03118];
    }

    v59 = v63;
  }

  v67 = *(v2 + 120);
  v68 = v56;
  v19 = v59;

  v69 = sub_100034714();

  v70 = *(v2 + 16);
  v71 = sub_100009644(v70, v69);
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v18 = v71;

  *(v2 + 72) = v73;
  *(v2 + 76) = v75;
  *(v2 + 80) = v77;
  *(v2 + 88) = v18;
  if (a1)
  {
    (a1)();
    v78 = v119;
    (*(v119 + 56))(v11, 0, 1, v12);
    (*(v78 + 32))(v53, v11, v12);
    v21 = v120;
  }

  else
  {
    v78 = v119;
    (*(v119 + 56))(v11, 1, 1, v12);
    sub_100034334();
    v79 = (*(v78 + 48))(v11, 1, v12);
    v21 = v120;
    if (v79 != 1)
    {
      sub_100007DDC(v11, &unk_100048480, &qword_100036730);
    }
  }

  (*(v78 + 32))(v21, v53, v12);
  *(v21 + *(v118 + 20)) = v19;
  v4 = v116;
  if (v116 > 2)
  {
    LOBYTE(v12) = v115;
    if ((v116 - 4) < 6)
    {
      v80 = qword_100046A18;
      v81 = v19;
      if (v80 == -1)
      {
LABEL_84:
        if ((v18 - 3) < 2)
        {
          v82 = &dword_100046D78;
LABEL_110:
          v93 = *v82;
          v94 = *(v82 + 1);
          v95 = *(v82 + 2);
          v96 = v82[6];
          goto LABEL_116;
        }

        v85 = &dword_100046D58;
        goto LABEL_115;
      }

LABEL_138:
      swift_once();
      goto LABEL_84;
    }

    if (v116 == 3)
    {
      v86 = qword_100046A08;
      v87 = v19;
      if (v86 != -1)
      {
        swift_once();
      }

      if ((v18 - 3) < 2)
      {
        v82 = &dword_100046CF8;
        goto LABEL_110;
      }

      v85 = &dword_100046CD8;
      goto LABEL_115;
    }

LABEL_106:
    v91 = qword_100046A00;
    v92 = v19;
    if (v91 != -1)
    {
      swift_once();
    }

    if ((v18 - 3) < 2)
    {
      v82 = &dword_100046CB8;
      goto LABEL_110;
    }

    v85 = &dword_100046C98;
    goto LABEL_115;
  }

  LOBYTE(v12) = v115;
  if (!v116)
  {
    if (v115)
    {
      v88 = qword_100046A80;
      v89 = v19;
      if (v88 != -1)
      {
        swift_once();
      }

      if ((v18 - 3) < 2)
      {
        v82 = &dword_100046F78;
        goto LABEL_110;
      }

      v85 = &dword_100046F58;
      goto LABEL_115;
    }

    goto LABEL_106;
  }

  if (v116 != 1)
  {
    if (v116 == 2)
    {
      v83 = qword_100046A10;
      v84 = v19;
      if (v83 != -1)
      {
        swift_once();
      }

      if ((v18 - 3) < 2)
      {
        v82 = &dword_100046D38;
        goto LABEL_110;
      }

      v85 = &dword_100046D18;
LABEL_115:
      v97 = v85[6];
      v98 = *(v85 + 1);
      v99 = *(v85 + 2);
      v100 = *v85;
      goto LABEL_116;
    }

    goto LABEL_106;
  }

  if ((v115 & 1) == 0)
  {
    goto LABEL_106;
  }

  v90 = v19;
  sub_100009BF0(v21, v18);
LABEL_116:
  sub_100009914(v12, v18);
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  sub_10000A5B0(v21);

  sub_1000054D4(a1);
  v109 = v117;
  if ([v117 vista] != v4)
  {
    [v109 setVista:v4];
  }

  sub_10002A3CC();
  v110 = *(v2 + 96);
  if (v110)
  {
    v111 = v110;
    if ([v111 mode])
    {
      [v111 applyMode:0];
    }
  }

  LODWORD(v122) = v102;
  v123 = v104;
  v124 = v106;
  v125 = v108;
  [v109 applyStyleDefinition:&v122];
  sub_100028C28(0, 0);
  if (!*(v2 + 24) && *(v2 + 152) && (*(v2 + 144) & 1) != 0)
  {
    [v109 pulseLocationDot];

    sub_1000054D4(a1);
    *(v2 + 114) = 1;
  }

  else
  {
    sub_10002A564(200000000);

    sub_1000054D4(a1);
  }
}

id sub_100027C58(void *a1, uint64_t *a2)
{
  v125 = a2;
  v134 = sub_1000342C4();
  v120 = *(v134 - 8);
  v3 = *(v120 + 64);
  v4 = __chkstk_darwin(v134);
  v129 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v130 = &v119 - v6;
  v124 = type metadata accessor for Geotime();
  v7 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v135 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000035B0(&qword_1000479B0, &qword_100036B90);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v128 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v136 = &v119 - v13;
  v14 = sub_100034874();
  v132 = *(v14 - 8);
  v133 = v14;
  v15 = *(v132 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v119 - v19;
  sub_100034814();
  v21 = a1[2];
  v143[0] = a1[3];
  v22 = a1[4];
  v23 = a1[5];
  v131 = v21;
  v24 = v21;
  sub_10001CCAC(v143, &aBlock, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v22);
  v25 = sub_100034854();
  v26 = sub_100034C64();
  v121 = v24;

  sub_100007DDC(v143, &unk_1000481C0, &qword_100036F70);
  v123 = v22;
  v122 = v23;
  sub_1000054D4(v22);
  v27 = os_log_type_enabled(v25, v26);
  v119 = v18;
  v127 = a1;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v28 = 136315138;
    v30 = sub_100007B44(*a1, *(a1 + 8), v131);
    v32 = sub_10001AF94(v30, v31, &aBlock);
    v33 = v120;

    *(v28 + 4) = v32;
    v34 = v134;
    _os_log_impl(&_mh_execute_header, v25, v26, "Creating vista controller with configuration: %s", v28, 0xCu);
    sub_1000026BC(v29);

    (*(v132 + 8))(v20, v133);
  }

  else
  {

    (*(v132 + 8))(v20, v133);
    v34 = v134;
    v33 = v120;
  }

  v35 = v125;
  v36 = [v125 contentOverlayView];
  [v36 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = [objc_msgSend(v35 "environment")];
  swift_unknownObjectRelease();
  v46 = [v45 assetDirectory];
  swift_unknownObjectRelease();
  v47 = v136;
  sub_1000342B4();

  (*(v33 + 56))(v47, 0, 1, v34);
  v48 = v121;
  v49 = v121;
  v50 = v129;
  if (!v131)
  {
    v49 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v51 = v127;
  v52 = *v127;
  v53 = v127[8];
  v55 = v126[18];
  v54 = v126[19];
  v56 = v126[20];
  v125 = *(v126 + 11);
  v57 = swift_allocObject();
  v58 = v51[1];
  v57[1] = *v51;
  v57[2] = v58;
  v57[3] = v51[2];
  v59 = v48;
  sub_10001CCAC(v143, &aBlock, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v123);
  v60 = sub_100007FF8();
  [v60 setQuadViewOptions:{objc_msgSend(v60, "quadViewOptions") | 0x200}];
  v61 = [objc_allocWithZone(NUNIAstronomyVistaView) initWithFrame:v60 configuration:{v38, v40, v42, v44}];

  v62 = objc_allocWithZone(NUNIScene);
  v141 = sub_10002C5A0;
  v142 = v57;
  aBlock = _NSConcreteStackBlock;
  v138 = 1107296256;
  v139 = sub_100033AE4;
  v140 = &unk_100042028;
  v63 = _Block_copy(&aBlock);
  v131 = v57;

  v64 = [v62 initWithSphereoids:16515070 currentDateBlock:v63];
  _Block_release(v63);

  [v64 setSnap:3];
  [v64 setBackgroundType:2];
  v126 = v64;
  [v61 setScene:v64];
  v65 = [objc_allocWithZone(NUNIAstronomyVistaController) initWithVistaView:v61];
  [v65 setIsBacklightTransitionEnabled:1];
  [v65 setActiveModeFrameInterval:1];
  [v65 setVista:v52];
  [v65 setVistaTransitionStyle:1];
  v127 = v61;
  v66 = [v61 scene];
  v67 = [v66 currentDateBlock];

  v68 = v67[2](v67);
  v69 = v135;
  sub_100034324();

  _Block_release(v67);
  *(v69 + *(v124 + 20)) = v49;
  v70 = v53;
  if (v53)
  {
    v71 = sub_100034EC4();
    v72 = v49;

    v73 = v130;
    if ((v71 & 1) == 0 || v52 == 2)
    {
      v74 = v50;
      if (v52 > 2)
      {
        if ((v52 - 4) < 6)
        {
          if (qword_100046A18 != -1)
          {
            swift_once();
          }

          v75 = v125;
          v76 = v128;
          if (v125 - 3 < 2)
          {
            v77 = &dword_100046D78;
LABEL_35:
            v89 = *v77;
            v90 = *(v77 + 1);
            v91 = *(v77 + 2);
            v92 = v77[6];
LABEL_39:
            sub_100009914(v70, v75);
            v85 = v98 * 1.1;
            goto LABEL_40;
          }

          v93 = &dword_100046D58;
          goto LABEL_38;
        }

        if (v52 == 3)
        {
          if (qword_100046A08 != -1)
          {
            swift_once();
          }

          v75 = v125;
          v76 = v128;
          v74 = v50;
          if (v125 - 3 < 2)
          {
            v77 = &dword_100046CF8;
            goto LABEL_35;
          }

          v93 = &dword_100046CD8;
          goto LABEL_38;
        }

LABEL_59:
        if (qword_100046A00 != -1)
        {
          swift_once();
        }

        v75 = v125;
        v76 = v128;
        v74 = v50;
        if (v125 - 3 < 2)
        {
          v77 = &dword_100046CB8;
          goto LABEL_35;
        }

        v93 = &dword_100046C98;
        goto LABEL_38;
      }

      if (!v52)
      {
        if (qword_100046A80 != -1)
        {
          swift_once();
        }

        v75 = v125;
        v76 = v128;
        if (v125 - 3 < 2)
        {
          v77 = &dword_100046F78;
          goto LABEL_35;
        }

        v93 = &dword_100046F58;
        goto LABEL_38;
      }

      if (v52 == 1)
      {
        v116 = v125;
        sub_100009BF0(v135, v125);
        v75 = v116;
        v76 = v128;
        goto LABEL_39;
      }

      if (v52 != 2)
      {
        goto LABEL_59;
      }

LABEL_31:
      if (qword_100046A10 != -1)
      {
        swift_once();
      }

      v75 = v125;
      v76 = v128;
      v74 = v50;
      if (v125 - 3 < 2)
      {
        v77 = &dword_100046D38;
        goto LABEL_35;
      }

      v93 = &dword_100046D18;
LABEL_38:
      v94 = v93[6];
      v95 = *(v93 + 1);
      v96 = *(v93 + 2);
      v97 = *v93;
      goto LABEL_39;
    }
  }

  else
  {
    v78 = v49;

    v73 = v130;
    if (v52 == 2)
    {
      goto LABEL_31;
    }
  }

  v74 = v50;
  if (v52 == 3)
  {
    v76 = v128;
    v79 = v125;
    if (qword_100046A48 != -1)
    {
      v117 = v125;
      swift_once();
      v79 = v117;
    }

    if (v79 - 3 >= 2)
    {
      v80 = &dword_100046E58;
    }

    else
    {
      v80 = &dword_100046E78;
    }
  }

  else
  {
    v76 = v128;
    v79 = v125;
    if (qword_100046A40 != -1)
    {
      v118 = v125;
      swift_once();
      v79 = v118;
    }

    if (v79 - 3 >= 2)
    {
      v80 = &dword_100046E18;
    }

    else
    {
      v80 = &dword_100046E38;
    }
  }

  v81 = v80[6];
  v82 = *(v80 + 2);
  v83 = *(v80 + 1);
  v84 = *v80;
  sub_100009914(v70, v79);
LABEL_40:
  *&aBlock = v85;
  v138 = v86;
  v139 = v87;
  LODWORD(v140) = v88;
  [v65 applyStyleDefinition:&aBlock];
  sub_10001CCAC(v136, v76, &qword_1000479B0, &qword_100036B90);
  v99 = v134;
  if ((*(v33 + 48))(v76, 1, v134) == 1)
  {
    sub_100007DDC(v76, &qword_1000479B0, &qword_100036B90);
  }

  else
  {
    v128 = v49;
    (*(v33 + 32))(v73, v76, v99);
    sub_1000342A4(v100);
    v102 = v101;
    [v65 setCacheDirectory:v101];

    v103 = v119;
    sub_100034804();
    (*(v33 + 16))(v74, v73, v99);
    v104 = sub_100034854();
    v105 = sub_100034C54();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      aBlock = v125;
      *v106 = 136315138;
      sub_10002D5E0(&qword_1000479B8, 255, &type metadata accessor for URL);
      v107 = sub_100034EA4();
      v108 = v74;
      v110 = v109;
      v111 = *(v33 + 8);
      v111(v108, v99);
      v112 = sub_10001AF94(v107, v110, &aBlock);

      *(v106 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v104, v105, "Vista Controller created with asset directory: %s", v106, 0xCu);
      sub_1000026BC(v125);

      (*(v132 + 8))(v103, v133);
      v111(v130, v99);
    }

    else
    {

      v113 = *(v33 + 8);
      v113(v74, v99);
      (*(v132 + 8))(v103, v133);
      v113(v73, v99);
    }

    v49 = v128;
  }

  [v65 disableCloudDataFetch:0];
  if ([v65 mode] != 1)
  {
    [v65 applyMode:1];
  }

  [v65 updateLocation:0 fallbackLocation:v49 animated:0];
  v114 = [v65 vistaView];
  [v114 updateSunLocationAnimated:0];

  sub_10000A5B0(v135);
  sub_100007DDC(v136, &qword_1000479B0, &qword_100036B90);
  return v65;
}