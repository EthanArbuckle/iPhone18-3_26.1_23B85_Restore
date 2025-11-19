uint64_t sub_10001BA84()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 6);

  v9 = *(v0 + 11);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001BB60()
{
  v1 = *(*(type metadata accessor for GeometryProxy() - 8) + 80);

  return sub_10001B5E8(v0 + 16);
}

uint64_t sub_10001BBC8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  v4 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10001BC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062B30, &unk_100048010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BC88(uint64_t a1)
{
  v2 = sub_100003968(&qword_100062B30, &unk_100048010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001BCF4()
{
  result = qword_100063348;
  if (!qword_100063348)
  {
    sub_100003AC0(&qword_100063350, &qword_100048A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063348);
  }

  return result;
}

uint64_t sub_10001BD60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v150 = a2;
  v3 = type metadata accessor for IconView();
  v126 = *(v3 - 8);
  v153 = *(v126 + 64);
  __chkstk_darwin(v3 - 8);
  v117 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for GlobalCoordinateSpace();
  v5 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v119 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for DragGesture();
  v127 = *(v124 - 8);
  v7 = *(v127 + 64);
  __chkstk_darwin(v124);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100003968(&qword_1000627F0, &qword_100047CD0);
  v131 = *(v130 - 8);
  v10 = *(v131 + 64);
  __chkstk_darwin(v130);
  v122 = &v116 - v11;
  v132 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
  v152 = *(v132 - 8);
  v12 = *(v152 + 64);
  __chkstk_darwin(v132);
  v125 = &v116 - v13;
  v14 = sub_100003968(&qword_100063430, &qword_100048B30);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = (&v116 - v16);
  v18 = sub_100003968(&qword_100063438, &qword_100048B38);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v116 - v21;
  v23 = sub_100003968(&qword_100063440, &qword_100048B40);
  v118 = v23;
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v116 - v25;
  v128 = sub_100003968(&qword_100063448, &qword_100048B48);
  v129 = *(v128 - 8);
  v27 = *(v129 + 64);
  __chkstk_darwin(v128);
  v120 = &v116 - v28;
  v136 = sub_100003968(&qword_100063450, &qword_100048B50);
  v135 = *(v136 - 8);
  v29 = *(v135 + 64);
  __chkstk_darwin(v136);
  v121 = &v116 - v30;
  v133 = sub_100003968(&qword_100063458, &qword_100048B58);
  v31 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v134 = &v116 - v32;
  v137 = sub_100003968(&qword_100063460, &qword_100048B60);
  v33 = *(*(v137 - 8) + 64);
  __chkstk_darwin(v137);
  v139 = &v116 - v34;
  v138 = sub_100003968(&qword_100063468, &qword_100048B68);
  v35 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v141 = &v116 - v36;
  v140 = sub_100003968(&qword_100063470, &qword_100048B70);
  v37 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140);
  v143 = &v116 - v38;
  v142 = sub_100003968(&qword_100063478, &qword_100048B78);
  v39 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v144 = &v116 - v40;
  v145 = sub_100003968(&qword_100063480, &qword_100048B80);
  v41 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v147 = &v116 - v42;
  v149 = sub_100003968(&qword_100063488, &qword_100048B88);
  v43 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v146 = &v116 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v148 = &v116 - v46;
  *v17 = static Alignment.center.getter();
  v17[1] = v47;
  v48 = sub_100003968(&qword_100063490, &qword_100048B90);
  sub_10001CF20(a1, (v17 + *(v48 + 44)));
  AXDeviceIsPad();
  AXDeviceIsPad();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10000BB84(v17, v22, &qword_100063430, &qword_100048B30);
  v49 = &v22[*(v19 + 44)];
  v50 = v159;
  *v49 = v158;
  *(v49 + 1) = v50;
  *(v49 + 2) = v160;
  v116 = v26;
  sub_10000BB84(v22, v26, &qword_100063438, &qword_100048B38);
  v26[*(v23 + 36)] = 0;
  static CoordinateSpaceProtocol<>.global.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v151 = a1;
  v51 = v117;
  sub_10001F36C(a1, v117);
  v52 = *(v126 + 80);
  v53 = (v52 + 16) & ~v52;
  v54 = swift_allocObject();
  sub_10001F3D4(v51, v54 + v53);
  sub_100003A28(&qword_100062830, &type metadata accessor for DragGesture);
  sub_100003A28(&qword_100062838, &type metadata accessor for DragGesture.Value);
  v55 = v122;
  v56 = v124;
  Gesture<>.onChanged(_:)();

  (*(v127 + 8))(v9, v56);
  v57 = v51;
  sub_10001F36C(a1, v51);
  v126 = v53;
  v58 = swift_allocObject();
  sub_10001F3D4(v51, v58 + v53);
  sub_100003E3C(&qword_100062840, &qword_1000627F0, &qword_100047CD0);
  v59 = v125;
  v60 = v130;
  Gesture.onEnded(_:)();

  (*(v131 + 8))(v55, v60);
  static GestureMask.all.getter();
  v61 = sub_10001F56C();
  v62 = sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8);
  v63 = v120;
  v64 = v118;
  v65 = v132;
  v66 = v116;
  View.gesture<A>(_:including:)();
  (*(v152 + 8))(v59, v65);
  sub_100003CE8(v66, &qword_100063440, &qword_100048B40);
  sub_10001F36C(v151, v51);
  v67 = v126;
  v152 = v52;
  v68 = swift_allocObject();
  v69 = v57;
  sub_10001F3D4(v57, v68 + v67);
  v154 = v64;
  v155 = v65;
  v156 = v61;
  v157 = v62;
  v70 = v121;
  swift_getOpaqueTypeConformance2();
  v71 = v128;
  View.onTapGesture(count:perform:)();

  (*(v129 + 8))(v63, v71);
  v72 = objc_opt_self();
  v73 = [v72 defaultCenter];
  if (qword_100062728 != -1)
  {
    swift_once();
  }

  v74 = v133;
  v75 = v134;
  v76 = &v134[*(v133 + 52)];
  NSNotificationCenter.publisher(for:object:)();

  v77 = v151;
  v78 = v69;
  sub_10001F36C(v151, v69);
  v79 = swift_allocObject();
  sub_10001F3D4(v69, v79 + v67);
  (*(v135 + 32))(v75, v70, v136);
  v80 = (v75 + *(v74 + 56));
  *v80 = sub_10001F744;
  v80[1] = v79;
  v81 = [v72 defaultCenter];
  if (qword_100062700 != -1)
  {
    swift_once();
  }

  v82 = v137;
  v83 = v139;
  v84 = &v139[*(v137 + 52)];
  NSNotificationCenter.publisher(for:object:)();

  sub_10001F36C(v77, v69);
  v85 = swift_allocObject();
  sub_10001F3D4(v69, v85 + v67);
  sub_10000BB84(v75, v83, &qword_100063458, &qword_100048B58);
  v86 = (v83 + *(v82 + 56));
  *v86 = sub_10001FE98;
  v86[1] = v85;
  v87 = [v72 defaultCenter];
  v88 = v138;
  v89 = v72;
  v90 = v141;
  v91 = &v141[*(v138 + 52)];
  NSNotificationCenter.publisher(for:object:)();

  sub_10001F36C(v77, v78);
  v92 = swift_allocObject();
  sub_10001F3D4(v78, v92 + v67);
  sub_10000BB84(v83, v90, &qword_100063460, &qword_100048B60);
  v93 = (v90 + *(v88 + 56));
  *v93 = sub_10001F7AC;
  v93[1] = v92;
  v94 = [v89 defaultCenter];
  if (qword_100062748 != -1)
  {
    swift_once();
  }

  v95 = v140;
  v96 = v143;
  v97 = &v143[*(v140 + 52)];
  NSNotificationCenter.publisher(for:object:)();

  sub_10001F36C(v77, v78);
  v98 = swift_allocObject();
  sub_10001F3D4(v78, v98 + v67);
  sub_10000BB84(v90, v96, &qword_100063468, &qword_100048B68);
  v99 = (v96 + *(v95 + 56));
  *v99 = sub_10001F7C4;
  v99[1] = v98;
  sub_10001F36C(v77, v78);
  v100 = swift_allocObject();
  sub_10001F3D4(v78, v100 + v67);
  v101 = v144;
  sub_10000BB84(v96, v144, &qword_100063470, &qword_100048B70);
  v102 = (v101 + *(v142 + 36));
  *v102 = sub_10001F7DC;
  v102[1] = v100;
  v102[2] = 0;
  v102[3] = 0;
  sub_10001F36C(v77, v78);
  v103 = swift_allocObject();
  sub_10001F3D4(v78, v103 + v67);
  v104 = v101;
  v105 = v147;
  sub_10000BB84(v104, v147, &qword_100063478, &qword_100048B78);
  v106 = (v105 + *(v145 + 36));
  *v106 = 0;
  v106[1] = 0;
  v106[2] = sub_10001F838;
  v106[3] = v103;
  v154 = static AXLTUtilities.AXLTLocString(_:)();
  v155 = v107;
  sub_10000B6A0();
  v108 = Text.init<A>(_:)();
  v110 = v109;
  v112 = v111;
  sub_10001F898();
  v113 = v146;
  View.accessibility(label:)();
  sub_10000B6F4(v108, v110, v112 & 1);

  sub_100003CE8(v105, &qword_100063480, &qword_100048B80);
  v114 = v148;
  ModifiedContent<>.accessibility(identifier:)();
  sub_100003CE8(v113, &qword_100063488, &qword_100048B88);
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)();
  return sub_100003CE8(v114, &qword_100063488, &qword_100048B88);
}

uint64_t sub_10001CF20@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v44 = a2;
  v42 = type metadata accessor for AccessibilityTraits();
  v40 = *(v42 - 8);
  v3 = *(v40 + 64);
  __chkstk_darwin(v42);
  v38 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003968(&qword_1000634E0, &qword_100048BB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v37 - v7;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003968(&qword_1000634E8, &qword_100048BB8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v43 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v41 = v37 - v18;
  static Color.white.getter();
  v39 = Color.opacity(_:)();

  AXDeviceIsPad();
  AXDeviceIsPad();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v53 + 6) = *(&v53[3] + 6);
  *(&v53[1] + 6) = *(&v53[4] + 6);
  *(&v53[2] + 6) = *(&v53[5] + 6);
  v19 = *(a1 + 80);
  v37[1] = a1;
  v20 = *(a1 + 88);
  LOBYTE(v48[0]) = v19;
  *(&v48[0] + 1) = v20;
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();
  Image.init(_internalSystemName:)();
  (*(v10 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v9);
  v21 = 0.0;
  Image.resizable(capInsets:resizingMode:)();

  (*(v10 + 8))(v13, v9);
  LOBYTE(v48[0]) = v19;
  *(&v48[0] + 1) = v20;
  State.wrappedValue.getter();
  v22 = 1;
  if ((v45[0] & 1) == 0)
  {
    static SymbolRenderingMode.hierarchical.getter();
    v22 = 0;
  }

  v23 = type metadata accessor for SymbolRenderingMode();
  (*(*(v23 - 8) + 56))(v8, v22, 1, v23);
  v24 = Image.symbolRenderingMode(_:)();

  sub_100003CE8(v8, &qword_1000634E0, &qword_100048BB0);
  sub_10001D618();
  sub_10001D618();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v52 = 1;
  *&v51[6] = *(&v53[6] + 6);
  *&v51[22] = *(&v53[7] + 6);
  *&v51[38] = *(&v53[8] + 6);
  LOBYTE(v48[0]) = v19;
  *(&v48[0] + 1) = v20;
  State.wrappedValue.getter();
  if ((v45[0] & 1) == 0)
  {
    v21 = sub_10001D618() / 15.0;
  }

  v25 = sub_10001D618() / 15.0;
  v26 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v45[0] = v24;
  LOWORD(v45[1]) = 1;
  *(&v45[1] + 2) = *v51;
  *(&v45[2] + 2) = *&v51[16];
  *(&v45[3] + 2) = *&v51[32];
  *&v45[4] = *&v51[46];
  *(&v45[4] + 1) = v21;
  *&v46 = v25;
  *(&v46 + 1) = KeyPath;
  v47 = v26;
  v28 = v38;
  static AccessibilityTraits.isImage.getter();
  sub_100003968(&qword_1000634F0, &unk_100048BF0);
  sub_10001FCD0();
  v29 = v41;
  View.accessibility(removeTraits:)();
  (*(v40 + 8))(v28, v42);
  v48[4] = v45[4];
  v48[5] = v46;
  v49 = v47;
  v48[0] = v45[0];
  v48[1] = v45[1];
  v48[2] = v45[2];
  v48[3] = v45[3];
  sub_100003CE8(v48, &qword_1000634F0, &unk_100048BF0);
  v30 = v43;
  sub_100006098(v29, v43, &qword_1000634E8, &qword_100048BB8);
  v31 = v39;
  *&v50[0] = v39;
  WORD4(v50[0]) = 256;
  *(v50 + 10) = v53[0];
  *(&v50[1] + 10) = v53[1];
  *(&v50[2] + 10) = v53[2];
  *(&v50[3] + 1) = *(&v53[2] + 14);
  v32 = v50[1];
  v33 = v44;
  *v44 = v50[0];
  v33[1] = v32;
  v34 = v50[3];
  v33[2] = v50[2];
  v33[3] = v34;
  v35 = sub_100003968(&qword_100063510, &qword_100048C08);
  sub_100006098(v30, v33 + *(v35 + 48), &qword_1000634E8, &qword_100048BB8);
  sub_100006098(v50, v45, &qword_100063518, &qword_100048C10);
  sub_100003CE8(v29, &qword_1000634E8, &qword_100048BB8);
  sub_100003CE8(v30, &qword_1000634E8, &qword_100048BB8);
  *&v45[0] = v31;
  WORD4(v45[0]) = 256;
  *(v45 + 10) = v53[0];
  *(&v45[1] + 10) = v53[1];
  *(&v45[2] + 10) = v53[2];
  *(&v45[3] + 1) = *(&v53[2] + 14);
  return sub_100003CE8(v45, &qword_100063518, &qword_100048C10);
}

double sub_10001D618()
{
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();
  IsPad = AXDeviceIsPad();
  result = 32.1428571;
  if (IsPad)
  {
    result = 40.4761905;
  }

  v3 = 34.0;
  if (!IsPad)
  {
    v3 = 27.0;
  }

  if (v4)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10001D6A4(uint64_t a1, double *a2)
{
  v3 = type metadata accessor for LayoutDirection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = *(a2 + 1);
  v12 = *(a2 + 2);
  v34 = *a2;
  v35 = v11;
  v36 = v12;
  sub_100003968(&qword_1000634D8, &qword_100048BA8);
  v13 = Binding.wrappedValue.getter();
  if (v39 < 1.0)
  {
    __chkstk_darwin(v13);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  DragGesture.Value.translation.getter();
  v15 = v14;
  v17 = v16;
  v39 = v14;
  v40 = v16;
  v18 = a2 + *(type metadata accessor for IconView() + 48);
  sub_10000B0F4(v10);
  (*(v4 + 104))(v7, enum case for LayoutDirection.rightToLeft(_:), v3);
  LOBYTE(v18) = static LayoutDirection.== infix(_:_:)();
  v19 = *(v4 + 8);
  v19(v7, v3);
  v19(v10, v3);
  if (v18)
  {
    v15 = -v15;
    v39 = v15;
  }

  v20 = a2[7];
  v21 = *(a2 + 8);
  v22 = *(a2 + 9);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v41.width = 0.0;
  v41.height = 0.0;
  if (CGSizeEqualToSize(v38, v41))
  {
    goto LABEL_8;
  }

  v34 = v20;
  v35 = v21;
  v36 = v22;
  State.wrappedValue.getter();
  if (vabdd_f64(v38.width, v15) >= 2.0 || (v34 = v20, v35 = v21, v36 = v22, result = State.wrappedValue.getter(), vabdd_f64(v38.height, v17) >= 2.0))
  {
LABEL_8:
    v34 = v20;
    v35 = v21;
    v36 = v22;
    State.wrappedValue.getter();
    v42.width = 0.0;
    v42.height = 0.0;
    if (CGSizeEqualToSize(v38, v42))
    {
      v24 = a2[3];
      v25 = *(a2 + 4);
      v26 = *(a2 + 5);
      v27 = *(a2 + 6);
      v34 = v24;
      v35 = v25;
      v36 = v26;
      v37 = v27;
      sub_100003968(&qword_100062888, &qword_100048A70);
      Binding.wrappedValue.getter();
      v28 = v38;
      if (AXDeviceIsPad())
      {
        v29 = 68.0;
      }

      else
      {
        v29 = 54.0;
      }

      safeOffset(offset:size:containerSize:foreheadWindowRect:)(v28.width, v28.height, v29, v29, a2[12], a2[13], CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
      v34 = v24;
      v35 = v25;
      v36 = v26;
      v37 = v27;
      v38.width = v30;
      v38.height = v31;
      Binding.wrappedValue.setter();
      v34 = v24;
      v35 = v25;
      v36 = v26;
      v37 = v27;
      Binding.wrappedValue.getter();
      v34 = v20;
      v35 = v21;
      v36 = v22;
      State.wrappedValue.setter();
    }

    static Animation.linear(duration:)();
    Animation.delay(_:)();

    Animation.repeatCount(_:autoreverses:)();

    __chkstk_darwin(v32);
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10001DB0C(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for IconView();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 8);
  v13 = *(v2 + 9);
  *&v42 = v2[7];
  v11 = v42;
  *(&v42 + 1) = v12;
  *&v43 = v13;
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  *&v14 = *&v39 + a1;
  v16 = *(v2 + 4);
  v17 = *(v2 + 5);
  v18 = *(v2 + 6);
  *&v42 = v2[3];
  v15 = v42;
  *(&v42 + 1) = v16;
  *&v43 = v17;
  *(&v43 + 1) = v18;

  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  *&v39 = v15;
  *(&v39 + 1) = v16;
  v40 = v17;
  v41 = v18;
  v37 = v14;
  v38 = v44[1];
  Binding.wrappedValue.setter();
  *&v42 = v11;
  *(&v42 + 1) = v12;
  *&v43 = v13;
  State.wrappedValue.getter();
  *&v19 = *(&v39 + 1) + a2;
  *&v42 = v15;
  *(&v42 + 1) = v16;
  *&v43 = v17;
  *(&v43 + 1) = v18;
  Binding.wrappedValue.getter();
  *&v39 = v15;
  *(&v39 + 1) = v16;
  v40 = v17;
  v41 = v18;
  v37 = v44[0];
  v38 = v19;
  Binding.wrappedValue.setter();
  *&v42 = v15;
  *(&v42 + 1) = v16;
  *&v43 = v17;
  *(&v43 + 1) = v18;
  Binding.wrappedValue.getter();
  v20 = v39;
  if (AXDeviceIsPad())
  {
    v21 = 68.0;
  }

  else
  {
    v21 = 54.0;
  }

  v22 = v2[12];
  v23 = v2[13];
  v24 = *(v2 + *(v7 + 60));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  safeOffset(offset:size:containerSize:foreheadWindowRect:)(*&v20, *(&v20 + 1), v21, v21, v22, v23, *&v42, *(&v42 + 1), *&v43, *(&v43 + 1));
  *&v42 = v15;
  *(&v42 + 1) = v16;
  *&v43 = v17;
  *(&v43 + 1) = v18;
  *&v39 = v25;
  *(&v39 + 1) = v26;
  Binding.wrappedValue.setter();

  v27 = static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  v28 = qword_1000654E8;
  sub_10001F36C(v3, v10);
  if (!os_log_type_enabled(v28, v27))
  {
    return sub_10001FC1C(v10);
  }

  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v44[0] = v30;
  *v29 = 136315138;
  v31 = *(v10 + 4);
  *&v42 = *(v10 + 3);
  *(&v42 + 1) = v31;
  v43 = *(v10 + 40);
  Binding.wrappedValue.getter();
  v42 = v39;
  type metadata accessor for CGSize(0);
  v32 = String.init<A>(describing:)();
  v34 = v33;
  sub_10001FC1C(v10);
  v35 = sub_100031EB4(v32, v34, v44);

  *(v29 + 4) = v35;
  _os_log_impl(&_mh_execute_header, v28, v27, "changeOffset iconOffset: %s", v29, 0xCu);
  sub_100018190(v30);
}

uint64_t sub_10001DEE0(uint64_t a1, uint64_t a2)
{
  static Animation.linear(duration:)();
  Animation.delay(_:)();

  Animation.repeatCount(_:autoreverses:)();

  withAnimation<A>(_:_:)();

  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.setter();
  return sub_10001E338();
}

void sub_10001DFCC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  sub_100025378(3, v6, v7, *(a1 + 96), *(a1 + 104));
  Binding.wrappedValue.setter();
  sub_10001E07C();
}

void sub_10001E07C()
{
  v1 = v0;
  v2 = type metadata accessor for IconView();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = *(v0 + 32);
  v22.width = *(v0 + 24);
  v22.height = v7;
  v23 = *(v0 + 40);
  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  v8 = NSStringFromCGSize(v21);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = String._bridgeToObjectiveC()();
  [v6 setObject:v8 forKey:v9];

  [v6 synchronize];
  v10 = static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  v11 = qword_1000654E8;
  sub_10001F36C(v1, v5);
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v14 = *(v5 + 4);
    v22.width = *(v5 + 3);
    v22.height = v14;
    v23 = *(v5 + 40);
    Binding.wrappedValue.getter();
    v22 = v21;
    type metadata accessor for CGSize(0);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_10001FC1C(v5);
    v18 = sub_100031EB4(v15, v17, &v20);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v10, "save iconOffset: %s", v12, 0xCu);
    sub_100018190(v13);
  }

  else
  {

    sub_10001FC1C(v5);
  }
}

uint64_t sub_10001E338()
{
  v1 = v0;
  v2 = type metadata accessor for IconView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  aBlock = *v0;
  v20 = v5;
  v21 = v6;
  sub_100003968(&qword_1000634D8, &qword_100048BA8);
  v7 = Binding.wrappedValue.getter();
  if (v25 < 1.0)
  {
    __chkstk_darwin(v7);
    *(&v18 - 2) = v0;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  v9 = *(v0 + 144);
  aBlock = *(v0 + 136);
  v8 = aBlock;
  v20 = v9;
  sub_100003968(&qword_100062FE8, &qword_100048BA0);
  State.wrappedValue.getter();
  v10 = v25;
  [*&v25 invalidate];

  v11 = objc_opt_self();
  v12 = *(v1 + 128);
  sub_10001F36C(v1, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_10001F3D4(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v23 = sub_10001FB5C;
  v24 = v14;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100032E40;
  v22 = &unk_10005E910;
  v15 = _Block_copy(&aBlock);

  v16 = COERCE_DOUBLE([v11 scheduledTimerWithTimeInterval:0 repeats:v15 block:v12]);
  _Block_release(v15);
  aBlock = v8;
  v20 = v9;
  v25 = v16;
  return State.wrappedValue.setter();
}

uint64_t sub_10001E5E8(uint64_t a1, uint64_t a2)
{
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  v3 = static AXLTCaptionsProvider.shared;
  v4 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  v6 = *(v3 + v4);
  sub_100003968(&qword_100062FF0, &unk_100048670);
  return State.wrappedValue.setter();
}

uint64_t sub_10001E6B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  sub_100025378(3, v8, v9, *(a2 + 96), *(a2 + 104));
  Binding.wrappedValue.setter();
  sub_10001E07C();
  v10 = *(a2 + 56);
  v11 = *(a2 + 72);
  sub_100003968(&qword_100062880, &unk_100047D20);
  return State.wrappedValue.setter();
}

uint64_t sub_10001E790(uint64_t a1, void *a2)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v4 = result;
    v9 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v10), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v11);
      sub_10000B374(v10);

      result = swift_dynamicCast();
      if (result)
      {
        v7 = a2[1];
        v8 = a2[2];
        v10[0] = *a2;
        v10[1] = v7;
        v10[2] = v8;
        v11[0] = v9;
        sub_100003968(&qword_1000634D8, &qword_100048BA8);
        return Binding.wrappedValue.setter();
      }
    }

    else
    {

      return sub_10000B374(v10);
    }
  }

  return result;
}

uint64_t sub_10001E898(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  sub_100003968(&qword_100062FE8, &qword_100048BA0);
  State.wrappedValue.getter();
  [v4 invalidate];

  return State.wrappedValue.setter();
}

uint64_t sub_10001E944()
{
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[6];
  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  if (AXDeviceIsPad())
  {
    v1 = 68.0;
  }

  else
  {
    v1 = 54.0;
  }

  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v0 + *(type metadata accessor for IconView() + 52));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  safeOffset(offset:size:containerSize:foreheadWindowRect:)(v6, v7, v1, v1, v2, v3, v8, v9, v10, v11);
  return Binding.wrappedValue.setter();
}

uint64_t type metadata accessor for IconView()
{
  result = qword_1000633B0;
  if (!qword_1000633B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001EAD8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  sub_100003968(&qword_1000634D8, &qword_100048BA8);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10001EB40()
{
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  v0 = os_log(_:dso:log:_:_:)();
  __chkstk_darwin(v0);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10001EC3C(uint64_t *a1)
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v2 = static AXLTSettingsManager.shared;
  v3 = OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity;
  swift_beginAccess();
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v5 = *(v2 + v3);
  sub_100003968(&qword_1000634D8, &qword_100048BA8);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10001ED0C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10001F36C(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10001F3D4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_10001F438;
  a2[1] = v7;
  return result;
}

uint64_t sub_10001EE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003968(&qword_100062DA8, &qword_1000484E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001EEE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003968(&qword_100062DA8, &qword_1000484E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001EF94()
{
  sub_10001F1E8(319, &qword_1000633C0, &type metadata for CGFloat, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_10001F2EC(319, &qword_1000633C8, type metadata accessor for CGSize, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_10001F2EC(319, &qword_100062E40, type metadata accessor for CGSize, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10001F1E8(319, &qword_100062E58, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v4 <= 0x3F)
          {
            sub_10001F238();
            if (v5 <= 0x3F)
            {
              sub_10001F288();
              if (v6 <= 0x3F)
              {
                sub_10001F2EC(319, &qword_100062E20, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for ForeheadWindow();
                  if (v8 <= 0x3F)
                  {
                    sub_10001F2EC(319, &unk_1000633D8, &type metadata accessor for AnyCancellable, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
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
}

void sub_10001F1E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10001F238()
{
  result = qword_1000633D0;
  if (!qword_1000633D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000633D0);
  }

  return result;
}

void sub_10001F288()
{
  if (!qword_100062E50)
  {
    sub_100003AC0(&qword_100062D88, &qword_100048850);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100062E50);
    }
  }
}

void sub_10001F2EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10001F36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F438@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IconView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001BD60(v4, a1);
}

uint64_t sub_10001F4E8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for IconView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10001F56C()
{
  result = qword_100063498;
  if (!qword_100063498)
  {
    sub_100003AC0(&qword_100063440, &qword_100048B40);
    sub_10001F624();
    sub_100003E3C(&qword_1000634B0, &qword_1000634B8, &qword_100048B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063498);
  }

  return result;
}

unint64_t sub_10001F624()
{
  result = qword_1000634A0;
  if (!qword_1000634A0)
  {
    sub_100003AC0(&qword_100063438, &qword_100048B38);
    sub_100003E3C(&qword_1000634A8, &qword_100063430, &qword_100048B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000634A0);
  }

  return result;
}

uint64_t sub_10001F6DC()
{
  v1 = *(type metadata accessor for IconView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_10001E338();
  v4 = *(v2 + 112);
  v5 = *(v2 + 120);
  return v4(v3);
}

uint64_t sub_10001F7DC()
{
  v1 = *(type metadata accessor for IconView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_10001E338();
}

uint64_t sub_10001F838()
{
  v1 = *(type metadata accessor for IconView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10001E898(v2);
}

unint64_t sub_10001F898()
{
  result = qword_1000634C0;
  if (!qword_1000634C0)
  {
    sub_100003AC0(&qword_100063480, &qword_100048B80);
    sub_10001F924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000634C0);
  }

  return result;
}

unint64_t sub_10001F924()
{
  result = qword_1000634C8;
  if (!qword_1000634C8)
  {
    sub_100003AC0(&qword_100063478, &qword_100048B78);
    sub_100003E3C(&qword_1000634D0, &qword_100063470, &qword_100048B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000634C8);
  }

  return result;
}

uint64_t sub_10001F9DC()
{
  v1 = type metadata accessor for IconView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 72);

  v11 = *(v0 + v3 + 88);

  v12 = *(v0 + v3 + 120);

  v13 = *(v0 + v3 + 144);

  v14 = v1[12];
  sub_100003968(&qword_100062D78, &unk_1000484B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for LayoutDirection();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  v17 = *(v5 + v1[14]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001FB5C()
{
  v0 = *(*(type metadata accessor for IconView() - 8) + 80);

  return sub_10001EB40();
}

uint64_t sub_10001FBCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001FC1C(uint64_t a1)
{
  v2 = type metadata accessor for IconView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001FC94()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_10001DB0C(*v1, v1[1]);
}

unint64_t sub_10001FCD0()
{
  result = qword_1000634F8;
  if (!qword_1000634F8)
  {
    sub_100003AC0(&qword_1000634F0, &unk_100048BF0);
    sub_10001FD88();
    sub_100003E3C(&qword_100062CF8, &qword_100062D00, &qword_100048150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000634F8);
  }

  return result;
}

unint64_t sub_10001FD88()
{
  result = qword_100063500;
  if (!qword_100063500)
  {
    sub_100003AC0(&qword_100063508, &unk_100049370);
    sub_10000B424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063500);
  }

  return result;
}

id sub_10001FF60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LTApplication();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100020260()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LTApplicationDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t property wrapper backing initializer of AXLTCaptionsView.timer()
{
  sub_100003968(&qword_100062D88, &qword_100048850);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t AXLTCaptionsView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = swift_allocObject();
  v4 = v1[11];
  *(v3 + 11) = v1[10];
  *(v3 + 12) = v4;
  v5 = v1[13];
  *(v3 + 13) = v1[12];
  *(v3 + 14) = v5;
  v6 = v1[7];
  *(v3 + 7) = v1[6];
  *(v3 + 8) = v6;
  v7 = v1[9];
  *(v3 + 9) = v1[8];
  *(v3 + 10) = v7;
  v8 = v1[3];
  *(v3 + 3) = v1[2];
  *(v3 + 4) = v8;
  v9 = v1[5];
  *(v3 + 5) = v1[4];
  *(v3 + 6) = v9;
  v10 = v1[1];
  *(v3 + 1) = *v1;
  *(v3 + 2) = v10;
  *a1 = sub_1000207FC;
  a1[1] = v3;
  return sub_100020804(v1, v12);
}

uint64_t sub_100020448@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_100003968(&qword_100063600, &qword_100048DA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v29[-v7 - 8];
  v9 = sub_100003968(&qword_100063608, &qword_100048DA8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v29[-v11 - 8];
  v13 = type metadata accessor for GeometryProxy();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  if ((a2[1] & 0xFE) == 2)
  {
    (*(v14 + 16))(&v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v13, v16);
    v17 = (*(v14 + 80) + 240) & ~*(v14 + 80);
    v18 = swift_allocObject();
    v19 = a2[11];
    *(v18 + 11) = a2[10];
    *(v18 + 12) = v19;
    v20 = a2[13];
    *(v18 + 13) = a2[12];
    *(v18 + 14) = v20;
    v21 = a2[7];
    *(v18 + 7) = a2[6];
    *(v18 + 8) = v21;
    v22 = a2[9];
    *(v18 + 9) = a2[8];
    *(v18 + 10) = v22;
    v23 = a2[3];
    *(v18 + 3) = a2[2];
    *(v18 + 4) = v23;
    v24 = a2[5];
    *(v18 + 5) = a2[4];
    *(v18 + 6) = v24;
    v25 = a2[1];
    *(v18 + 1) = *a2;
    *(v18 + 2) = v25;
    (*(v14 + 32))(&v18[v17], &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v13);
    *v12 = sub_100023F38;
    v12[1] = v18;
    swift_storeEnumTagMultiPayload();
    sub_100020804(a2, v29);
    sub_100003968(&qword_100063618, &qword_100048DB8);
    sub_100003E3C(&qword_100063620, &qword_100063618, &qword_100048DB8);
    sub_100023E54();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v8 = static HorizontalAlignment.leading.getter();
    *(v8 + 1) = 0x4018000000000000;
    v8[16] = 0;
    v27 = sub_100003968(&qword_100063610, &qword_100048DB0);
    sub_100022DE8(a2, &v8[*(v27 + 44)]);
    *&v8[*(v5 + 36)] = 0;
    sub_100006098(v8, v12, &qword_100063600, &qword_100048DA0);
    swift_storeEnumTagMultiPayload();
    sub_100003968(&qword_100063618, &qword_100048DB8);
    sub_100003E3C(&qword_100063620, &qword_100063618, &qword_100048DB8);
    sub_100023E54();
    _ConditionalContent<>.init(storage:)();
    return sub_100003CE8(v8, &qword_100063600, &qword_100048DA0);
  }
}

uint64_t sub_100020858@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a4;
  v87 = type metadata accessor for LocalCoordinateSpace();
  v7 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v86 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DragGesture();
  v10 = *(v9 - 8);
  v89 = v9;
  v90 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v85 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003968(&qword_1000627F0, &qword_100047CD0);
  v14 = *(v13 - 8);
  v92 = v13;
  v93 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v88 = &v77 - v16;
  v17 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
  v18 = *(v17 - 8);
  v94 = v17;
  v95 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v91 = &v77 - v20;
  v82 = type metadata accessor for GeometryProxy();
  v80 = *(v82 - 8);
  v83 = *(v80 + 64);
  __chkstk_darwin(v82);
  v79 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ScrollViewProxy();
  v22 = *(v78 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v78);
  v77 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100003968(&qword_100063650, &qword_100048DD0);
  v24 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v81 = &v77 - v25;
  static Axis.Set.vertical.getter();
  v97 = a2;
  v98 = a3;
  v99 = a1;
  sub_100003968(&qword_100063658, &qword_100048DD8);
  sub_100023FC8();
  ScrollView.init(_:showsIndicators:content:)();
  v26 = v78;
  (*(v22 + 16))(&v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v78);
  v27 = v79;
  v28 = v80;
  v29 = v82;
  (*(v80 + 16))(v79, a3, v82);
  v30 = (*(v22 + 80) + 240) & ~*(v22 + 80);
  v31 = (v23 + *(v28 + 80) + v30) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v33 = a2[11];
  *(v32 + 11) = a2[10];
  *(v32 + 12) = v33;
  v34 = a2[13];
  *(v32 + 13) = a2[12];
  *(v32 + 14) = v34;
  v35 = a2[7];
  *(v32 + 7) = a2[6];
  *(v32 + 8) = v35;
  v36 = a2[9];
  *(v32 + 9) = a2[8];
  *(v32 + 10) = v36;
  v37 = a2[3];
  *(v32 + 3) = a2[2];
  *(v32 + 4) = v37;
  v38 = a2[5];
  *(v32 + 5) = a2[4];
  *(v32 + 6) = v38;
  v39 = a2[1];
  *(v32 + 1) = *a2;
  *(v32 + 2) = v39;
  (*(v22 + 32))(&v32[v30], v77, v26);
  (*(v28 + 32))(&v32[v31], v27, v29);
  sub_100020804(a2, v100);
  v40 = static Alignment.center.getter();
  v42 = v41;
  v43 = sub_100003968(&qword_100063688, &qword_100048DF0);
  v44 = v81;
  v45 = &v81[*(v43 + 36)];
  *v45 = sub_10003E0D0;
  v45[1] = 0;
  v45[2] = v40;
  v45[3] = v42;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1000240D8;
  *(v46 + 24) = v32;
  v47 = (v44 + *(sub_100003968(&qword_100063690, &qword_100048DF8) + 36));
  *v47 = sub_100024224;
  v47[1] = v46;
  v48 = (v44 + *(sub_100003968(&qword_100063698, &qword_100048E00) + 36));
  *v48 = 0x6C6C6F726373;
  v48[1] = 0xE600000000000000;
  sub_1000236C0(a2, v100);
  v49 = v101;
  v50 = v102;
  v51 = v103;
  v52 = v100[1];
  v53 = v44 + *(v84 + 36);
  *v53 = v100[0];
  *(v53 + 16) = v52;
  *(v53 + 32) = v49;
  *(v53 + 40) = v50;
  *(v53 + 41) = v51;
  static CoordinateSpaceProtocol<>.local.getter();
  v54 = v85;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v55 = swift_allocObject();
  v56 = a2[11];
  v55[11] = a2[10];
  v55[12] = v56;
  v57 = a2[13];
  v55[13] = a2[12];
  v55[14] = v57;
  v58 = a2[7];
  v55[7] = a2[6];
  v55[8] = v58;
  v59 = a2[9];
  v55[9] = a2[8];
  v55[10] = v59;
  v60 = a2[3];
  v55[3] = a2[2];
  v55[4] = v60;
  v61 = a2[5];
  v55[5] = a2[4];
  v55[6] = v61;
  v62 = a2[1];
  v55[1] = *a2;
  v55[2] = v62;
  sub_100020804(a2, v100);
  sub_100024730(&qword_100062830, &type metadata accessor for DragGesture);
  sub_100024730(&qword_100062838, &type metadata accessor for DragGesture.Value);
  v64 = v88;
  v63 = v89;
  Gesture<>.onChanged(_:)();

  (*(v90 + 8))(v54, v63);
  v65 = swift_allocObject();
  v66 = a2[11];
  v65[11] = a2[10];
  v65[12] = v66;
  v67 = a2[13];
  v65[13] = a2[12];
  v65[14] = v67;
  v68 = a2[7];
  v65[7] = a2[6];
  v65[8] = v68;
  v69 = a2[9];
  v65[9] = a2[8];
  v65[10] = v69;
  v70 = a2[3];
  v65[3] = a2[2];
  v65[4] = v70;
  v71 = a2[5];
  v65[5] = a2[4];
  v65[6] = v71;
  v72 = a2[1];
  v65[1] = *a2;
  v65[2] = v72;
  sub_100020804(a2, v100);
  sub_100003E3C(&qword_100062840, &qword_1000627F0, &qword_100047CD0);
  v74 = v91;
  v73 = v92;
  Gesture.onEnded(_:)();

  (*(v93 + 8))(v64, v73);
  static GestureMask.all.getter();
  sub_10002429C();
  sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8);
  v75 = v94;
  View.simultaneousGesture<A>(_:including:)();
  (*(v95 + 8))(v74, v75);
  return sub_1000245A8(v44);
}

uint64_t sub_1000210EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a3;
  v46 = a2;
  v55 = type metadata accessor for ScrollViewProxy();
  v53 = *(v55 - 8);
  v54 = *(v53 + 64);
  __chkstk_darwin(v55);
  v52 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GeometryProxy();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static HorizontalAlignment.center.getter();
  v48 = a4;
  *a4 = v12;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v44 = *(sub_100003968(&qword_100063760, &unk_100048E70) + 44);
  v58 = *a1;
  v59 = v58;
  KeyPath = swift_getKeyPath();
  v45 = *(v9 + 16);
  v45(v11, a2, v8);
  v13 = *(v9 + 80);
  v47 = ((v13 + 240) & ~v13) + v10;
  v14 = (v13 + 240) & ~v13;
  v50 = v14;
  v51 = v13 | 7;
  v15 = swift_allocObject();
  v16 = *(a1 + 176);
  *(v15 + 11) = *(a1 + 160);
  *(v15 + 12) = v16;
  v17 = *(a1 + 208);
  *(v15 + 13) = *(a1 + 192);
  *(v15 + 14) = v17;
  v18 = *(a1 + 112);
  *(v15 + 7) = *(a1 + 96);
  *(v15 + 8) = v18;
  v19 = *(a1 + 144);
  *(v15 + 9) = *(a1 + 128);
  *(v15 + 10) = v19;
  v20 = *(a1 + 48);
  *(v15 + 3) = *(a1 + 32);
  *(v15 + 4) = v20;
  v21 = *(a1 + 80);
  *(v15 + 5) = *(a1 + 64);
  *(v15 + 6) = v21;
  v22 = *(a1 + 16);
  *(v15 + 1) = *a1;
  *(v15 + 2) = v22;
  v49 = *(v9 + 32);
  v49(&v15[v14], v11, v8);
  sub_100006098(&v59, v57, &qword_1000638B0, &qword_100048610);
  sub_100020804(a1, v57);
  sub_100003968(&qword_1000638B0, &qword_100048610);
  sub_100003968(&qword_100063768, &qword_100048EB8);
  sub_100003E3C(&qword_100063770, &qword_1000638B0, &qword_100048610);
  sub_100024958();
  v23 = v48;
  ForEach<>.init(_:id:content:)();
  v44 = static Alignment.center.getter();
  KeyPath = v24;
  v25 = v8;
  v45(v11, v46, v8);
  v26 = v53;
  v27 = v52;
  v28 = v55;
  (*(v53 + 16))(v52, v56, v55);
  v29 = v26;
  v30 = (v47 + *(v26 + 80)) & ~*(v26 + 80);
  v31 = swift_allocObject();
  v32 = *(a1 + 176);
  *(v31 + 11) = *(a1 + 160);
  *(v31 + 12) = v32;
  v33 = *(a1 + 208);
  *(v31 + 13) = *(a1 + 192);
  *(v31 + 14) = v33;
  v34 = *(a1 + 112);
  *(v31 + 7) = *(a1 + 96);
  *(v31 + 8) = v34;
  v35 = *(a1 + 144);
  *(v31 + 9) = *(a1 + 128);
  *(v31 + 10) = v35;
  v36 = *(a1 + 48);
  *(v31 + 3) = *(a1 + 32);
  *(v31 + 4) = v36;
  v37 = *(a1 + 80);
  *(v31 + 5) = *(a1 + 64);
  *(v31 + 6) = v37;
  v38 = *(a1 + 16);
  *(v31 + 1) = *a1;
  *(v31 + 2) = v38;
  v49(&v31[v50], v11, v25);
  (*(v29 + 32))(&v31[v30], v27, v28);
  v39 = (v23 + *(sub_100003968(&qword_100063658, &qword_100048DD8) + 36));
  *v39 = sub_100024B54;
  v39[1] = v31;
  v40 = KeyPath;
  v39[2] = v44;
  v39[3] = v40;
  return sub_100020804(a1, v57);
}

uint64_t sub_1000215D0@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003968(&qword_100063788, &qword_100048EC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v34 - v8;
  v10 = *a1;
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v11 = sub_100003968(&qword_1000637C8, &qword_100048EE8);
  sub_1000218D8(v10, a2, &v9[*(v11 + 44)]);
  GeometryProxy.size.getter();
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = &v9[*(sub_100003968(&qword_100063798, &qword_100048EC8) + 36)];
  v13 = v34[1];
  *v12 = v34[0];
  *(v12 + 1) = v13;
  *(v12 + 2) = v34[2];
  v14 = static Edge.Set.bottom.getter();
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v15 = objc_opt_self();
  if (qword_100062780 != -1)
  {
    v31 = v15;
    swift_once();
    v15 = v31;
  }

  v16 = [v15 preferredFontForTextStyle:textFontStyle];
  [v16 lineHeight];

  EdgeInsets.init(_all:)();
  v17 = &v9[*(v6 + 36)];
  *v17 = v14;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v22 = *a2;
  if (*a2 >> 62)
  {
    if (v22 < 0)
    {
      v32 = *a2;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_13;
    }
  }

  v24 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v33 = v10;
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    v28 = v27;
    type metadata accessor for AXLTCaption();
    v29 = static NSObject.== infix(_:_:)();

    v30 = 1.0;
    if (v29)
    {
LABEL_14:
      sub_10000BB84(v9, a3, &qword_100063788, &qword_100048EC0);
      result = sub_100003968(&qword_100063768, &qword_100048EB8);
      *(a3 + *(result + 36)) = v30;
      return result;
    }

LABEL_13:
    v30 = 0.8;
    goto LABEL_14;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v24 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v22 + 8 * v24 + 32);
    v26 = v10;
    v27 = v25;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000218D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a3;
  v5 = type metadata accessor for AXLTTitleView();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v81 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  v11 = *(a2 + 16);
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v12 = static AXLTSettingsManager.shared;
  v13 = OBJC_IVAR___AXLTSettingsManager_textColor;
  swift_beginAccess();
  v79 = v13;
  v14 = *(v12 + v13);
  v15 = OBJC_IVAR___AXLTSettingsManager_titleFont;
  swift_beginAccess();
  v16 = *(v12 + v15);
  v17 = objc_allocWithZone(UIImage);

  v18 = [v17 init];
  *v10 = a1;
  v10[8] = v11;
  *(v10 + 2) = 0;
  v19 = v5[7];
  *&v10[v19] = swift_getKeyPath();
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  swift_storeEnumTagMultiPayload();
  v20 = &v10[v5[8]];
  *&v82 = v14;
  v21 = a1;
  State.init(wrappedValue:)();
  v22 = *(&v90 + 1);
  *v20 = v90;
  *(v20 + 1) = v22;
  v23 = &v10[v5[9]];
  *&v82 = v16;
  State.init(wrappedValue:)();
  v24 = *(&v90 + 1);
  *v23 = v90;
  *(v23 + 1) = v24;
  v25 = &v10[v5[10]];
  *&v82 = v18;
  sub_100017E20(0, &qword_100062BF0, UIImage_ptr);
  State.init(wrappedValue:)();
  v26 = *(&v90 + 1);
  *v25 = v90;
  *(v25 + 1) = v26;
  v27 = v5[11];
  v28 = type metadata accessor for AudioHistogramConfig();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *&v10[v27] = sub_100042454();
  v31 = *a2;
  if (!(*a2 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v75 = v21;
    if (v32)
    {
      goto LABEL_5;
    }

LABEL_14:
    v38 = 0;
    goto LABEL_15;
  }

  if (v31 < 0)
  {
    v39 = *a2;
  }

  v32 = _CocoaArrayWrapper.endIndex.getter();
  v75 = v21;
  if (!v32)
  {
    goto LABEL_14;
  }

LABEL_5:
  v33 = __OFSUB__(v32, 1);
  result = v32 - 1;
  if (v33)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v31 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v31 + 8 * result + 32);
LABEL_10:
    v36 = v35;
    type metadata accessor for AXLTCaption();
    v37 = v21;
    v38 = static NSObject.== infix(_:_:)();

LABEL_15:
    v90 = *(a2 + 24);
    *&v91 = *(a2 + 40);
    sub_100003968(&qword_1000634D8, &qword_100048BA8);
    Binding.projectedValue.getter();
    v40 = *(&v82 + 1);
    v77 = v82;
    v41 = v83;
    v90 = *(a2 + 48);
    *&v91 = *(a2 + 64);
    sub_100003968(&qword_1000637D0, &qword_100048F20);
    Binding.projectedValue.getter();
    v42 = v82;
    v73 = v83;
    v74 = *(&v82 + 1);
    v43 = *(a2 + 88);
    v90 = *(a2 + 72);
    v91 = v43;
    sub_100003968(&qword_1000637D8, &qword_100048F28);
    Binding.projectedValue.getter();
    v44 = *(&v82 + 1);
    v45 = v82;
    v80 = *(&v83 + 1);
    v72 = v83;
    v46 = *(v12 + v79);
    v47 = OBJC_IVAR___AXLTSettingsManager_textFont;
    swift_beginAccess();
    v48 = *(v12 + v47);
    *&v82 = v46;

    State.init(wrappedValue:)();
    v78 = *(&v90 + 1);
    v79 = v90;
    *&v82 = v48;
    State.init(wrappedValue:)();
    v69 = *(&v90 + 1);
    v49 = v90;
    v70 = v90;
    v71 = v38 & 1;
    v50 = v81;
    sub_10000ACD0(v10, v81);
    v51 = v50;
    v52 = v76;
    sub_10000ACD0(v51, v76);
    v53 = sub_100003968(&qword_1000637E0, &qword_100048F30);
    v54 = v52 + *(v53 + 48);
    *v54 = 0;
    *(v54 + 8) = 1;
    v55 = v52 + *(v53 + 64);
    v56 = v75;
    *&v82 = 0x4010000000000000;
    *(&v82 + 1) = v75;
    LOBYTE(v83) = 1;
    BYTE1(v83) = v38 & 1;
    *(&v83 + 1) = v77;
    *&v84 = v40;
    *(&v84 + 1) = v41;
    v57 = v42;
    v58 = v74;
    *&v85 = v42;
    *(&v85 + 1) = v74;
    v76 = v10;
    v59 = v73;
    *v86 = v73;
    *&v86[8] = __PAIR128__(v44, v45);
    v60 = v44;
    v61 = v72;
    *&v86[24] = v72;
    *&v87 = v80;
    *(&v87 + 1) = v79;
    *&v88 = v78;
    *(&v88 + 1) = v49;
    v62 = v69;
    v89 = v69;
    v63 = v85;
    *(v55 + 32) = v84;
    *(v55 + 48) = v63;
    *(v55 + 128) = v62;
    v64 = v83;
    *v55 = v82;
    *(v55 + 16) = v64;
    v65 = v88;
    *(v55 + 96) = v87;
    *(v55 + 112) = v65;
    v66 = *&v86[16];
    *(v55 + 64) = *v86;
    *(v55 + 80) = v66;
    v67 = v56;
    sub_100025108(&v82, &v90);
    sub_100025164(v76);
    *&v90 = 0x4010000000000000;
    *(&v90 + 1) = v67;
    LOBYTE(v91) = 1;
    BYTE1(v91) = v71;
    *(&v91 + 1) = v77;
    v92 = v40;
    v93 = v41;
    v94 = v57;
    v95 = v58;
    v96 = v59;
    v97 = __PAIR128__(v60, v45);
    v98 = v61;
    v99 = v80;
    v100 = v79;
    v101 = v78;
    v102 = v70;
    v103 = v62;
    sub_1000251C0(&v90);
    return sub_100025164(v81);
  }

  __break(1u);
  return result;
}

uint64_t sub_100021EA4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a4;
  v61 = a3;
  v59 = a1;
  v73 = a5;
  v68 = type metadata accessor for ScrollViewProxy();
  v67 = *(v68 - 8);
  v69 = *(v67 + 64);
  __chkstk_darwin(v68);
  v66 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GeometryProxy();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v63 = v10;
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NamedCoordinateSpace();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100003968(&qword_1000637B0, &qword_100048ED8);
  v72 = *(v71 - 8);
  v17 = *(v72 + 64);
  __chkstk_darwin(v71);
  v74 = &v54 - v18;
  v58 = static Color.clear.getter();
  v80 = v58;
  v75 = 0x6C6C6F726373;
  v76 = 0xE600000000000000;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  v55 = v12;
  GeometryProxy.frame<A>(in:)();
  v20 = v19;
  v21 = *(v13 + 8);
  v56 = v13 + 8;
  v57 = v21;
  v21(v16, v12);
  v79 = v20;
  v60 = *(v9 + 16);
  v22 = v8;
  v60(v11, a3, v8);
  v23 = *(v9 + 80);
  v62 = v23 | 7;
  v24 = swift_allocObject();
  v25 = a2[11];
  *(v24 + 11) = a2[10];
  *(v24 + 12) = v25;
  v26 = a2[13];
  *(v24 + 13) = a2[12];
  *(v24 + 14) = v26;
  v27 = a2[7];
  *(v24 + 7) = a2[6];
  *(v24 + 8) = v27;
  v28 = a2[9];
  *(v24 + 9) = a2[8];
  *(v24 + 10) = v28;
  v29 = a2[3];
  *(v24 + 3) = a2[2];
  *(v24 + 4) = v29;
  v30 = a2[5];
  *(v24 + 5) = a2[4];
  *(v24 + 6) = v30;
  v31 = a2[1];
  *(v24 + 1) = *a2;
  *(v24 + 2) = v31;
  v32 = *(v9 + 32);
  v64 = v9 + 32;
  v65 = v32;
  v32(&v24[(v23 + 240) & ~v23], v11, v8);
  sub_100020804(a2, &v75);
  v54 = sub_100024DF4();
  View.onChange<A>(of:initial:_:)();

  v75 = 0x6C6C6F726373;
  v76 = 0xE600000000000000;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  v33 = v55;
  GeometryProxy.frame<A>(in:)();
  v35 = v34;
  v57(v16, v33);
  v80 = v35;
  v36 = v67;
  v37 = v66;
  v38 = v68;
  (*(v67 + 16))(v66, v70, v68);
  v39 = v22;
  v60(v11, v61, v22);
  v40 = v36;
  v41 = (*(v36 + 80) + 240) & ~*(v36 + 80);
  v42 = (v69 + v23 + v41) & ~v23;
  v43 = swift_allocObject();
  v44 = a2[11];
  *(v43 + 11) = a2[10];
  *(v43 + 12) = v44;
  v45 = a2[13];
  *(v43 + 13) = a2[12];
  *(v43 + 14) = v45;
  v46 = a2[7];
  *(v43 + 7) = a2[6];
  *(v43 + 8) = v46;
  v47 = a2[9];
  *(v43 + 9) = a2[8];
  *(v43 + 10) = v47;
  v48 = a2[3];
  *(v43 + 3) = a2[2];
  *(v43 + 4) = v48;
  v49 = a2[5];
  *(v43 + 5) = a2[4];
  *(v43 + 6) = v49;
  v50 = a2[1];
  *(v43 + 1) = *a2;
  *(v43 + 2) = v50;
  (*(v40 + 32))(&v43[v41], v37, v38);
  v65(&v43[v42], v11, v39);
  sub_100020804(a2, &v75);
  v75 = &type metadata for Color;
  v76 = &type metadata for CGFloat;
  v77 = &protocol witness table for Color;
  v78 = v54;
  swift_getOpaqueTypeConformance2();
  v51 = v71;
  v52 = v74;
  View.onChange<A>(of:initial:_:)();

  return (*(v72 + 8))(v52, v51);
}

uint64_t sub_10002259C(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = -*a2;
  v10 = *(a3 + 208);
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.getter();
  GeometryProxy.size.getter();
  if (*&v9 - v6 - *(a3 + 168) <= v5)
  {
    sub_1000226DC();
  }

  v9 = *(a3 + 136);
  v10 = v9;
  v11 = *(&v9 + 1);
  sub_100006098(&v11, v8, &qword_1000637C0, &qword_100048EE0);
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();
  if (v4 < 0.0 != v8[0])
  {
    v9 = v10;
    v8[0] = v4 < 0.0;
    State.wrappedValue.setter();
  }

  return sub_100003CE8(&v10, &qword_100062FF0, &unk_100048670);
}

id sub_1000226DC()
{
  v1 = v0;
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v9 = v3;
  v10 = v2;
  *&v8 = v2;
  *(&v8 + 1) = v3;
  sub_100006098(&v10, &v7, &qword_100062D88, &qword_100048850);
  sub_100006098(&v9, &v7, &qword_100063710, &unk_100048E38);
  sub_100003968(&qword_100062FE8, &qword_100048BA0);
  State.wrappedValue.getter();
  v4 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  [v7 invalidate];
  static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (result)
  {
    v6 = result;
    os_log(_:dso:log:_:_:)();

LABEL_4:
    *&v8 = v2;
    *(&v8 + 1) = v3;
    v7 = 0;
    State.wrappedValue.setter();
    sub_100003CE8(&v10, &qword_100062D88, &qword_100048850);
    sub_100003CE8(&v9, &qword_100063710, &unk_100048E38);
    v8 = *(v1 + 192);
    LOBYTE(v7) = 1;
    sub_100003968(&qword_100062FF0, &unk_100048670);
    return State.wrappedValue.setter();
  }

  __break(1u);
  return result;
}

void sub_10002286C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 208);
  v4 = *a2;
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.setter();
  GeometryProxy.size.getter();
  sub_1000228F0(v3);
}

void sub_1000228F0(double a1)
{
  v8 = *(v1 + 192);
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();
  if (LOBYTE(v7) == 1)
  {
    v9 = *(v1 + 208);
    sub_100003968(&qword_100062B18, &unk_100049360);
    State.wrappedValue.getter();
    if (v7 > a1)
    {
      v10 = *(v1 + 208);
      State.wrappedValue.getter();
      ScrollViewProxy.setContentOffset(_:)();
      v3 = static os_log_type_t.debug.getter();
      v4 = AXLogLiveTranscription();
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v4, v3))
        {
          v6 = swift_slowAlloc();
          *v6 = 134217984;
          v11 = *(v1 + 208);
          State.wrappedValue.getter();
          *(v6 + 4) = v7;
          _os_log_impl(&_mh_execute_header, v5, v3, "Scrolled to bottom: %f", v6, 0xCu);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100022A70(double a1, double a2)
{
  v3 = static os_log_type_t.debug.getter();
  v4 = AXLogLiveTranscription();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, v3))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v5, v3, "ScrollView new height: %f", v6, 0xCu);
    }

    GeometryProxy.size.getter();
    sub_1000228F0(v7);
  }

  else
  {
    __break(1u);
  }
}

id sub_100022B4C()
{
  v1 = v0;
  v18 = *(v0 + 192);
  LOBYTE(aBlock[0]) = 0;
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.setter();
  static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (result)
  {
    v3 = result;
    os_log(_:dso:log:_:_:)();

    v5 = *(v1 + 176);
    v4 = *(v1 + 184);
    v20 = v4;
    v21[0] = v5;
    *&v18 = v5;
    *(&v18 + 1) = v4;
    sub_100006098(v21, aBlock, &qword_100062D88, &qword_100048850);
    sub_100006098(&v20, aBlock, &qword_100063710, &unk_100048E38);
    sub_100003968(&qword_100062FE8, &qword_100048BA0);
    State.wrappedValue.getter();
    v6 = aBlock[0];
    [aBlock[0] invalidate];

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    v9 = *(v1 + 176);
    v8[11] = *(v1 + 160);
    v8[12] = v9;
    v10 = *(v1 + 208);
    v8[13] = *(v1 + 192);
    v8[14] = v10;
    v11 = *(v1 + 112);
    v8[7] = *(v1 + 96);
    v8[8] = v11;
    v12 = *(v1 + 144);
    v8[9] = *(v1 + 128);
    v8[10] = v12;
    v13 = *(v1 + 48);
    v8[3] = *(v1 + 32);
    v8[4] = v13;
    v14 = *(v1 + 80);
    v8[5] = *(v1 + 64);
    v8[6] = v14;
    v15 = *(v1 + 16);
    v8[1] = *v1;
    v8[2] = v15;
    aBlock[4] = sub_100024610;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100032E40;
    aBlock[3] = &unk_10005EB30;
    v16 = _Block_copy(aBlock);
    sub_100020804(v1, &v18);

    v17 = [v7 scheduledTimerWithTimeInterval:0 repeats:v16 block:60.0];
    _Block_release(v16);
    *&v18 = v5;
    *(&v18 + 1) = v4;
    aBlock[0] = v17;
    State.wrappedValue.setter();
    sub_100003CE8(v21, &qword_100062D88, &qword_100048850);
    return sub_100003CE8(&v20, &qword_100063710, &unk_100048E38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100022DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003968(&qword_1000637E8, &qword_100048F38);
  v90 = *(v4 - 8);
  v5 = *(v90 + 64);
  __chkstk_darwin(v4);
  v7 = &v74 - v6;
  v8 = type metadata accessor for AXLTTitleView();
  v9 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v74 - v13;
  v15 = sub_1000234D8();
  if (!v15)
  {
    v45 = *(v90 + 56);

    return v45(a2, 1, 1, v4);
  }

  v88 = v11;
  v89 = v7;
  v83 = v4;
  v84 = a2;
  v16 = *(a1 + 16);
  v87 = *(a1 + 8);
  v17 = qword_100062788;
  v18 = v15;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = static AXLTSettingsManager.shared;
  v20 = OBJC_IVAR___AXLTSettingsManager_textColor;
  swift_beginAccess();
  v86 = v20;
  v21 = *(v19 + v20);
  v22 = OBJC_IVAR___AXLTSettingsManager_titleFont;
  swift_beginAccess();
  v23 = *(v19 + v22);
  v24 = objc_allocWithZone(UIImage);

  v25 = [v24 init];
  v91 = v18;
  *v14 = v18;
  v14[8] = v16;
  *(v14 + 2) = v87;
  v26 = v8[7];
  *&v14[v26] = swift_getKeyPath();
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  swift_storeEnumTagMultiPayload();
  v27 = &v14[v8[8]];
  *&v92 = v21;
  State.init(wrappedValue:)();
  v28 = *(&v100 + 1);
  *v27 = v100;
  *(v27 + 1) = v28;
  v29 = &v14[v8[9]];
  *&v92 = v23;
  State.init(wrappedValue:)();
  v30 = *(&v100 + 1);
  *v29 = v100;
  *(v29 + 1) = v30;
  v31 = &v14[v8[10]];
  *&v92 = v25;
  sub_100017E20(0, &qword_100062BF0, UIImage_ptr);
  State.init(wrappedValue:)();
  v32 = *(&v100 + 1);
  *v31 = v100;
  *(v31 + 1) = v32;
  v33 = v8[11];
  v34 = type metadata accessor for AudioHistogramConfig();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *&v14[v33] = sub_100042454();
  v37 = *a1;
  if (!(*a1 >> 62))
  {
    result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = v91;
    if (result)
    {
      goto LABEL_6;
    }

LABEL_18:
    v78 = 0;
    goto LABEL_19;
  }

  if (v37 < 0)
  {
    v46 = *a1;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v39 = v91;
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_6:
  v40 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
LABEL_21:
    v73 = v39;
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if ((v40 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v40 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(v37 + 8 * v40 + 32);
    v42 = v39;
    v43 = v41;
LABEL_11:
    v44 = v43;
    type metadata accessor for AXLTCaption();
    v78 = static NSObject.== infix(_:_:)();

LABEL_19:
    v100 = *(a1 + 24);
    *v101 = *(a1 + 40);
    sub_100003968(&qword_1000634D8, &qword_100048BA8);
    Binding.projectedValue.getter();
    v47 = v92;
    v48 = *v93;
    v100 = *(a1 + 48);
    *v101 = *(a1 + 64);
    sub_100003968(&qword_1000637D0, &qword_100048F20);
    Binding.projectedValue.getter();
    v49 = v92;
    v81 = *v93;
    v82 = *(&v92 + 1);
    v50 = *(a1 + 88);
    v100 = *(a1 + 72);
    *v101 = v50;
    sub_100003968(&qword_1000637D8, &qword_100048F28);
    Binding.projectedValue.getter();
    v51 = v92;
    v79 = *v93;
    v80 = *(&v92 + 1);
    v87 = *&v93[8];
    v52 = *(v19 + v86);
    v53 = OBJC_IVAR___AXLTSettingsManager_textFont;
    swift_beginAccess();
    v54 = *(v19 + v53);
    *&v92 = v52;

    State.init(wrappedValue:)();
    v85 = *(&v100 + 1);
    v86 = v100;
    *&v92 = v54;
    State.init(wrappedValue:)();
    v56 = v100;
    v75 = v56 >> 64;
    v55 = v56;
    v77 = v100;
    LOBYTE(v54) = v78 & 1;
    v78 &= 1u;
    v57 = v88;
    sub_10000ACD0(v14, v88);
    v58 = v57;
    v59 = v89;
    sub_10000ACD0(v58, v89);
    v60 = v59 + *(sub_100003968(&qword_1000637F0, &qword_100048F40) + 48);
    *&v92 = 0x4010000000000000;
    *(&v92 + 1) = v91;
    v93[0] = 0;
    v93[1] = v54;
    *&v93[8] = v47;
    *&v93[24] = v48;
    v61 = v49;
    v76 = v14;
    v62 = v81;
    v63 = v82;
    *&v94 = v49;
    *(&v94 + 1) = v82;
    *&v95 = v81;
    *(&v95 + 1) = v51;
    v64 = v51;
    v66 = v79;
    v65 = v80;
    *&v96 = v80;
    *(&v96 + 1) = v79;
    *&v97 = v87;
    *(&v97 + 1) = v86;
    *&v98 = v85;
    *(&v98 + 1) = v55;
    v67 = v75;
    v99 = v75;
    v68 = *v93;
    *v60 = v92;
    *(v60 + 16) = v68;
    *(v60 + 128) = v67;
    v69 = v94;
    *(v60 + 32) = *&v93[16];
    *(v60 + 48) = v69;
    v70 = v98;
    *(v60 + 96) = v97;
    *(v60 + 112) = v70;
    v71 = v96;
    *(v60 + 64) = v95;
    *(v60 + 80) = v71;
    sub_100025108(&v92, &v100);
    sub_100025164(v76);
    *&v100 = 0x4010000000000000;
    *(&v100 + 1) = v91;
    v101[0] = 0;
    v101[1] = v78;
    *&v101[8] = v47;
    v102 = v48;
    v103 = v61;
    v104 = v63;
    v105 = v62;
    v106 = v64;
    v107 = v65;
    v108 = v66;
    v109 = v87;
    v110 = v86;
    v111 = v85;
    v112 = v77;
    v113 = v67;
    sub_1000251C0(&v100);
    sub_100025164(v88);
    v72 = v84;
    sub_10000BB84(v89, v84, &qword_1000637E8, &qword_100048F38);
    return (*(v90 + 56))(v72, 0, 1, v83);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000234D8()
{
  v2 = *v0;
  v3 = *v0 >> 62;
  if (!v3)
  {
    v4 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v2 < 0)
  {
    v22 = *v0;
  }

  else
  {
    v22 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v1 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) == 0)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v2 + 8 * result + 32);
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  v8 = v7;
  v9 = AXLTCaption.appID.getter();
  v11 = v10;
  if (v9 == placeholderID.getter() && v11 == v12)
  {

    v15 = v2 & 0xFFFFFFFFFFFFFF8;
    if (!v3)
    {
LABEL_14:
      result = *(v15 + 16);
      v16 = result - 2;
      if (result < 2)
      {
        return v8;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return v8;
    }

    v15 = v2 & 0xFFFFFFFFFFFFFF8;
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v16 = result - 2;
  if (result < 2)
  {
    return v8;
  }

LABEL_18:
  if (v1)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_22;
  }

  if (v16 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v2 + 8 * v16 + 32);
LABEL_22:
    v18 = v17;
    dispatch thunk of AXLTCaption.actionType.getter();

    v19 = AXLTCaptionActionsType.rawValue.getter();
    if (v19 != AXLTCaptionActionsType.rawValue.getter())
    {
      if (v1)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v2 + 8 * v16 + 32);
      }

      v21 = v20;
      dispatch thunk of AXLTCaption.text.getter();
      dispatch thunk of AXLTCaption.placeholder.setter();

      return v21;
    }

    return v8;
  }

LABEL_37:
  __break(1u);
  return result;
}

double sub_1000236C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 136);
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();
  if (v6 == 1)
  {
    sub_100003968(&qword_100063758, &unk_100048E60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100048C70;
    *(v3 + 32) = static Color.black.getter();
    static Color.black.getter();
    v4 = Color.opacity(_:)();

    *(v3 + 40) = v4;
    Gradient.init(colors:)();
    static UnitPoint.top.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();
  }

  sub_100003968(&qword_100063728, &qword_100048E50);
  sub_100003968(&qword_100063730, &qword_100048E58);
  sub_1000247CC(&qword_100063738, &qword_100063728, &qword_100048E50, sub_100024778);
  sub_1000247CC(&qword_100063748, &qword_100063730, &qword_100048E58, sub_100024850);
  _ConditionalContent<>.init(storage:)();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 41) = v11;
  return result;
}

id sub_1000238BC(uint64_t a1, _OWORD *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (result)
  {
    v12 = result;
    os_log(_:dso:log:_:_:)();

    sub_100017E20(0, &unk_100063A60, OS_dispatch_queue_ptr);
    v13 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    v15 = a2[11];
    v14[11] = a2[10];
    v14[12] = v15;
    v16 = a2[13];
    v14[13] = a2[12];
    v14[14] = v16;
    v17 = a2[7];
    v14[7] = a2[6];
    v14[8] = v17;
    v18 = a2[9];
    v14[9] = a2[8];
    v14[10] = v18;
    v19 = a2[3];
    v14[3] = a2[2];
    v14[4] = v19;
    v20 = a2[5];
    v14[5] = a2[4];
    v14[6] = v20;
    v21 = a2[1];
    v14[1] = *a2;
    v14[2] = v21;
    aBlock[4] = sub_1000246D8;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100029AE4;
    aBlock[3] = &unk_10005EB80;
    v22 = _Block_copy(aBlock);
    sub_100020804(a2, &v26);

    static DispatchQoS.unspecified.getter();
    v26 = &_swiftEmptyArrayStorage;
    sub_100024730(&qword_100063718, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003968(&unk_100063A70, &qword_100048E48);
    sub_100003E3C(&qword_100063720, &unk_100063A70, &qword_100048E48);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v25 + 8))(v6, v3);
    return (*(v23 + 8))(v10, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100023C38@<X0>(uint64_t (**a1)@<X0>(uint64_t@<X0>, uint64_t@<X8>)@<X8>)
{
  v3 = v1[11];
  v20[10] = v1[10];
  v20[11] = v3;
  v4 = v1[13];
  v20[12] = v1[12];
  v20[13] = v4;
  v5 = v1[7];
  v20[6] = v1[6];
  v20[7] = v5;
  v6 = v1[9];
  v20[8] = v1[8];
  v20[9] = v6;
  v7 = v1[3];
  v20[2] = v1[2];
  v20[3] = v7;
  v8 = v1[5];
  v20[4] = v1[4];
  v20[5] = v8;
  v9 = v1[1];
  v20[0] = *v1;
  v20[1] = v9;
  v10 = swift_allocObject();
  v11 = v1[11];
  *(v10 + 11) = v1[10];
  *(v10 + 12) = v11;
  v12 = v1[13];
  *(v10 + 13) = v1[12];
  *(v10 + 14) = v12;
  v13 = v1[7];
  *(v10 + 7) = v1[6];
  *(v10 + 8) = v13;
  v14 = v1[9];
  *(v10 + 9) = v1[8];
  *(v10 + 10) = v14;
  v15 = v1[3];
  *(v10 + 3) = v1[2];
  *(v10 + 4) = v15;
  v16 = v1[5];
  *(v10 + 5) = v1[4];
  *(v10 + 6) = v16;
  v17 = v1[1];
  *(v10 + 1) = *v1;
  *(v10 + 2) = v17;
  *a1 = sub_10002523C;
  a1[1] = v10;
  return sub_100020804(v20, &v19);
}

__n128 sub_100023D04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_100023D40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_100023D88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100023E54()
{
  result = qword_100063628;
  if (!qword_100063628)
  {
    sub_100003AC0(&qword_100063600, &qword_100048DA0);
    sub_100003E3C(&qword_100063630, &qword_100063638, &qword_100048DC0);
    sub_100003E3C(&qword_100063640, &qword_100063648, &qword_100048DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063628);
  }

  return result;
}

uint64_t sub_100023F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = v2 + ((*(v5 + 80) + 240) & ~*(v5 + 80));

  return sub_100020858(a1, (v2 + 16), v6, a2);
}

unint64_t sub_100023FC8()
{
  result = qword_100063660;
  if (!qword_100063660)
  {
    sub_100003AC0(&qword_100063658, &qword_100048DD8);
    sub_100003E3C(&qword_100063668, &qword_100063670, &qword_100048DE0);
    sub_100003E3C(&qword_100063678, &qword_100063680, &qword_100048DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063660);
  }

  return result;
}

void sub_1000240D8(double a1, double a2)
{
  v5 = *(type metadata accessor for ScrollViewProxy() - 8);
  v6 = (*(v5 + 80) + 240) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for GeometryProxy() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_100022A70(a1, a2);
}

uint64_t sub_1000241EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024224(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_100024274()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  return v1();
}

unint64_t sub_10002429C()
{
  result = qword_1000636A0;
  if (!qword_1000636A0)
  {
    sub_100003AC0(&qword_100063650, &qword_100048DD0);
    sub_100024354();
    sub_100003E3C(&qword_100063700, &qword_100063708, &unk_100048E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000636A0);
  }

  return result;
}

unint64_t sub_100024354()
{
  result = qword_1000636A8;
  if (!qword_1000636A8)
  {
    sub_100003AC0(&qword_100063698, &qword_100048E00);
    sub_10002440C();
    sub_100003E3C(&qword_1000636F0, &qword_1000636F8, &qword_100048E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000636A8);
  }

  return result;
}

unint64_t sub_10002440C()
{
  result = qword_1000636B0;
  if (!qword_1000636B0)
  {
    sub_100003AC0(&qword_100063690, &qword_100048DF8);
    sub_1000244C4();
    sub_100003E3C(&qword_1000636E0, &qword_1000636E8, &qword_100048E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000636B0);
  }

  return result;
}

unint64_t sub_1000244C4()
{
  result = qword_1000636B8;
  if (!qword_1000636B8)
  {
    sub_100003AC0(&qword_100063688, &qword_100048DF0);
    sub_100003E3C(&qword_1000636C0, &qword_1000636C8, &qword_100048E08);
    sub_100003E3C(&qword_1000636D0, &qword_1000636D8, &qword_100048E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000636B8);
  }

  return result;
}

uint64_t sub_1000245A8(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063650, &qword_100048DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100024618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100024630()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  v8 = *(v0 + 112);

  v9 = *(v0 + 128);

  v10 = *(v0 + 144);

  v11 = *(v0 + 160);

  v12 = *(v0 + 200);

  v13 = *(v0 + 216);

  v14 = *(v0 + 232);

  return _swift_deallocObject(v0, 240, 7);
}

uint64_t sub_1000246D8()
{
  v2 = *(v0 + 208);
  sub_100003968(&qword_100062FF0, &unk_100048670);
  return State.wrappedValue.setter();
}

uint64_t sub_100024730(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100024778()
{
  result = qword_100063740;
  if (!qword_100063740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063740);
  }

  return result;
}

uint64_t sub_1000247CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003AC0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100024850()
{
  result = qword_100063750;
  if (!qword_100063750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063750);
  }

  return result;
}

uint64_t sub_1000248A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = AXLTCaption.id.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1000248D4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(type metadata accessor for GeometryProxy() - 8) + 80);

  return sub_1000215D0(a1, (v2 + 16), a2);
}

unint64_t sub_100024958()
{
  result = qword_100063778;
  if (!qword_100063778)
  {
    sub_100003AC0(&qword_100063768, &qword_100048EB8);
    sub_1000249E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063778);
  }

  return result;
}

unint64_t sub_1000249E4()
{
  result = qword_100063780;
  if (!qword_100063780)
  {
    sub_100003AC0(&qword_100063788, &qword_100048EC0);
    sub_100024A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063780);
  }

  return result;
}

unint64_t sub_100024A70()
{
  result = qword_100063790;
  if (!qword_100063790)
  {
    sub_100003AC0(&qword_100063798, &qword_100048EC8);
    sub_100003E3C(&qword_1000637A0, &qword_1000637A8, &qword_100048ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063790);
  }

  return result;
}

uint64_t sub_100024B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = (*(v5 + 80) + 240) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ScrollViewProxy() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_100021EA4(a1, (v2 + 16), v2 + v6, v9, a2);
}

uint64_t sub_100024C3C()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 240) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);

  v9 = *(v0 + 64);

  v10 = *(v0 + 72);

  v11 = *(v0 + 88);

  v12 = *(v0 + 96);

  v13 = *(v0 + 112);

  v14 = *(v0 + 128);

  v15 = *(v0 + 144);

  v16 = *(v0 + 160);

  v17 = *(v0 + 200);

  v18 = *(v0 + 216);

  v19 = *(v0 + 232);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100024D70(uint64_t a1, double *a2)
{
  v5 = *(*(type metadata accessor for GeometryProxy() - 8) + 80);

  return sub_10002259C(a1, a2, v2 + 16);
}

unint64_t sub_100024DF4()
{
  result = qword_1000637B8;
  if (!qword_1000637B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000637B8);
  }

  return result;
}

uint64_t sub_100024E48(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 240) & ~v6;
  v8 = *(v5 + 64);
  v9 = a2(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v6 | v11;
  v15 = *(v2 + 16);

  v16 = *(v2 + 40);

  v17 = *(v2 + 48);

  v18 = *(v2 + 64);

  v19 = *(v2 + 72);

  v20 = *(v2 + 88);

  v21 = *(v2 + 96);

  v22 = *(v2 + 112);

  v23 = *(v2 + 128);

  v24 = *(v2 + 144);

  v25 = *(v2 + 160);

  v26 = *(v2 + 200);

  v27 = *(v2 + 216);

  v28 = *(v2 + 232);

  (*(v5 + 8))(v2 + v7, v4);
  (*(v10 + 8))(v2 + v12, v9);

  return _swift_deallocObject(v2, v12 + v13, v14 | 7);
}

void sub_100025018(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for ScrollViewProxy() - 8);
  v6 = (*(v5 + 80) + 240) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for GeometryProxy() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_10002286C(a1, a2, v2 + 16);
}

uint64_t sub_100025164(uint64_t a1)
{
  v2 = type metadata accessor for AXLTTitleView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void safeOffset(offset:size:containerSize:foreheadWindowRect:)(double a1, CGFloat a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v21.origin.x = a7;
  v21.origin.y = a8;
  v21.size.width = a9;
  v21.size.height = a10;
  if (CGRectGetHeight(v21) + a8 + -37.3333333 > a2)
  {
    if (AXDeviceHasJindo())
    {
      v22.origin.x = a7;
      v22.origin.y = a8;
      v22.size.width = a9;
      v22.size.height = a10;
      CGRectGetHeight(v22);
    }
  }
}

double iconSize()()
{
  IsPad = AXDeviceIsPad();
  result = 54.0;
  if (IsPad)
  {
    return 68.0;
  }

  return result;
}

double sub_100025378(char a1, double a2, double a3, double a4, double a5)
{
  v10 = a4 + -10.0;
  if (AXDeviceIsPad())
  {
    v11 = -68.0;
  }

  else
  {
    v11 = -54.0;
  }

  if (v10 + v11 >= a2)
  {
    if (a2 >= 10.0)
    {
      v14 = a2;
    }

    else
    {
      v14 = 10.0;
    }
  }

  else
  {
    IsPad = AXDeviceIsPad();
    v13 = 54.0;
    if (IsPad)
    {
      v13 = 68.0;
    }

    v14 = v10 - v13;
  }

  v15 = a5 + -10.0;
  if (AXDeviceIsPad())
  {
    v16 = -68.0;
  }

  else
  {
    v16 = -54.0;
  }

  if (v15 + v16 < a3)
  {
    AXDeviceIsPad();
    return v14;
  }

  if (a3 < 10.0)
  {
    return v14;
  }

  v14 = 10.0;
  if (a1 == 3)
  {
LABEL_20:
    if (a4 * 0.5 >= a2 && a1 != 2)
    {
      return v14;
    }

    goto LABEL_25;
  }

  if (a1 != 2)
  {
    if (a1)
    {
      return v14;
    }

    goto LABEL_20;
  }

LABEL_25:
  v18 = AXDeviceIsPad();
  v19 = 54.0;
  if (v18)
  {
    v19 = 68.0;
  }

  return v10 - v19;
}

uint64_t titleAndTextHeight(textHeight:dynamicTypeSize:)(uint64_t a1, double a2)
{
  v4 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v13 = objc_opt_self();
  if (qword_100062778 != -1)
  {
    swift_once();
  }

  v14 = [v13 preferredFontForTextStyle:titleFontStyle];
  [v14 lineHeight];

  if (qword_100062780 != -1)
  {
    swift_once();
  }

  v15 = [v13 preferredFontForTextStyle:textFontStyle];
  [v15 lineHeight];

  textLinesNumberMax.getter();
  sub_100006710(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_100006780(v7);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    if (qword_1000626F8 != -1)
    {
      swift_once();
    }

    sub_1000064FC(v8, accessibilityLayoutTextSize);
    sub_1000067E8();
    v17 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v9 + 8))(v12, v8);
    if ((v17 & 1) == 0)
    {
      result = textLinesAccessibilityNumberMax.getter();
    }
  }

  if (a2 == 0.0)
  {
    return textLinesNumberMin.getter();
  }

  return result;
}

void bottomButtonsBarLeftRightInset()()
{
  if ((AXDeviceIsPad() & 1) == 0)
  {
    v0 = [objc_opt_self() mainScreen];
    [v0 bounds];
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;

    v9.origin.x = v2;
    v9.origin.y = v4;
    v9.size.width = v6;
    v9.size.height = v8;
    CGRectGetWidth(v9);
  }
}

uint64_t *AXLTSettingsManager.shared.unsafeMutableAddressor()
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  return &static AXLTSettingsManager.shared;
}

NSNotificationName *textColorChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062730 != -1)
  {
    swift_once();
  }

  return &textColorChangedNotification;
}

NSNotificationName *pausedChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062728 != -1)
  {
    swift_once();
  }

  return &pausedChangedNotification;
}

NSNotificationName *nubbitIdleOpacityChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062748 != -1)
  {
    swift_once();
  }

  return &nubbitIdleOpacityChangedNotification;
}

NSString *sub_100025A38()
{
  result = String._bridgeToObjectiveC()();
  macOSSettingsDidChangedNotification = result;
  return result;
}

NSNotificationName *macOSSettingsDidChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062718 != -1)
  {
    swift_once();
  }

  return &macOSSettingsDidChangedNotification;
}

NSString *sub_100025AFC()
{
  result = String._bridgeToObjectiveC()();
  micOnChangedNotification = result;
  return result;
}

NSNotificationName *micOnChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062720 != -1)
  {
    swift_once();
  }

  return &micOnChangedNotification;
}

NSString *sub_100025B84()
{
  result = String._bridgeToObjectiveC()();
  pausedChangedNotification = result;
  return result;
}

NSString *sub_100025BBC()
{
  result = String._bridgeToObjectiveC()();
  textColorChangedNotification = result;
  return result;
}

NSString *sub_100025BF4()
{
  result = String._bridgeToObjectiveC()();
  backgroundColorChangedNotification = result;
  return result;
}

NSNotificationName *backgroundColorChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062738 != -1)
  {
    swift_once();
  }

  return &backgroundColorChangedNotification;
}

NSString *sub_100025C7C()
{
  result = String._bridgeToObjectiveC()();
  textFontChangedNotification = result;
  return result;
}

NSNotificationName *textFontChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062740 != -1)
  {
    swift_once();
  }

  return &textFontChangedNotification;
}

NSString *sub_100025D04()
{
  result = String._bridgeToObjectiveC()();
  nubbitIdleOpacityChangedNotification = result;
  return result;
}

NSString *sub_100025D3C()
{
  result = String._bridgeToObjectiveC()();
  localeChangedNotification = result;
  return result;
}

NSNotificationName *localeChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062750 != -1)
  {
    swift_once();
  }

  return &localeChangedNotification;
}

uint64_t sub_100025DE8()
{
  result = static Color.white.getter();
  qword_1000637F8 = result;
  return result;
}

uint64_t sub_100025E08()
{
  result = static Color.clear.getter();
  qword_100063800 = result;
  return result;
}

uint64_t sub_100025E50(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v5 = (*(*(sub_100003968(&qword_1000638A8, &qword_100049068) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *a2, v8);
  v13 = type metadata accessor for Font.Design();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = static Font.system(_:design:weight:)();
  sub_100003CE8(v7, &qword_1000638A8, &qword_100049068);
  result = (*(v9 + 8))(v12, v8);
  *a3 = v14;
  return result;
}

UIFontTextStyle *titleFontStyle.unsafeMutableAddressor()
{
  if (qword_100062778 != -1)
  {
    swift_once();
  }

  return &titleFontStyle;
}

UIFontTextStyle *textFontStyle.unsafeMutableAddressor()
{
  if (qword_100062780 != -1)
  {
    swift_once();
  }

  return &textFontStyle;
}

uint64_t AXLTSettingsManager.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AXLTSettingsManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___AXLTSettingsManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1000262C8;
}

void sub_1000262C8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t AXLTSettingsManager.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  return sub_100006098(v1 + v3, a1, &qword_100063820, &qword_100048F80);
}

uint64_t AXLTSettingsManager.locale.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  sub_100026EAC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10002687C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1000268CC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

double sub_100026A04(void *a1, void *a2, SEL *a3)
{
  v6 = objc_opt_self();
  if (*a1 != -1)
  {
    v11 = v6;
    swift_once();
    v6 = v11;
  }

  v7 = [v6 preferredFontForTextStyle:*a2];
  [v7 *a3];
  v9 = v8;

  return v9;
}

uint64_t AXLTSettingsManager.isMicOn.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTSettingsManager.isMicOn.setter(char a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AXLTSettingsManager.isPaused.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTSettingsManager.isPaused.setter(char a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AXLTSettingsManager.inCallOn.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTSettingsManager.inCallOn.setter(char a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double AXLTSettingsManager.nubbitIdleOpacity.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTSettingsManager.nubbitIdleOpacity.setter(double a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_100026E78()
{
  result = [objc_allocWithZone(type metadata accessor for AXLTSettingsManager()) init];
  static AXLTSettingsManager.shared = result;
  return result;
}

uint64_t sub_100026EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100063820, &qword_100048F80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static AXLTSettingsManager.shared.getter()
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v1 = static AXLTSettingsManager.shared;

  return v1;
}

__CFNotificationCenter *sub_100026FD4()
{
  v1 = sub_100003968(&qword_100063820, &qword_100048F80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v50 - v3;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR___AXLTSettingsManager_locale;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v50[1] = v7 + 56;
  v51 = v8;
  v8(&v0[v5], 1, 1, v6);
  v9 = OBJC_IVAR___AXLTSettingsManager_textColor;
  if (qword_100062758 != -1)
  {
    swift_once();
  }

  *&v0[v9] = qword_1000637F8;
  v10 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
  v11 = qword_100062760;

  if (v11 != -1)
  {
    swift_once();
  }

  *&v0[v10] = qword_100063800;
  v12 = OBJC_IVAR___AXLTSettingsManager_titleFont;
  v13 = qword_100062770;

  if (v13 != -1)
  {
    swift_once();
  }

  *&v0[v12] = qword_100063810;
  v14 = OBJC_IVAR___AXLTSettingsManager_textFont;
  v15 = qword_100062768;

  if (v15 != -1)
  {
    swift_once();
  }

  *&v0[v14] = qword_100063808;
  v16 = OBJC_IVAR___AXLTSettingsManager_isMicOn;

  v0[v16] = _AXSLiveTranscriptionMicOn() != 0;
  v17 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  v0[v17] = _AXSLiveTranscriptionPaused() != 0;
  v18 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
  v0[v18] = _AXSLiveTranscriptionInCallEnabled() != 0;
  *&v0[OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity] = 0x3FE0000000000000;
  *&v0[OBJC_IVAR___AXLTSettingsManager_micStateChanged] = sub_100027708;
  *&v0[OBJC_IVAR___AXLTSettingsManager_pausedStateChanged] = sub_100027734;
  *&v0[OBJC_IVAR___AXLTSettingsManager_inCallStateChanged] = sub_100027760;
  *&v0[OBJC_IVAR___AXLTSettingsManager_categoryNameChanged] = sub_100027804;
  *&v0[OBJC_IVAR___AXLTSettingsManager_transcriptionEnabledChanged] = sub_100027810;
  *&v0[OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacityChanged] = sub_1000278C0;
  *&v0[OBJC_IVAR___AXLTSettingsManager_textColorChanged] = sub_100028234;
  *&v0[OBJC_IVAR___AXLTSettingsManager_backgroundColorChanged] = sub_1000282B0;
  *&v0[OBJC_IVAR___AXLTSettingsManager_selectedLocaleChanged] = sub_1000286A8;
  v19 = type metadata accessor for AXLTSettingsManager();
  v52.receiver = v0;
  v52.super_class = v19;
  v20 = objc_msgSendSuper2(&v52, "init");
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionMicOnDidChangeNotification)
  {
    __break(1u);
    goto LABEL_23;
  }

  v22 = result;
  v23 = *&v20[OBJC_IVAR___AXLTSettingsManager_micStateChanged];
  v24 = kAXSLiveTranscriptionMicOnDidChangeNotification;
  CFNotificationCenterAddObserver(v22, 0, v23, v24, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionPausedDidChangeNotification)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = result;
  v26 = *&v20[OBJC_IVAR___AXLTSettingsManager_pausedStateChanged];
  v27 = kAXSLiveTranscriptionPausedDidChangeNotification;
  CFNotificationCenterAddObserver(v25, 0, v26, v27, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionTextColorDidChangeNotification)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = result;
  v29 = *&v20[OBJC_IVAR___AXLTSettingsManager_textColorChanged];
  v30 = kAXSLiveTranscriptionTextColorDidChangeNotification;
  CFNotificationCenterAddObserver(v28, 0, v29, v30, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionBackgroundColorDidChangeNotification)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = result;
  v32 = *&v20[OBJC_IVAR___AXLTSettingsManager_backgroundColorChanged];
  v33 = kAXSLiveTranscriptionBackgroundColorDidChangeNotification;
  CFNotificationCenterAddObserver(v31, 0, v32, v33, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveCaptionsNubbitIdleOpacityDidChangeNotification)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = result;
  v35 = *&v20[OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacityChanged];
  v36 = kAXSLiveCaptionsNubbitIdleOpacityDidChangeNotification;
  CFNotificationCenterAddObserver(v34, 0, v35, v36, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionInCallEnabledDidChangeNotification)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v37 = result;
  v38 = *&v20[OBJC_IVAR___AXLTSettingsManager_inCallStateChanged];
  v39 = kAXSLiveTranscriptionInCallEnabledDidChangeNotification;
  CFNotificationCenterAddObserver(v37, 0, v38, v39, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSApplePreferredContentSizeCategoryNotification)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v40 = result;
  v41 = *&v20[OBJC_IVAR___AXLTSettingsManager_categoryNameChanged];
  v42 = kAXSApplePreferredContentSizeCategoryNotification;
  CFNotificationCenterAddObserver(v40, 0, v41, v42, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionEnabledDidChangeNotification)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v43 = result;
  v44 = *&v20[OBJC_IVAR___AXLTSettingsManager_transcriptionEnabledChanged];
  v45 = kAXSLiveTranscriptionEnabledDidChangeNotification;
  CFNotificationCenterAddObserver(v43, 0, v44, v45, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_100028014();
  v46 = AXLCLiveCaptionsSelectedLocaleIdentifier();
  if (v46)
  {
    v47 = v46;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    v51(v4, 0, 1, v6);
    v48 = OBJC_IVAR___AXLTSettingsManager_locale;
    swift_beginAccess();
    sub_100026EAC(v4, &v20[v48]);
    swift_endAccess();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong fontDidChange];
    swift_unknownObjectRelease();
  }

  sub_100028D8C();
  sub_1000282D4();

  return v20;
}

uint64_t sub_10002778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(void), uint64_t (*a7)(_BOOL8))
{
  if (qword_100062788 != -1)
  {
    v10 = a6;
    swift_once();
    a6 = v10;
  }

  v8 = a6() != 0;
  return a7(v8);
}

void *sub_10002781C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a6];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000278D8(char a1)
{
  v2 = v1;
  v4 = static os_log_type_t.debug.getter();
  v5 = AXLogLiveTranscription();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, v4))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v6, v4, "updateMicOnState: %{BOOL}d", v7, 8u);
    }

    v8 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
    swift_beginAccess();
    if (*(v2 + v8) != (a1 & 1))
    {
      *(v2 + v8) = a1 & 1;
      if (qword_100062790 != -1)
      {
        swift_once();
      }

      sub_10003031C();
    }

    v9 = [objc_opt_self() defaultCenter];
    if (qword_100062720 != -1)
    {
      swift_once();
    }

    v10 = micOnChangedNotification;
    sub_100003968(&qword_100063870, &qword_100049040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100048930;
    v15 = notificationValueKey.getter();
    v16 = v12;
    AnyHashable.init<A>(_:)();
    v13 = *(v2 + v8);
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = v13;
    sub_10002980C(inited);
    swift_setDeallocating();
    sub_100003CE8(inited + 32, &qword_100063878, &qword_100049048);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:{isa, v15, v16}];
  }

  else
  {
    __break(1u);
  }
}

void sub_100027B4C(char a1)
{
  v2 = v1;
  v4 = static os_log_type_t.debug.getter();
  v5 = AXLogLiveTranscription();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, v4))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v6, v4, "updatePausedState: %{BOOL}d", v7, 8u);
    }

    v8 = OBJC_IVAR___AXLTSettingsManager_isPaused;
    swift_beginAccess();
    if (*(v2 + v8) != (a1 & 1))
    {
      *(v2 + v8) = a1 & 1;
      if (qword_100062790 != -1)
      {
        swift_once();
      }

      if (qword_100062788 != -1)
      {
        swift_once();
      }

      v9 = static AXLTSettingsManager.shared;
      v10 = OBJC_IVAR___AXLTSettingsManager_isPaused;
      swift_beginAccess();
      if (*(v9 + v10) == 1)
      {
        AXLTCaptionsProvider.stopTranscribing()();
      }

      else
      {
        AXLTCaptionsProvider.startTranscribing()();
      }

      sub_10002D910(0, 0);
    }

    v11 = [objc_opt_self() defaultCenter];
    if (qword_100062728 != -1)
    {
      swift_once();
    }

    v12 = pausedChangedNotification;
    sub_100003968(&qword_100063870, &qword_100049040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100048930;
    notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    v14 = *(v2 + v8);
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = v14;
    sub_10002980C(inited);
    swift_setDeallocating();
    sub_100003CE8(inited + 32, &qword_100063878, &qword_100049048);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 postNotificationName:v12 object:0 userInfo:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_100027E30(char a1)
{
  v3 = static os_log_type_t.debug.getter();
  v4 = AXLogLiveTranscription();
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  if (os_log_type_enabled(v4, v3))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v3, "updateInCallState: %{BOOL}d", v6, 8u);
  }

  v7 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
  swift_beginAccess();
  if (*(v1 + v7) != (a1 & 1))
  {
    *(v1 + v7) = a1 & 1;
    if (qword_100062790 != -1)
    {
      swift_once();
    }

    v8 = static AXLTCaptionsProvider.shared;
    if (qword_100062788 != -1)
    {
      swift_once();
    }

    v9 = static AXLTSettingsManager.shared;
    v10 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
    swift_beginAccess();
    if (*(v9 + v10) == 1)
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 isCallActive];

      if ((v12 & 1) == 0)
      {
        return;
      }
    }

    else if (*(v8 + OBJC_IVAR___AXLTCaptionsProvider_activePid) != -2)
    {
      return;
    }

    AXLTCaptionsProvider.stopTranscribing()();
    AXLTCaptionsProvider.startTranscribing()();
  }
}

void sub_100028014()
{
  v1 = _AXSLiveCaptionsNubbitIdleOpacity();
  v2 = v1;
  if (v1)
  {
    [v1 floatValue];
    v4 = v3;
    v5 = OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity;
    swift_beginAccess();
    *(v0 + v5) = v4;
  }

  v6 = [objc_opt_self() defaultCenter];
  if (qword_100062748 != -1)
  {
    swift_once();
  }

  v7 = nubbitIdleOpacityChangedNotification;
  sub_100003968(&qword_100063870, &qword_100049040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048930;
  notificationValueKey.getter();
  AnyHashable.init<A>(_:)();
  v9 = OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity;
  swift_beginAccess();
  v10 = *(v0 + v9);
  *(inited + 96) = &type metadata for CGFloat;
  *(inited + 72) = v10;
  sub_10002980C(inited);
  swift_setDeallocating();
  sub_100003CE8(inited + 32, &qword_100063878, &qword_100049048);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 postNotificationName:v7 object:0 userInfo:isa];
}

uint64_t sub_10002824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (qword_100062788 != -1)
  {
    v7 = a6;
    swift_once();
    a6 = v7;
  }

  return a6();
}

void sub_1000282D4()
{
  v1 = v0;
  v2 = _AXSLiveTranscriptionCopyTextColorData();
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  sub_100017E20(0, &qword_100063880, NSKeyedUnarchiver_ptr);
  sub_100017E20(0, &qword_100063828, UIColor_ptr);
  v4 = v3;
  v5 = Data.init(referencing:)();
  v7 = v6;
  v19 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();

  sub_100029948(v5, v7);
  if (v19)
  {
    v11 = v19;
    v20 = Color.init(_:)();
    v21 = OBJC_IVAR___AXLTSettingsManager_textColor;
    swift_beginAccess();
    v22 = *(v1 + v21);
    *(v1 + v21) = v20;
  }

  else
  {
LABEL_3:
    if (qword_100062758 != -1)
    {
      swift_once();
    }

    v8 = qword_1000637F8;
    v9 = OBJC_IVAR___AXLTSettingsManager_textColor;
    swift_beginAccess();
    v10 = *(v1 + v9);
    *(v1 + v9) = v8;

    v11 = 0;
  }

  v12 = [objc_opt_self() defaultCenter];
  if (qword_100062730 != -1)
  {
    swift_once();
  }

  v13 = textColorChangedNotification;
  sub_100003968(&qword_100063870, &qword_100049040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048930;
  notificationValueKey.getter();
  AnyHashable.init<A>(_:)();
  v15 = OBJC_IVAR___AXLTSettingsManager_textColor;
  swift_beginAccess();
  v16 = *(v1 + v15);
  *(inited + 96) = &type metadata for Color;
  *(inited + 72) = v16;

  sub_10002980C(inited);
  swift_setDeallocating();
  sub_100003CE8(inited + 32, &qword_100063878, &qword_100049048);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 postNotificationName:v13 object:0 userInfo:isa];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong textColorDidChange];
    swift_unknownObjectRelease();
  }
}

NSObject *sub_1000286C0()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (__chkstk_darwin)();
  v50 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003968(&qword_100063890, &qword_100049058);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v8 = &v49 - v7;
  v52 = sub_100003968(&qword_100063820, &qword_100048F80);
  v9 = *(*(v52 - 8) + 64);
  v10 = (__chkstk_darwin)();
  v51 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v49 - v13;
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v17 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  v54 = v0;
  v18 = v0 + v17;
  v19 = v16;
  sub_100006098(v18, v16, &qword_100063820, &qword_100048F80);
  v20 = AXLCLiveCaptionsSelectedLocaleIdentifier();
  v53 = v14;
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    (*(v2 + 56))(v14, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v14, 1, 1, v1);
  }

  v22 = v54;
  swift_beginAccess();
  sub_100026EAC(v14, v22 + v17);
  swift_endAccess();
  v23 = *(v5 + 48);
  v24 = v19;
  sub_100006098(v19, v8, &qword_100063820, &qword_100048F80);
  v25 = v17;
  sub_100006098(v54 + v17, &v8[v23], &qword_100063820, &qword_100048F80);
  v26 = *(v2 + 48);
  if (v26(v8, 1, v1) == 1)
  {
    if (v26(&v8[v23], 1, v1) == 1)
    {
      sub_100003CE8(v8, &qword_100063820, &qword_100048F80);
      return sub_100003CE8(v24, &qword_100063820, &qword_100048F80);
    }

    goto LABEL_9;
  }

  v27 = v51;
  sub_100006098(v8, v51, &qword_100063820, &qword_100048F80);
  if (v26(&v8[v23], 1, v1) == 1)
  {
    (*(v2 + 8))(v27, v1);
LABEL_9:
    sub_100003CE8(v8, &qword_100063890, &qword_100049058);
    v28 = v53;
    goto LABEL_10;
  }

  v45 = &v8[v23];
  v46 = v50;
  (*(v2 + 32))(v50, v45, v1);
  sub_100029A10();
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v2 + 8);
  v48(v46, v1);
  v48(v27, v1);
  sub_100003CE8(v8, &qword_100063820, &qword_100048F80);
  v28 = v53;
  if (v47)
  {
    return sub_100003CE8(v24, &qword_100063820, &qword_100048F80);
  }

LABEL_10:
  v29 = static os_log_type_t.default.getter();
  result = AXLogLiveTranscription();
  if (result)
  {
    v31 = result;
    v32 = os_log_type_enabled(result, v29);
    v33 = v52;
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v55[0] = v35;
      *v34 = 136315138;
      sub_100006098(v54 + v25, v28, &qword_100063820, &qword_100048F80);
      v36 = String.init<A>(describing:)();
      v38 = sub_100031EB4(v36, v37, v55);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v29, "LiveCaptions SettingsManager: update SelectedLocale: %s", v34, 0xCu);
      sub_100018190(v35);
    }

    v39 = [objc_opt_self() defaultCenter];
    if (qword_100062750 != -1)
    {
      swift_once();
    }

    v40 = localeChangedNotification;
    sub_100003968(&qword_100063870, &qword_100049040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100048930;
    v55[0] = notificationValueKey.getter();
    v55[1] = v42;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = v33;
    v43 = sub_1000299AC((inited + 72));
    sub_100006098(v54 + v25, v43, &qword_100063820, &qword_100048F80);
    sub_10002980C(inited);
    swift_setDeallocating();
    sub_100003CE8(inited + 32, &qword_100063878, &qword_100049048);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v39 postNotificationName:v40 object:0 userInfo:isa];

    v24 = v19;
    return sub_100003CE8(v24, &qword_100063820, &qword_100048F80);
  }

  __break(1u);
  return result;
}

void sub_100028D8C()
{
  v1 = v0;
  v2 = _AXSLiveTranscriptionCopyBackgroundColorData();
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  sub_100017E20(0, &qword_100063880, NSKeyedUnarchiver_ptr);
  sub_100017E20(0, &qword_100063828, UIColor_ptr);
  v4 = v3;
  v5 = Data.init(referencing:)();
  v7 = v6;
  v19 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();

  sub_100029948(v5, v7);
  if (v19)
  {
    v11 = v19;
    v20 = Color.init(_:)();
    v21 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
    swift_beginAccess();
    v22 = *(v1 + v21);
    *(v1 + v21) = v20;
  }

  else
  {
LABEL_3:
    if (qword_100062760 != -1)
    {
      swift_once();
    }

    v8 = qword_100063800;
    v9 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
    swift_beginAccess();
    v10 = *(v1 + v9);
    *(v1 + v9) = v8;

    v11 = 0;
  }

  v12 = [objc_opt_self() defaultCenter];
  if (qword_100062738 != -1)
  {
    swift_once();
  }

  v13 = backgroundColorChangedNotification;
  sub_100003968(&qword_100063870, &qword_100049040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048930;
  notificationValueKey.getter();
  AnyHashable.init<A>(_:)();
  v15 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
  swift_beginAccess();
  v16 = *(v1 + v15);
  *(inited + 96) = &type metadata for Color;
  *(inited + 72) = v16;

  sub_10002980C(inited);
  swift_setDeallocating();
  sub_100003CE8(inited + 32, &qword_100063878, &qword_100049048);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 postNotificationName:v13 object:0 userInfo:isa];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong backgroundColorDidChange];
    swift_unknownObjectRelease();
  }
}

void *sub_10002916C(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a3];
    return swift_unknownObjectRelease();
  }

  return result;
}

id AXLTSettingsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXLTSettingsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AXLTSettingsManager()
{
  result = qword_100063858;
  if (!qword_100063858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000292FC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AXLTSettingsManager();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

UIFont_optional __swiftcall AXLTSettingsManager.fontObjc()()
{
  v0 = objc_opt_self();
  if (qword_100062780 != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = [v0 preferredFontForTextStyle:textFontStyle];

  v2 = v1;
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

UIColor_optional __swiftcall AXLTSettingsManager.textColorObjc()()
{
  v0 = sub_10002947C(&OBJC_IVAR___AXLTSettingsManager_textColor);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

UIColor_optional __swiftcall AXLTSettingsManager.backgroundColorObjc()()
{
  v0 = sub_10002947C(&OBJC_IVAR___AXLTSettingsManager_backgroundColor);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t sub_10002947C(uint64_t *a1)
{
  sub_100017E20(0, &qword_100063828, UIColor_ptr);
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v1 + v3);

  return UIColor.init(_:)();
}

id sub_1000294FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100017E20(0, &qword_100063828, UIColor_ptr);
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);

  v7 = UIColor.init(_:)();

  return v7;
}

void sub_1000295AC()
{
  sub_100029690();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100029690()
{
  if (!qword_100063868)
  {
    type metadata accessor for Locale();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100063868);
    }
  }
}

unint64_t sub_100029708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003968(&qword_1000638A0, &qword_100049060);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10003C320(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_10002980C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003968(&qword_100063888, &qword_100049050);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006098(v4, v13, &qword_100063878, &qword_100049048);
      result = sub_10003C2DC(v13);
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
      result = sub_10002999C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100029948(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

_OWORD *sub_10002999C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_1000299AC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100029A10()
{
  result = qword_100063898;
  if (!qword_100063898)
  {
    type metadata accessor for Locale();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063898);
  }

  return result;
}

uint64_t *AXLTCaptionsProvider.shared.unsafeMutableAddressor()
{
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  return &static AXLTCaptionsProvider.shared;
}

uint64_t sub_100029AE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t AXLTCaptionsProvider.captions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AXLTCaptionsProvider.captions.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*AXLTCaptionsProvider.captions.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100032E38;
}

uint64_t AXLTCaptionsProvider.$captions.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_1000638C8, &qword_1000490E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_1000638C0, &qword_1000490E0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXLTCaptionsProvider.$captions.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003968(&qword_1000638C8, &qword_1000490E8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___AXLTCaptionsProvider__captions;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_1000638C0, &qword_1000490E0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t AXLTCaptionsProvider.audioHistogramSize.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AXLTCaptionsProvider.audioHistogramSize.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*AXLTCaptionsProvider.audioHistogramSize.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10002A174;
}

void sub_10002A178(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_10002A1FC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_100003968(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AXLTCaptionsProvider.$audioHistogramSize.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_1000638E0, &qword_100049140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXLTCaptionsProvider.$audioHistogramSize.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003968(&qword_1000638E0, &qword_100049140);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___AXLTCaptionsProvider__audioHistogramSize;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10002A51C;
}

void sub_10002A520(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t AXLTCaptionsProvider.audioHistogram.getter()
{
  v1 = OBJC_IVAR___AXLTCaptionsProvider_audioHistogram;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t AXLTCaptionsProvider.audioHistogram.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXLTCaptionsProvider_audioHistogram;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AXLTCaptionsProvider.isTranscribing.getter()
{
  v1 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTCaptionsProvider.isTranscribing.setter(char a1)
{
  v3 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AXLTCaptionsProvider.activeRequestType.getter()
{
  v1 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTCaptionsProvider.activeRequestType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_10002A970()
{
  result = [objc_allocWithZone(type metadata accessor for AXLTCaptionsProvider()) init];
  static AXLTCaptionsProvider.shared = result;
  return result;
}

id static AXLTCaptionsProvider.shared.getter()
{
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  v1 = static AXLTCaptionsProvider.shared;

  return v1;
}

Swift::Void __swiftcall AXLTCaptionsProvider.startTranscribing()()
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v1 = static AXLTSettingsManager.shared;
  v2 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    v3 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
    swift_beginAccess();
    v4 = *(v1 + v3);
    v5 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
    swift_beginAccess();
    if (*(v1 + v5) == 1 && (v6 = [objc_opt_self() sharedInstance], v7 = objc_msgSend(v6, "isCallActive"), v6, v7))
    {
      v8 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
      v9 = 1;
      swift_beginAccess();
      *(v0 + v8) = 1;
      v10 = -2;
    }

    else
    {
      v9 = v4 ^ 1u;
      v11 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
      swift_beginAccess();
      *(v0 + v11) = v9;
      v10 = -1;
    }

    *(v0 + OBJC_IVAR___AXLTCaptionsProvider_activePid) = v10;
    AXLTCaptionsProvider.startTranscribing(_:_:)(v9, v10);
  }
}

void AXLTCaptionsProvider.startTranscribing(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = static os_log_type_t.default.getter();
  v6 = AXLogLiveTranscription();
  if (!v6)
  {
LABEL_19:
    __break(1u);
  }

  v7 = v6;
  if (os_log_type_enabled(v6, v5))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v7, v5, "startTranscribing for type = %ld, pid = %ld", v8, 0x16u);
  }

  v9 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
  swift_beginAccess();
  *&v2[v9] = a1;
  v10 = OBJC_IVAR___AXLTCaptionsProvider_activePid;
  *&v2[OBJC_IVAR___AXLTCaptionsProvider_activePid] = a2;
  sub_10002F8E8();
  v11 = *&v2[v10];
  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = *&v2[OBJC_IVAR___AXLTCaptionsProvider_transcription];
  v13 = *&v2[v9];
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  v42 = sub_10002FA44;
  v43 = v14;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_100032E40;
  v41 = &unk_10005ECC0;
  v15 = _Block_copy(&aBlock);
  v16 = v2;

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v42 = sub_10002FA64;
  v43 = v17;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_100032E40;
  v41 = &unk_10005ED10;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  aBlock = 0;
  LODWORD(v12) = [v12 startTranscribing:v13 targetPID:v11 callbackBlock:v15 audioInfoBlock:v18 error:&aBlock];
  _Block_release(v18);
  _Block_release(v15);
  v20 = aBlock;
  if (v12)
  {
    v21 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
    swift_beginAccess();
    v19[v21] = 1;
    if (*&v2[v9])
    {
      v22 = v20;
    }

    else
    {
      v26 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed;
      if (v19[OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed] == 1)
      {
        v27 = v20;
      }

      else
      {
        v28 = objc_opt_self();
        v29 = v20;
        v30 = [v28 defaultCenter];
        v31 = [objc_opt_self() sharedInstance];
        [v30 addObserver:v19 selector:"handleAudioSessionInterruptionWithNotification:" name:AVAudioSessionInterruptionNotification object:v31];

        v19[v26] = 1;
      }

      v32 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed;
      if ((v19[OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed] & 1) == 0)
      {
        v33 = [objc_opt_self() defaultCenter];
        v34 = [objc_opt_self() sharedInstance];
        [v33 addObserver:v19 selector:"handleAudioSessionResetWithNotification:" name:AVAudioSessionMediaServicesWereResetNotification object:v34];

        v19[v32] = 1;
      }
    }

    v35 = [objc_allocWithZone(NSNumber) initWithInt:1057];
    v36 = [v35 unsignedIntValue];

    v37 = [objc_opt_self() sharedApplication];
    UIAccessibilityPostNotification(v36, v37);
  }

  else
  {
    v23 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.error.getter();
    v24 = AXLogLiveTranscription();
    if (v24)
    {
      v25 = v24;
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10002B170(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static os_log_type_t.debug.getter();
  v10 = AXLogLiveTranscription();
  if (!v10)
  {
    goto LABEL_87;
  }

  v11 = v10;
  v12 = os_log_type_enabled(v10, v9);
  v82 = v5;
  v83 = v4;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v84[0] = v14;
    *v13 = 136315138;
    v15 = [a1 transcribedText];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100031EB4(v16, v18, v84);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v9, "Transcribed data = %s", v13, 0xCu);
    sub_100018190(v14);
  }

  sub_100030598();
  v20 = [a1 transcribedText];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = String.count.getter();

  if (!v21)
  {
    *(a2 + OBJC_IVAR___AXLTCaptionsProvider_newCaption) = 1;
    static os_log_type_t.debug.getter();
    v32 = AXLogLiveTranscription();
    if (v32)
    {
      v33 = v32;
      os_log(_:dso:log:_:_:)();

      sub_10002CFEC(a1);
      return;
    }

    goto LABEL_89;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v84[0] >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 < 1)
  {
    goto LABEL_25;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v84[0] >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_68;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v84[0] & 0xC000000000000001) != 0)
  {
LABEL_68:
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  if (v25 >= *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    v35 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_23;
  }

  v26 = *(v84[0] + 8 * v25 + 32);
LABEL_15:
  v27 = v26;

  v28 = AXLTCaption.appID.getter();
  v30 = v29;

  if (v28 == placeholderID.getter() && v30 == v31)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v84[0] >> 62)
  {
    goto LABEL_71;
  }

  v35 = *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_23:

  v24 = __OFSUB__(v35, 1);
  v36 = (v35 - 1);
  if (v24)
  {
    __break(1u);
    goto LABEL_73;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v37 = static Published.subscript.modify();

  v37(v84, 0);

LABEL_25:
  v38 = OBJC_IVAR___AXLTCaptionsProvider_captionsID;
  v81[3] = *(a2 + OBJC_IVAR___AXLTCaptionsProvider_captionsID);
  v39 = [a1 appID];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81[1] = v41;
  v81[2] = v40;

  v42 = [a1 appName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = objc_opt_self();
  v44 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v82 + 8))(v8, v83);
  v46 = [v43 dateToString:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = [a1 transcribedText];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = [a1 transcription];
  v49 = [v48 segments];

  sub_100017E20(0, &qword_100063AB8, SFTranscriptionSegment_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = objc_allocWithZone(type metadata accessor for AXLTCaption());
  a1 = AXLTCaption.init(id:appID:appName:time:text:segments:placeholder:actionType:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v84[0] >> 62)
  {
    v51 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v51 = *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v51 || *(a2 + OBJC_IVAR___AXLTCaptionsProvider_newCaption) == 1)
  {
    v52 = *(a2 + v38);
    v24 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v24)
    {
      __break(1u);
    }

    else
    {
      *(a2 + v38) = v53;
      swift_getKeyPath();
      swift_getKeyPath();
      v54 = a1;
      v49 = static Published.subscript.modify();
      v56 = v55;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_31;
      }
    }

    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_31:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (v49)(v84, 0);

    *(a2 + OBJC_IVAR___AXLTCaptionsProvider_newCaption) = 0;
    v57 = *(a2 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption);
    *(a2 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption) = 0;

    static os_log_type_t.debug.getter();
    v58 = AXLogLiveTranscription();
    if (v58)
    {
      v59 = v58;
      os_log(_:dso:log:_:_:)();

      sub_10002E4D4();
LABEL_61:
      v80 = *(a2 + OBJC_IVAR___AXLTCaptionsProvider_currentCaption);
      *(a2 + OBJC_IVAR___AXLTCaptionsProvider_currentCaption) = a1;

      return;
    }

    goto LABEL_88;
  }

  v60 = *(a2 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption);
  if (v60)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v60;
    static Published.subscript.getter();

    if (!(v84[0] >> 62))
    {
      v61 = *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_36;
    }

LABEL_73:
    v61 = _CocoaArrayWrapper.endIndex.getter();
LABEL_36:

    v62 = v61 - 1;
    if (__OFSUB__(v61, 1))
    {
      __break(1u);
    }

    else
    {
      v63 = mergeCaptions(_:_:)();
      swift_getKeyPath();
      swift_getKeyPath();
      v64 = static Published.subscript.modify();
      v66 = v65;
      v67 = *v65;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v66 = v67;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v67 & 0x8000000000000000) != 0 || (v67 & 0x4000000000000000) != 0)
      {
        v67 = sub_10003245C(v67);
        *v66 = v67;
      }

      if ((v62 & 0x8000000000000000) == 0)
      {
        if (v62 < *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v69 = *((v67 & 0xFFFFFFFFFFFFFF8) + 8 * v62 + 0x20);
          *((v67 & 0xFFFFFFFFFFFFFF8) + 8 * v62 + 0x20) = v63;

          v64(v84, 0);

          goto LABEL_59;
        }

        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v84[0] >> 62))
  {
    v70 = *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_46;
  }

LABEL_77:
  v70 = _CocoaArrayWrapper.endIndex.getter();
LABEL_46:

  v24 = __OFSUB__(v70, 1);
  v71 = v70 - 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_79;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v84[0] & 0xC000000000000001) != 0)
  {
LABEL_79:
    v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_51;
  }

  if ((v71 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_81;
  }

  if (v71 >= *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v72 = *(v84[0] + 8 * v71 + 32);
LABEL_51:
  v73 = v72;

  dispatch thunk of AXLTCaption.text.getter();
  dispatch thunk of AXLTCaption.text.setter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v84[0] >> 62))
  {
    v74 = *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_53;
  }

LABEL_81:
  v74 = _CocoaArrayWrapper.endIndex.getter();
LABEL_53:

  v24 = __OFSUB__(v74, 1);
  v75 = v74 - 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_83;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v84[0] & 0xC000000000000001) != 0)
  {
LABEL_84:
    v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_58;
  }

  if ((v75 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_86;
  }

  if (v75 >= *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v76 = *(v84[0] + 8 * v75 + 32);
LABEL_58:
  v77 = v76;

  dispatch thunk of AXLTCaption.segments.getter();
  dispatch thunk of AXLTCaption.segments.setter();

LABEL_59:
  static os_log_type_t.debug.getter();
  v78 = AXLogLiveTranscription();
  if (v78)
  {
    v79 = v78;
    os_log(_:dso:log:_:_:)();

    goto LABEL_61;
  }

LABEL_90:
  __break(1u);
}

uint64_t sub_10002BEF4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_10003245C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_10002BF88(void *a1, char *a2)
{
  v4 = OBJC_IVAR___AXLTCaptionsProvider_audioHistogram;
  swift_beginAccess();
  v5 = *&a2[v4];
  *&a2[v4] = &_swiftEmptyArrayStorage;

  v6 = [a1 audioHistogram];
  sub_100017E20(0, &qword_100063AB0, NSNumber_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  v9 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    [v10 doubleValue];
    v13 = v12;
    v14 = *&a2[v4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&a2[v4] = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_100006224(0, *(v14 + 2) + 1, 1, v14);
      *&a2[v4] = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_100006224((v16 > 1), v17 + 1, 1, v14);
    }

    ++v9;
    *(v14 + 2) = v17 + 1;
    *&v14[8 * v17 + 32] = v13;
    *&a2[v4] = v14;
  }

  while (v8 != v9);
LABEL_15:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = *(*&a2[v4] + 16);
  if (aBlock[0] != v18)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v18;
    v19 = a2;
    static Published.subscript.setter();
  }

  v20 = OBJC_IVAR___AXLTCaptionsProvider_histogramTimer;
  [*&a2[OBJC_IVAR___AXLTCaptionsProvider_histogramTimer] invalidate];
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  aBlock[4] = sub_100032E04;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100032E40;
  aBlock[3] = &unk_10005EE28;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  v25 = [v21 scheduledTimerWithTimeInterval:0 repeats:v23 block:0.5];
  _Block_release(v23);
  v26 = *&a2[v20];
  *&a2[v20] = v25;
}

uint64_t sub_10002C2E0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  result = swift_beginAccess();
  if (*(a2 + v3) == 1)
  {
    return sub_10002F8E8();
  }

  return result;
}

void sub_10002C334(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

Swift::Void __swiftcall AXLTCaptionsProvider.stopTranscribing()()
{
  v1 = static os_log_type_t.debug.getter();
  v2 = AXLogLiveTranscription();
  if (!v2)
  {
LABEL_15:
    __break(1u);
  }

  v3 = v2;
  if (os_log_type_enabled(v2, v1))
  {
    v4 = v0;
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
    swift_beginAccess();
    *(v5 + 4) = *&v4[v6];

    _os_log_impl(&_mh_execute_header, v3, v1, "stopTranscribing for type = %ld", v5, 0xCu);
  }

  v7 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed;
  if (v0[OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed] == 1)
  {
    v8 = [objc_opt_self() defaultCenter];
    v9 = [objc_opt_self() sharedInstance];
    [v8 removeObserver:v0 name:AVAudioSessionMediaServicesWereResetNotification object:v9];

    v0[v7] = 0;
  }

  v10 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_transcription];
  v11 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
  swift_beginAccess();
  v12 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_activePid];
  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ([v10 stopTranscribing:*&v0[v11] targetPID:? error:?])
  {
    v13 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
    swift_beginAccess();
    v0[v13] = 0;
    v14 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption];
    *&v0[OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption] = 0;
    v15 = 0;

    v16 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_currentCaption];
    *&v0[OBJC_IVAR___AXLTCaptionsProvider_currentCaption] = 0;

    v0[OBJC_IVAR___AXLTCaptionsProvider_newCaption] = 1;
    v17 = OBJC_IVAR___AXLTCaptionsProvider_audioHistogram;
    swift_beginAccess();
    v18 = *&v0[v17];
    *&v0[v17] = &_swiftEmptyArrayStorage;

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v0;
    static Published.subscript.setter();
    sub_100030598();
LABEL_12:
    v23 = [objc_allocWithZone(NSNumber) initWithInt:1057];
    v24 = [v23 unsignedIntValue];

    UIAccessibilityPostNotification(v24, 0);
    return;
  }

  v20 = 0;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  static os_log_type_t.error.getter();
  v21 = AXLogLiveTranscription();
  if (v21)
  {
    v22 = v21;
    os_log(_:dso:log:_:_:)();

    goto LABEL_12;
  }

  __break(1u);
}

char *sub_10002C7E8()
{
  v1 = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v31 - v4;
  v6 = sub_100003968(&qword_1000638C0, &qword_1000490E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = OBJC_IVAR___AXLTCaptionsProvider__captions;
  v33 = &_swiftEmptyArrayStorage;
  sub_100003968(&qword_1000638B0, &qword_100048610);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v0[v11], v10, v6);
  v12 = OBJC_IVAR___AXLTCaptionsProvider__audioHistogramSize;
  v33 = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v12], v5, v1);
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_audioHistogram] = &_swiftEmptyArrayStorage;
  v0[OBJC_IVAR___AXLTCaptionsProvider_isTranscribing] = 0;
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v13 = static AXLTSettingsManager.shared;
  v14 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_activeRequestType] = (*(v13 + v14) & 1) == 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_activePid] = -1;
  v15 = OBJC_IVAR___AXLTCaptionsProvider_transcription;
  *&v0[v15] = [objc_allocWithZone(AXLTLiveTranscription) init];
  v0[OBJC_IVAR___AXLTCaptionsProvider_newCaption] = 1;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_currentCaption] = 0;
  v16 = OBJC_IVAR___AXLTCaptionsProvider_dateFormatter;
  *&v0[v16] = [objc_allocWithZone(NSDateFormatter) init];
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_cleanHistoryTimer] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_histogramTimer] = 0;
  v0[OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed] = 0;
  v0[OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed] = 0;
  v17 = OBJC_IVAR___AXLTCaptionsProvider_lockScreenObserver;
  *&v0[v17] = [objc_allocWithZone(AXLTLockScreenObserver) init];
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_captionsID] = 0;
  v18 = type metadata accessor for AXLTCaptionsProvider();
  v32.receiver = v0;
  v32.super_class = v18;
  v19 = objc_msgSendSuper2(&v32, "init");
  v20 = *&v19[OBJC_IVAR___AXLTCaptionsProvider_dateFormatter];
  v21 = v19;
  v22 = v20;
  v23 = String._bridgeToObjectiveC()();
  [v22 setDateFormat:v23];

  v24 = objc_opt_self();
  v25 = [v24 sharedInstance];
  [v25 setDelegate:v21];

  v26 = [v24 sharedInstance];
  [v26 setUtilityType:1];

  [*&v21[OBJC_IVAR___AXLTCaptionsProvider_lockScreenObserver] setDelegate:v21];
  v27 = objc_opt_self();
  historyCheckTimeInterval.getter();
  v28 = [v27 scheduledTimerWithTimeInterval:v21 target:"cleanOldestCaptionsIfNeeded" selector:0 userInfo:1 repeats:?];

  v29 = *&v21[OBJC_IVAR___AXLTCaptionsProvider_cleanHistoryTimer];
  *&v21[OBJC_IVAR___AXLTCaptionsProvider_cleanHistoryTimer] = v28;

  sub_10002D910(0, 0);
  AXLTCaptionsProvider.startTranscribing()();

  return v21;
}

id AXLTCaptionsProvider.__deallocating_deinit()
{
  AXLTCaptionsProvider.stopTranscribing()();
  v1 = OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer;
  [*&v0[OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer] invalidate];
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  v3 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_cleanHistoryTimer];
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed;
  if (v0[OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed] == 1)
  {
    v5 = [objc_opt_self() defaultCenter];
    v6 = [objc_opt_self() sharedInstance];
    [v5 removeObserver:v0 name:AVAudioSessionInterruptionNotification object:v6];

    v0[v4] = 0;
  }

  v7 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed;
  if (v0[OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed] == 1)
  {
    v8 = [objc_opt_self() defaultCenter];
    v9 = [objc_opt_self() sharedInstance];
    [v8 removeObserver:v0 name:AVAudioSessionMediaServicesWereResetNotification object:v9];

    v0[v7] = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for AXLTCaptionsProvider();
  return objc_msgSendSuper2(&v11, "dealloc");
}

NSObject *sub_10002CFEC(void *a1)
{
  result = [a1 assetState];
  if (result == -2)
  {
    return result;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  if ([a1 assetState] == -1)
  {
    v22 = static AXLTUtilities.AXLTLocString(_:)();
LABEL_10:
    v29 = *(v4 + 24);
    *(v4 + 16) = v22;
    *(v4 + 24) = v23;

    goto LABEL_11;
  }

  if ([a1 assetState] != 100)
  {
    sub_100003968(&qword_100063A90, &qword_1000491F8);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100048C70;
    v25 = static AXLTUtilities.AXLTLocString(_:)();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100032848();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    v28 = [a1 assetState];
    *(v24 + 96) = &type metadata for Int;
    *(v24 + 104) = &protocol witness table for Int;
    *(v24 + 72) = v28;
    v22 = String.init(format:_:)();
    goto LABEL_10;
  }

  v5 = static AXLTUtilities.AXLTLocString(_:)();
  v6 = *(v4 + 24);
  *(v4 + 16) = v5;
  *(v4 + 24) = v7;

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v4;
  aBlock[4] = sub_1000328DC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100032E40;
  aBlock[3] = &unk_10005EDD8;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  v12 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:2.0];
  _Block_release(v10);

  v13 = static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v14 = result;
  if (os_log_type_enabled(result, v13))
  {
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v15 = 136315138;
    v16 = [objc_opt_self() currentThread];
    v17 = [v16 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_100031EB4(v18, v20, aBlock);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v13, "Timer: %s", v15, 0xCu);
    sub_100018190(v39);
  }

LABEL_11:
  v30 = static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v31 = result;
  if (os_log_type_enabled(result, v30))
  {

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136315138;
    swift_beginAccess();
    v34 = *(v4 + 16);
    v35 = *(v4 + 24);

    v36 = sub_100031EB4(v34, v35, aBlock);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v31, v30, "progress %s", v32, 0xCu);
    sub_100018190(v33);
  }

  swift_beginAccess();
  v37 = *(v4 + 16);
  v38 = *(v4 + 24);

  sub_10002D910(v37, v38);
}

void sub_10002D4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.debug.getter();
  v4 = AXLogLiveTranscription();
  if (!v4)
  {
    goto LABEL_40;
  }

  v5 = v4;
  os_log(_:dso:log:_:_:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 < 1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_32;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v25 & 0xC000000000000001) != 0)
  {
LABEL_32:
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v9 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = *(v25 + 8 * v9 + 32);
LABEL_12:
  v11 = v10;

  v12 = AXLTCaption.appID.getter();
  v14 = v13;

  if (v12 == placeholderID.getter() && v14 == v15)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v25 >> 62))
  {
    v17 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_18;
  }

LABEL_35:
  v17 = _CocoaArrayWrapper.endIndex.getter();
LABEL_18:

  v8 = __OFSUB__(v17, 1);
  v18 = v17 - 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v25 & 0xC000000000000001) == 0)
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v18 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v19 = *(v25 + 8 * v18 + 32);
        goto LABEL_23;
      }

      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }
  }

  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:
  v20 = v19;

  v21 = dispatch thunk of AXLTCaption.text.getter();
  v23 = v22;

  swift_beginAccess();
  if (v21 == *(a3 + 16) && v23 == *(a3 + 24))
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  sub_10002D910(0, 0);
}

void sub_10002D910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v6 = static AXLTSettingsManager.shared;
  v7 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  if (*(v6 + v7) == 1)
  {
    v8 = placeholderMicName.getter();
  }

  else
  {
    v8 = placeholderName.getter();
  }

  v10 = v8;
  v11 = v9;
  v12 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  swift_beginAccess();
  v68 = v12;
  if (*(v6 + v12) == 1)
  {
    v13 = placeholderPausedText.getter();
  }

  else
  {
    v13 = placeholderText.getter();
  }

  v70 = a2;
  v69 = v6;
  if (a2)
  {

    if (static AXLTUtilities.AXLTLocString(_:)() == a1 && v15 == a2)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v16 = a2;
  }

  else
  {
    v16 = v14;
    a1 = v13;
  }

  v17 = OBJC_IVAR___AXLTCaptionsProvider_captionsID;
  v18 = *&v3[OBJC_IVAR___AXLTCaptionsProvider_captionsID];
  v19 = placeholderID.getter();
  objc_allocWithZone(type metadata accessor for AXLTCaption());

  v20 = AXLTCaption.init(id:appID:appName:time:text:segments:placeholder:actionType:)();
  v21 = *&v3[v17];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    v19 = v20;
    *&v3[v17] = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!(v71[0] >> 62))
    {
      v24 = *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v24)
      {
        goto LABEL_19;
      }

LABEL_78:

      sub_100003968(&qword_100063AA8, &qword_100049200);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_100049080;
      *(v65 + 32) = v19;
      swift_getKeyPath();
      swift_getKeyPath();
      v71[0] = v65;
      v66 = v19;
      v67 = v3;
      static Published.subscript.setter();

      goto LABEL_79;
    }
  }

  v64 = _CocoaArrayWrapper.endIndex.getter();

  if (!v64)
  {
    goto LABEL_78;
  }

LABEL_19:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v71[0] >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = __OFSUB__(v25, 1);
  v26 = v25 - 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_82;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v71[0] & 0xC000000000000001) != 0)
  {
LABEL_82:
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_26;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_84;
  }

  if (v26 >= *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v27 = *(v71[0] + 8 * v26 + 32);
LABEL_26:
  v28 = v27;

  v29 = AXLTCaption.appID.getter();
  v31 = v30;

  if (v29 == placeholderID.getter() && v31 == v32)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      v19 = v19;
      v3 = static Published.subscript.modify();
      v51 = v50;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_54:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (v3)(v71, 0);

LABEL_75:

        return;
      }

LABEL_99:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_54;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v71[0] >> 62))
  {
    v34 = *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_32;
  }

LABEL_85:
  v34 = _CocoaArrayWrapper.endIndex.getter();
LABEL_32:

  v22 = __OFSUB__(v34, 1);
  v35 = v34 - 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_87;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v71[0] & 0xC000000000000001) != 0)
  {
LABEL_87:
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_37;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_89;
  }

  if (v35 >= *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v36 = *(v71[0] + 8 * v35 + 32);
LABEL_37:
  v37 = v36;

  v38 = AXLTCaption.appName.getter();
  v40 = v39;

  if (v38 == v10 && v40 == v11)
  {
  }

  else
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v41 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v71[0] >> 62))
  {
    v42 = *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_43;
  }

LABEL_90:
  v42 = _CocoaArrayWrapper.endIndex.getter();
LABEL_43:

  v22 = __OFSUB__(v42, 1);
  v43 = v42 - 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_92;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v71[0] & 0xC000000000000001) != 0)
  {
LABEL_92:
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_48;
  }

  if ((v43 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_94;
  }

  if (v43 >= *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v44 = *(v71[0] + 8 * v43 + 32);
LABEL_48:
  v45 = v44;

  v46 = dispatch thunk of AXLTCaption.text.getter();
  v48 = v47;

  if (v46 == a1 && v48 == v16)
  {

LABEL_79:

    return;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v49)
  {
LABEL_52:

    return;
  }

  if (v70 || (*(v69 + v68) & 1) != 0)
  {
LABEL_65:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!(v71[0] >> 62))
    {
      v57 = *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_67;
    }

LABEL_95:
    v57 = _CocoaArrayWrapper.endIndex.getter();
LABEL_67:

    v58 = v57 - 1;
    if (__OFSUB__(v57, 1))
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v19 = v19;
      v3 = static Published.subscript.modify();
      v60 = v59;
      v61 = *v59;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v60 = v61;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v61 & 0x8000000000000000) != 0 || (v61 & 0x4000000000000000) != 0)
      {
        v61 = sub_10003245C(v61);
        *v60 = v61;
      }

      if ((v58 & 0x8000000000000000) == 0)
      {
        if (v58 < *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 8 * v58 + 0x20);
          *((v61 & 0xFFFFFFFFFFFFFF8) + 8 * v58 + 0x20) = v19;

          (v3)(v71, 0);

          goto LABEL_75;
        }

        goto LABEL_98;
      }
    }

    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v71[0] >> 62)
  {
    v52 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v52 = *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = __OFSUB__(v52, 1);
  v53 = v52 - 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_102;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v71[0] & 0xC000000000000001) != 0)
  {
LABEL_102:
    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_64:
    v55 = v54;

    dispatch thunk of AXLTCaption.actionType.getter();

    v56 = AXLTCaptionActionsType.rawValue.getter();
    if (v56 == AXLTCaptionActionsType.rawValue.getter())
    {
      goto LABEL_52;
    }

    goto LABEL_65;
  }

  if ((v53 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v53 < *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v54 = *(v71[0] + 8 * v53 + 32);
    goto LABEL_64;
  }

  __break(1u);
}

uint64_t sub_10002E4D4()
{
  v4 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v48[0] >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v5 - 2;
  if (v5 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v48[0] & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_51;
      }

      v8 = *(v48[0] + 8 * v7 + 32);
    }

    v9 = v8;

    dispatch thunk of AXLTCaption.actionType.getter();

    v10 = AXLTCaptionActionsType.rawValue.getter();
    result = AXLTCaptionActionsType.rawValue.getter();
    if (v10 == result)
    {
      return result;
    }

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    static Published.subscript.getter();

    if ((v48[0] & 0xC000000000000001) == 0)
    {
      if (v7 >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = *(v48[0] + 8 * v7 + 32);
LABEL_11:
      v13 = v12;

      v14 = AXLTCaption.appID.getter();
      v1 = v15;

      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v1 == v16)
      {

        micCaptionTextTimeLimit.getter();
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          micCaptionTextTimeLimit.getter();
        }

        else
        {
          captionTextTimeLimit.getter();
        }
      }

      v3 = v17;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v48[0] & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_56;
        }

        v19 = *(v48[0] + 8 * v7 + 32);
      }

      v20 = v19;

      dispatch thunk of AXLTCaption.time.getter();

      v2 = String._bridgeToObjectiveC()();

      KeyPath = v5 - 1;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v47 = v14;
      if ((v48[0] & 0xC000000000000001) == 0)
      {
        if (v5 <= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v14 = v5 - 1;
          v21 = *(v48[0] + 8 * KeyPath + 32);
          goto LABEL_23;
        }

LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

LABEL_54:
      v14 = KeyPath;
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:
      v22 = v21;

      v23 = objc_opt_self();
      dispatch thunk of AXLTCaption.time.getter();

      v24 = String._bridgeToObjectiveC()();

      [v23 timeDifferenceDateStringOld:v2 dateStringNew:v24];
      v26 = v25;

      if (v26 >= v3)
      {
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v48[0] & 0xC000000000000001) == 0)
      {
        if (v5 > *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_59;
        }

        v23 = v14;
        v27 = *(v48[0] + 8 * v14 + 32);
LABEL_27:
        v28 = v27;

        v29 = AXLTCaption.appID.getter();
        v31 = v30;

        if (v47 == v29 && v1 == v31)
        {
        }

        else
        {
          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v32 & 1) == 0)
          {
            return result;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v33 = v48[0];
        if ((v48[0] & 0xC000000000000001) == 0)
        {
          if (v7 >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_62;
          }

          v34 = *(v48[0] + 8 * v7 + 32);
LABEL_35:
          v35 = v34;

          v36 = *(v4 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption);
          *(v4 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption) = v35;

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if ((v48[0] & 0xC000000000000001) != 0)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v7 >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            v37 = *(v48[0] + 8 * v7 + 32);
          }

          v33 = v37;

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if ((v48[0] & 0xC000000000000001) == 0)
          {
            if (v5 > *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_65:
              __break(1u);
              return result;
            }

            v38 = *(v48[0] + 8 * v23 + 32);
            goto LABEL_41;
          }

LABEL_62:
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_41:
          v39 = v38;

          v40 = mergeCaptions(_:_:)();

          swift_getKeyPath();
          swift_getKeyPath();
          v41 = static Published.subscript.modify();
          v43 = v42;
          v44 = *v42;
          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v43 = v44;
          if (!result || (v44 & 0x8000000000000000) != 0 || (v44 & 0x4000000000000000) != 0)
          {
            result = sub_10003245C(v44);
            v44 = result;
            *v43 = result;
          }

          if (v7 < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
            *((v44 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v40;

            v41(v48, 0);

            swift_getKeyPath();
            swift_getKeyPath();
            v46 = static Published.subscript.modify();

            v46(v48, 0);
          }

          goto LABEL_64;
        }

LABEL_59:
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_35;
      }

LABEL_57:
      v23 = v14;
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_27;
    }

LABEL_51:
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  return result;
}

Swift::Void __swiftcall AXLTCaptionsProvider.cleanCaptions()()
{
  static os_log_type_t.debug.getter();
  v0 = AXLogLiveTranscription();
  if (v0)
  {
    v1 = v0;
    os_log(_:dso:log:_:_:)();

    swift_getKeyPath();
    swift_getKeyPath();
    v2 = static Published.subscript.modify();
    v4 = *v3;
    *v3 = &_swiftEmptyArrayStorage;

    v2(&v5, 0);

    sub_10002D910(0, 0);
  }

  else
  {
    __break(1u);
  }
}

NSObject *sub_10002EF30()
{
  v68 = type metadata accessor for Date();
  v64 = *(v68 - 8);
  v0 = *(v64 + 64);
  __chkstk_darwin(v68);
  v67 = &v63 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (!result)
  {
    goto LABEL_68;
  }

  v3 = result;
  os_log(_:dso:log:_:_:)();

  if (_AXSBrailleInputDeviceConnected() && _AXSVoiceOverTouchEnabled())
  {
    historyTimeIntervalMaxBraille.getter();
  }

  else
  {
    historyTimeIntervalMax.getter();
  }

  v5 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v70[0];
  if (v70[0] >> 62)
  {
    goto LABEL_60;
  }

  v8 = *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_29;
  }

LABEL_8:
  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  v65 = v64 + 8;
  v66 = v7 & 0xFFFFFFFFFFFFFF8;
  *&v6 = 134217984;
  v63 = v6;
  while (1)
  {
    if (v10)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v66 + 16))
      {
        goto LABEL_58;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      while (2)
      {
        __break(1u);
LABEL_60:
        v8 = _CocoaArrayWrapper.endIndex.getter();
        if (!v8)
        {
LABEL_29:

          v33 = OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions;
          v34 = v69;
          result = swift_beginAccess();
          v7 = *(v34 + v33);
          if (v7 >> 62)
          {
            if (v7 < 0)
            {
              v62 = *(v34 + v33);
            }

            result = _CocoaArrayWrapper.endIndex.getter();
            v35 = result;
            if (!result)
            {
              return result;
            }
          }

          else
          {
            v35 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v35)
            {
              return result;
            }
          }

          v36 = v7 & 0xC000000000000001;
          v64 += 8;
          v65 = v7 & 0xFFFFFFFFFFFFFF8;

          v37 = 0;
          *&v38 = 134217984;
          v63 = v38;
          v66 = v7 & 0xC000000000000001;
LABEL_34:
          if (v36)
          {
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v37 >= *(v65 + 16))
            {
              continue;
            }

            v39 = *(v7 + 8 * v37 + 32);
          }

          v40 = v39;
          v41 = (v37 + 1);
          if (__OFADD__(v37, 1))
          {
            goto LABEL_57;
          }

          dispatch thunk of AXLTCaption.time.getter();
          v42 = String.count.getter();

          if (v42 >= 1)
          {
            v43 = *(v69 + v33);
            if (v43 >> 62)
            {
              if (v43 < 0)
              {
                v61 = *(v69 + v33);
              }

              if (_CocoaArrayWrapper.endIndex.getter() > 1)
              {
LABEL_42:
                v44 = objc_opt_self();
                dispatch thunk of AXLTCaption.time.getter();
                v45 = String._bridgeToObjectiveC()();

                v46 = [v44 now];
                v47 = v67;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                isa = Date._bridgeToObjectiveC()().super.isa;
                (*v64)(v47, v68);
                v49 = [v44 dateToString:isa];

                if (!v49)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v49 = String._bridgeToObjectiveC()();
                }

                [v44 timeDifferenceDateStringOld:v45 dateStringNew:{v49, v63}];
                v51 = v50;

                if (v5 >= v51)
                {
                }

                v52 = *(v69 + v33);

                v53 = sub_10002F7B0(v40, v52);
                v55 = v54;

                v36 = v66;
                if ((v55 & 1) == 0)
                {
                  swift_beginAccess();
                  v56 = sub_10002BEF4(v53);
                  swift_endAccess();

                  v57 = static os_log_type_t.debug.getter();
                  result = AXLogLiveTranscription();
                  if (!result)
                  {
                    goto LABEL_67;
                  }

                  v58 = result;
                  if (os_log_type_enabled(result, v57))
                  {
                    v59 = v40;
                    v60 = swift_slowAlloc();
                    *v60 = v63;
                    *(v60 + 4) = AXLTCaption.id.getter();

                    _os_log_impl(&_mh_execute_header, v58, v57, "Removed from unlockedCaptions id: %ld", v60, 0xCu);
                    v36 = v66;
                  }
                }
              }
            }

            else if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
            {
              goto LABEL_42;
            }
          }

          ++v37;
          if (v41 == v35)
          {
          }

          goto LABEL_34;
        }

        goto LABEL_8;
      }
    }

    dispatch thunk of AXLTCaption.time.getter();
    v14 = String.count.getter();

    if (v14 >= 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v15 = v70[0] >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v15 > 1)
      {
        v16 = v10;
        v17 = objc_opt_self();
        dispatch thunk of AXLTCaption.time.getter();
        v18 = String._bridgeToObjectiveC()();

        v19 = [v17 now];
        v20 = v67;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = Date._bridgeToObjectiveC()().super.isa;
        (*v65)(v20, v68);
        v22 = [v17 dateToString:v21];

        if (!v22)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = String._bridgeToObjectiveC()();
        }

        [v17 timeDifferenceDateStringOld:v18 dateStringNew:{v22, v63}];
        v24 = v23;

        if (v5 >= v24)
        {

          goto LABEL_29;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v25 = sub_10002F7B0(v12, v70[0]);
        v27 = v26;

        v10 = v16;
        if ((v27 & 1) == 0)
        {
          break;
        }
      }
    }

LABEL_10:

    ++v9;
    if (v13 == v8)
    {
      goto LABEL_29;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v28 = static Published.subscript.modify();

  v28(v70, 0);

  v29 = static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (result)
  {
    v30 = result;
    if (os_log_type_enabled(result, v29))
    {
      v31 = v12;
      v32 = swift_slowAlloc();
      *v32 = v63;
      *(v32 + 4) = AXLTCaption.id.getter();

      _os_log_impl(&_mh_execute_header, v30, v29, "Removed from captions id: %ld", v32, 0xCu);
    }

    v10 = v16;
    goto LABEL_10;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

unint64_t sub_10002F7B0(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for AXLTCaption();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10002F8E8()
{
  v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v1 + 16) = 16;
  v2 = vdupq_n_s64(0x3FB999999999999AuLL);
  *(v1 + 32) = v2;
  *(v1 + 48) = v2;
  *(v1 + 64) = v2;
  *(v1 + 80) = v2;
  *(v1 + 96) = v2;
  *(v1 + 112) = v2;
  *(v1 + 128) = v2;
  *(v1 + 144) = v2;
  v3 = OBJC_IVAR___AXLTCaptionsProvider_audioHistogram;
  swift_beginAccess();
  v4 = *&v0[v3];
  *&v0[v3] = v1;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 != *(*&v0[v3] + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v0;
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10002FA0C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002FA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

NSObject *sub_10002FB3C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v8);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Notification();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = static os_log_type_t.error.getter();
  result = AXLogLiveTranscription();
  if (result)
  {
    v18 = result;
    (*(v12 + 16))(v15, a1, v11);
    v19 = os_log_type_enabled(v18, v16);
    v39 = v5;
    v40 = v4;
    v38 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      sub_1000326A0(&qword_100063A80, &type metadata accessor for Notification);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v12 + 8))(v15, v11);
      v25 = sub_100031EB4(v22, v24, aBlock);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v16, "CaptionsProvider AudioSession reset: %s", v20, 0xCu);
      sub_100018190(v21);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    v26 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
    result = swift_beginAccess();
    if (v2[v26] == 1)
    {
      v27 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
      result = swift_beginAccess();
      if (!*&v2[v27])
      {
        v28 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed;
        if (v2[OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed] == 1)
        {
          v29 = [objc_opt_self() defaultCenter];
          v30 = [objc_opt_self() sharedInstance];
          [v29 removeObserver:v2 name:AVAudioSessionInterruptionNotification object:v30];

          v2[v28] = 0;
        }

        if (qword_100062788 != -1)
        {
          swift_once();
        }

        sub_1000278D8(0);
        [*&v2[OBJC_IVAR___AXLTCaptionsProvider_transcription] resetTranscribing:0];
        sub_100017E20(0, &unk_100063A60, OS_dispatch_queue_ptr);
        v31 = static OS_dispatch_queue.main.getter();
        v32 = swift_allocObject();
        *(v32 + 16) = v2;
        aBlock[4] = sub_100032698;
        aBlock[5] = v32;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100029AE4;
        aBlock[3] = &unk_10005ED60;
        v33 = _Block_copy(aBlock);
        v34 = v2;

        v35 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_1000326A0(&qword_100063718, &type metadata accessor for DispatchWorkItemFlags);
        sub_100003968(&unk_100063A70, &qword_100048E48);
        sub_100003E3C(&qword_100063720, &unk_100063A70, &qword_100048E48);
        v36 = v43;
        v37 = v40;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v33);

        (*(v39 + 8))(v36, v37);
        return (*(v42 + 8))(v35, v38);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003017C(uint64_t a1)
{
  v2 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  if (*(a1 + v2) == 1)
  {
    v3 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
    swift_beginAccess();
    if (!*(a1 + v3))
    {
      if (qword_100062788 != -1)
      {
        swift_once();
      }

      sub_1000278D8(1);
    }
  }
}

void sub_10003031C()
{
  AXLTCaptionsProvider.stopTranscribing()();
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v1 = static AXLTSettingsManager.shared;
  v2 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  v3 = (*(v1 + v2) & 1) == 0;
  v4 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
  swift_beginAccess();
  *(v0 + v4) = v3;
  AXLTCaptionsProvider.startTranscribing()();
  sub_10002D910(0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v11 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = __OFSUB__(v6, 2);
    v8 = v6 - 2;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v11 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v9 = *(v11 + 8 * v8 + 32);
LABEL_13:
          v10 = v9;

          dispatch thunk of AXLTCaption.actionType.setter();

          return;
        }

        __break(1u);
        return;
      }
    }

    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }
}

uint64_t sub_100030598()
{
  v1 = OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer;
  v2 = *(v0 + OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer);
  if (!v2)
  {
    static os_log_type_t.debug.getter();
    v3 = AXLogLiveTranscription();
    if (!v3)
    {
      __break(1u);
      return _objc_release_x1();
    }

    v4 = v3;
    os_log(_:dso:log:_:_:)();

    v2 = *(v0 + v1);
  }

  [v2 invalidate];
  v5 = objc_opt_self();
  placeholderTimeInterval.getter();
  v6 = [v5 scheduledTimerWithTimeInterval:v0 target:"addPlaceholder" selector:0 userInfo:0 repeats:?];
  v7 = *(v0 + v1);
  *(v0 + v1) = v6;

  return _objc_release_x1();
}

void sub_100030684()
{
  static os_log_type_t.debug.getter();
  v0 = AXLogLiveTranscription();
  if (!v0)
  {
    goto LABEL_20;
  }

  v1 = v0;
  os_log(_:dso:log:_:_:)();

  sub_10002D910(0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v8 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = __OFSUB__(v3, 2);
    v5 = v3 - 2;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v8 & 0xC000000000000001) == 0)
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v5 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v6 = *(v8 + 8 * v5 + 32);
LABEL_12:
          v7 = v6;

          dispatch thunk of AXLTCaption.actionType.setter();

          return;
        }

        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }
    }

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }
}

void AXLTCaptionsProvider.phoneCallListenerCallConnected(_:call:)()
{
  static os_log_type_t.default.getter();
  v0 = AXLogLiveTranscription();
  if (v0)
  {
    v1 = v0;
    os_log(_:dso:log:_:_:)();

    if (qword_100062788 != -1)
    {
      swift_once();
    }

    v2 = static AXLTSettingsManager.shared;
    v3 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
    swift_beginAccess();
    if (*(v2 + v3) == 1)
    {
      AXLTCaptionsProvider.stopTranscribing()();
      AXLTCaptionsProvider.startTranscribing()();
    }
  }

  else
  {
    __break(1u);
  }
}

void AXLTCaptionsProvider.phoneCallListenerCallEnded(_:call:)()
{
  static os_log_type_t.default.getter();
  v1 = AXLogLiveTranscription();
  if (v1)
  {
    v2 = v1;
    os_log(_:dso:log:_:_:)();

    if (*(v0 + OBJC_IVAR___AXLTCaptionsProvider_activePid) == -2)
    {
      sub_100030DCC();
      AXLTCaptionsProvider.stopTranscribing()();

      AXLTCaptionsProvider.startTranscribing()();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100030DCC()
{
  static os_log_type_t.debug.getter();
  v1 = AXLogLiveTranscription();
  if (!v1)
  {
    goto LABEL_59;
  }

  v2 = v1;
  os_log(_:dso:log:_:_:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v44[0];
  v43 = v0;
  if (v44[0] >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_4:
      if (v4 >= 1)
      {
        v5 = 0;
        v42 = v44[0] & 0xC000000000000001;
        v6 = &unk_100049098;
        while (1)
        {
          v8 = v42 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v3 + 8 * v5 + 32);
          v9 = v8;
          v10 = AXLTCaption.appID.getter();
          v12 = v11;
          if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
          {
            break;
          }

          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v14)
          {
            goto LABEL_16;
          }

LABEL_8:
          if (v4 == ++v5)
          {
            goto LABEL_20;
          }
        }

LABEL_16:
        swift_getKeyPath();
        swift_getKeyPath();
        v15 = v6;
        static Published.subscript.getter();

        v16 = sub_10002F7B0(v9, v44[0]);
        v18 = v17;

        if (v18)
        {
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v7 = static Published.subscript.modify();

          v7(v44, 0);
        }

        v6 = v15;
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_53;
    }
  }

LABEL_20:

  v19 = OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions;
  swift_beginAccess();
  v20 = *(v43 + v19);
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_35;
    }

    goto LABEL_22;
  }

  if (v20 < 0)
  {
    v41 = *(v43 + v19);
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (v21)
  {
LABEL_22:
    if (v21 < 1)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v22 = 0;
    while (1)
    {
      v23 = (v20 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v20 + 8 * v22 + 32);
      v24 = v23;
      v25 = AXLTCaption.appID.getter();
      v27 = v26;
      if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
      {
        break;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_32;
      }

LABEL_24:
      ++v22;

      if (v21 == v22)
      {

        goto LABEL_35;
      }
    }

LABEL_32:
    v30 = *(v43 + v19);

    v31 = sub_10002F7B0(v24, v30);
    v33 = v32;

    if ((v33 & 1) == 0)
    {
      swift_beginAccess();
      v34 = sub_10002BEF4(v31);
      swift_endAccess();

      v24 = v34;
    }

    goto LABEL_24;
  }

LABEL_35:
  sub_10002D910(0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v45 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v35 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!(v45 >> 62))
    {
      v36 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_40;
    }

LABEL_54:
    v36 = _CocoaArrayWrapper.endIndex.getter();
LABEL_40:

    v37 = __OFSUB__(v36, 2);
    v38 = v36 - 2;
    if (v37)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v45 & 0xC000000000000001) == 0)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v38 < *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v39 = *(v45 + 8 * v38 + 32);
LABEL_45:
          v40 = v39;

          dispatch thunk of AXLTCaption.actionType.setter();

          return;
        }

        __break(1u);
LABEL_59:
        __break(1u);
        return;
      }
    }

    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_45;
  }
}

Swift::Void __swiftcall AXLTCaptionsProvider.screenLockStateChanged(_:)(Swift::Bool a1)
{
  v3 = v1;
  v5 = static os_log_type_t.debug.getter();
  v6 = AXLogLiveTranscription();
  if (!v6)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v7 = v6;
  if (os_log_type_enabled(v6, v5))
  {
    v2 = swift_slowAlloc();
    *v2 = 67109120;
    *(v2 + 1) = a1;
    _os_log_impl(&_mh_execute_header, v7, v5, "screenLockStateChanged: %{BOOL}d", v2, 8u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (!a1)
  {
    static Published.subscript.getter();

    v18 = OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions;
    swift_beginAccess();
    sub_100031CE4(v50[0]);
    swift_endAccess();
    v19 = *&v3[v18];
    swift_getKeyPath();
    swift_getKeyPath();
    v50[0] = v19;

    v20 = v3;
    static Published.subscript.setter();
    v21 = *&v3[v18];
    *&v3[v18] = &_swiftEmptyArrayStorage;

    return;
  }

  static Published.subscript.getter();

  if (v50[0] >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 < 1)
  {
    goto LABEL_27;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v50[0] >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v50[0] & 0xC000000000000001) == 0)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v50[0] + 8 * v11 + 32);
        goto LABEL_15;
      }

      __break(1u);
LABEL_53:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_43;
    }
  }

  v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v13 = v12;

  v14 = AXLTCaption.appID.getter();
  v16 = v15;

  if (v14 == placeholderID.getter() && v16 == v17)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v50[0] >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23 == 1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v50[0] >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v10 = __OFSUB__(i, 1);
    v25 = i - 1;
    if (v10)
    {
      __break(1u);
      goto LABEL_61;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v26 = static Published.subscript.modify();

    v26(v50, 0);

LABEL_27:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v27 = v50[0] >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

    v28 = OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption;
    if (v27 < 1)
    {
      break;
    }

    v29 = *&v3[OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption];
    if (!v29)
    {
      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v29;
    static Published.subscript.getter();

    if (v50[0] >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v31 = *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v30;
    v34 = static Published.subscript.modify();
    v36 = v35;
    v37 = *v35;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v36 = v37;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
    {
      v37 = sub_10003245C(v37);
      *v36 = v37;
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_57;
    }

    if (v32 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 8 * v32 + 0x20);
      *((v37 & 0xFFFFFFFFFFFFFF8) + 8 * v32 + 0x20) = v33;

      v34(v50, 0);

      v28 = OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption;
      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  v40 = *&v3[v28];
  *&v3[v28] = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v41 = v50[0];
  v42 = OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions;
  swift_beginAccess();
  v43 = *&v3[v42];
  *&v3[v42] = v41;

  swift_getKeyPath();
  swift_getKeyPath();
  v44 = static Published.subscript.modify();
  v46 = *v45;
  *v45 = &_swiftEmptyArrayStorage;

  v44(v50, 0);

  v47 = *&v3[OBJC_IVAR___AXLTCaptionsProvider_currentCaption];
  if (!v47)
  {
    sub_10002D910(0, 0);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v47;
  v3 = static Published.subscript.modify();
  v49 = v48;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_53;
  }

LABEL_43:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (v3)(v50, 0);
}

uint64_t sub_100031CE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1000326E8(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000328E4(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100031E28@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AXLTCaptionsProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AXLTCaptionsProvider()
{
  result = qword_100063A40;
  if (!qword_100063A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100031EB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100031F80(v11, 0, 0, 1, a1, a2);
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
    sub_10000B3C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100018190(v11);
  return v7;
}

unint64_t sub_100031F80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10003208C(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_10003208C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000320D8(a1, a2);
  sub_100032208(&off_10005DC10);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000320D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000322F4(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000322F4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100032208(uint64_t result)
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

  result = sub_100032368(result, v12, 1, v3);
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

void *sub_1000322F4(uint64_t a1, uint64_t a2)
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

  sub_100003968(&qword_100063A88, &qword_1000491F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100032368(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003968(&qword_100063A88, &qword_1000491F0);
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

uint64_t sub_10003245C(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void sub_1000324C8()
{
  sub_1000325E4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100032648();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000325E4()
{
  if (!qword_100063A50)
  {
    sub_100003AC0(&qword_1000638B0, &qword_100048610);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100063A50);
    }
  }
}

void sub_100032648()
{
  if (!qword_100063A58)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100063A58);
    }
  }
}

uint64_t sub_1000326A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000326E8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

void (*sub_100032788(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100032808;
  }

  __break(1u);
  return result;
}

uint64_t sub_100032810()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100032848()
{
  result = qword_100063A98;
  if (!qword_100063A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063A98);
  }

  return result;
}

uint64_t sub_10003289C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000328E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100003E3C(&qword_100063AA0, &qword_1000638B0, &qword_100048610);
          for (i = 0; i != v6; ++i)
          {
            sub_100003968(&qword_1000638B0, &qword_100048610);
            v9 = sub_100032788(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AXLTCaption();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100032A88(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static os_log_type_t.debug.getter();
  v8 = AXLogLiveTranscription();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 16))(v6, a1, v2);
    if (os_log_type_enabled(v9, v7))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24[0] = v11;
      *v10 = 136315138;
      sub_1000326A0(&qword_100063A80, &type metadata accessor for Notification);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      (*(v3 + 8))(v6, v2);
      v15 = sub_100031EB4(v12, v14, v24);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v7, "CaptionsProvider AudioSession interruption: %s", v10, 0xCu);
      sub_100018190(v11);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v16 = Notification.userInfo.getter();
    if (v16)
    {
      v17 = v16;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v18;
      AnyHashable.init<A>(_:)();
      if (*(v17 + 16) && (v19 = sub_10003C2DC(v24), (v20 & 1) != 0))
      {
        sub_10000B3C8(*(v17 + 56) + 32 * v19, v25);
        sub_10000B374(v24);

        if (swift_dynamicCast())
        {
          if (v22)
          {
            if (v22 == 1)
            {
              if (qword_100062788 != -1)
              {
                swift_once();
              }

              sub_1000278D8(0);
            }
          }

          else
          {
            if (qword_100062788 != -1)
            {
              swift_once();
            }

            sub_1000278D8(1);
          }
        }
      }

      else
      {

        sub_10000B374(v24);
      }
    }
  }

  else
  {
    __break(1u);
  }
}