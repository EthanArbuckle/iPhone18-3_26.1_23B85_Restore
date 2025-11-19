uint64_t sub_191C3E51C()
{
  sub_191C40BD0(0, &qword_1EADCB9C8, sub_191C40C24);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4750;
  v158 = inited;
  *(inited + 32) = @"AHA.Normal";
  v1 = qword_1EADCA168;
  v2 = @"AHA.Normal";
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = *&qword_1EADE70A8;
  v4 = objc_opt_self();
  v5 = [v4 millimeterOfMercuryUnit];
  v6 = objc_opt_self();
  v7 = [v6 quantityWithUnit:v5 doubleValue:v3];

  v8 = [v4 millimeterOfMercuryUnit];
  v9 = [v6 quantityWithUnit:v8 doubleValue:120.0];

  v10 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v7 maximum:v9 isMinimumInclusive:1 isMaximumInclusive:0];
  v11 = *&qword_1EADE70A8;
  v12 = [v4 millimeterOfMercuryUnit];
  v13 = [v6 quantityWithUnit:v12 doubleValue:v11];

  v14 = [v4 millimeterOfMercuryUnit];
  v15 = [v6 quantityWithUnit:v14 doubleValue:80.0];

  v16 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v13 maximum:v15 isMinimumInclusive:1 isMaximumInclusive:0];
  v17 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:0 identifier:v2 systolicRange:v10 diastolicRange:v16 rangeRelationship:0];

  v158[5] = v17;
  v158[6] = @"AHA.Elevated";
  v157 = objc_opt_self();
  v18 = @"AHA.Elevated";
  v19 = [v4 millimeterOfMercuryUnit];
  v20 = [v6 quantityWithUnit:v19 doubleValue:120.0];

  v21 = [v4 millimeterOfMercuryUnit];
  v22 = [v6 quantityWithUnit:v21 doubleValue:129.0];

  v23 = [v157 inclusiveRangeWithMinimum:v20 maximum:v22];
  v24 = *&qword_1EADE70A8;
  v25 = [v4 millimeterOfMercuryUnit];
  v26 = [v6 &selRef_pints + 3];

  v27 = [v4 millimeterOfMercuryUnit];
  v28 = [v6 &selRef_pints + 3];

  v29 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v26 maximum:v28 isMinimumInclusive:1 isMaximumInclusive:0];
  v30 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:0 identifier:v18 systolicRange:v23 diastolicRange:v29 rangeRelationship:0];

  v158[7] = v30;
  v158[8] = @"AHA.HypertensionStage1";
  v31 = @"AHA.HypertensionStage1";
  v32 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v33 = [v6 &selRef_pints + 3];

  v34 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v35 = [v6 &selRef_pints + 3];

  v36 = [v157 inclusiveRangeWithMinimum:v33 maximum:v35];
  v37 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v38 = [v6 &selRef_pints + 3];

  v39 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v40 = [v6 &selRef_pints + 3];

  v41 = [v157 inclusiveRangeWithMinimum:v38 maximum:v40];
  v42 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:0 identifier:v31 systolicRange:v36 diastolicRange:v41 rangeRelationship:1];

  v158[9] = v42;
  v158[10] = @"AHA.HypertensionStage2";
  v43 = @"AHA.HypertensionStage2";
  v44 = [v4 millimeterOfMercuryUnit];
  v45 = [v6 quantityWithUnit:v44 doubleValue:140.0];

  v46 = [v4 millimeterOfMercuryUnit];
  v47 = [v6 quantityWithUnit:v46 doubleValue:1.79769313e308];

  v48 = [v157 inclusiveRangeWithMinimum:v45 maximum:v47];
  v49 = [v4 millimeterOfMercuryUnit];
  v50 = [v6 &selRef_pints + 3];

  v51 = [v4 millimeterOfMercuryUnit];
  v52 = [v6 &selRef_pints + 3];

  v53 = [v157 inclusiveRangeWithMinimum:v50 maximum:v52];
  v54 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:0 identifier:v43 systolicRange:v48 diastolicRange:v53 rangeRelationship:1];

  v158[11] = v54;
  v158[12] = @"AHA.HypertensiveCrisis";
  v55 = @"AHA.HypertensiveCrisis";
  v56 = [v4 millimeterOfMercuryUnit];
  v57 = [v6 quantityWithUnit:v56 doubleValue:180.0];

  v58 = [v4 millimeterOfMercuryUnit];
  v59 = [v6 quantityWithUnit:v58 doubleValue:1.79769313e308];

  v60 = [v157 inclusiveRangeWithMinimum:v57 maximum:v59];
  v61 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v62 = [v6 quantityWithUnit:v61 doubleValue:120.0];

  v63 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v64 = [v6 quantityWithUnit:v63 doubleValue:1.79769313e308];

  v65 = [v157 inclusiveRangeWithMinimum:v62 maximum:v64];
  v66 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:0 identifier:v55 systolicRange:v60 diastolicRange:v65 rangeRelationship:1];

  v158[13] = v66;
  v158[14] = @"ESC.NonElevated";
  v67 = *&qword_1EADE70A8;
  v68 = @"ESC.NonElevated";
  v69 = [v4 millimeterOfMercuryUnit];
  v70 = [v6 quantityWithUnit:v69 doubleValue:v67];

  v71 = [v4 millimeterOfMercuryUnit];
  v72 = [v6 quantityWithUnit:v71 doubleValue:120.0];

  v73 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v70 maximum:v72 isMinimumInclusive:1 isMaximumInclusive:0];
  v74 = *&qword_1EADE70A8;
  v75 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v76 = [v6 quantityWithUnit:v75 doubleValue:v74];

  v77 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v78 = [v6 quantityWithUnit:v77 doubleValue:70.0];

  v79 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v76 maximum:v78 isMinimumInclusive:1 isMaximumInclusive:0];
  v80 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:1 identifier:v68 systolicRange:v73 diastolicRange:v79 rangeRelationship:0];

  v158[15] = v80;
  v158[16] = @"ESC.Elevated";
  v81 = @"ESC.Elevated";
  v82 = [v4 millimeterOfMercuryUnit];
  v83 = [v6 quantityWithUnit:v82 doubleValue:120.0];

  v84 = [v4 millimeterOfMercuryUnit];
  v85 = [v6 quantityWithUnit:v84 doubleValue:139.0];

  v86 = [v157 inclusiveRangeWithMinimum:v83 maximum:v85];
  v87 = [v4 millimeterOfMercuryUnit];
  v88 = [v6 &selRef_pints + 3];

  v89 = [v4 millimeterOfMercuryUnit];
  v90 = [v6 &selRef_pints + 3];

  v91 = [v157 inclusiveRangeWithMinimum:v88 maximum:v90];
  v92 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:1 identifier:v81 systolicRange:v86 diastolicRange:v91 rangeRelationship:1];

  v158[17] = v92;
  v158[18] = @"ESC.Hypertension";
  v93 = @"ESC.Hypertension";
  v94 = [v4 millimeterOfMercuryUnit];
  v95 = [v6 quantityWithUnit:v94 doubleValue:140.0];

  v96 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v97 = [v6 quantityWithUnit:v96 doubleValue:179.0];

  v98 = [v157 inclusiveRangeWithMinimum:v95 maximum:v97];
  v99 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v100 = [v6 &selRef_pints + 3];

  v101 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v102 = [v6 &selRef_pints + 3];

  v103 = [v157 inclusiveRangeWithMinimum:v100 maximum:v102];
  v104 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:1 identifier:v93 systolicRange:v98 diastolicRange:v103 rangeRelationship:1];

  v158[19] = v104;
  v158[20] = @"ESC.HypertensiveEmergency";
  v155 = @"ESC.HypertensiveEmergency";
  v105 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v106 = [v6 quantityWithUnit:v105 doubleValue:180.0];

  v107 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v108 = [v6 quantityWithUnit:v107 doubleValue:1.79769313e308];

  v109 = [v157 inclusiveRangeWithMinimum:v106 maximum:v108];
  v110 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v111 = [v6 quantityWithUnit:v110 doubleValue:110.0];

  v112 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v113 = [v6 quantityWithUnit:v112 doubleValue:1.79769313e308];

  v114 = [v157 inclusiveRangeWithMinimum:v111 maximum:v113];
  v115 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:1 identifier:v155 systolicRange:v109 diastolicRange:v114 rangeRelationship:1];

  v158[21] = v115;
  v158[22] = @"FIGO.Normal";
  v116 = *&qword_1EADE70A8;
  v117 = @"FIGO.Normal";
  v118 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v119 = [v6 quantityWithUnit:v118 doubleValue:v116];

  v120 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v121 = [v6 quantityWithUnit:v120 doubleValue:140.0];

  v122 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v119 maximum:v121 isMinimumInclusive:1 isMaximumInclusive:0];
  v123 = *&qword_1EADE70A8;
  v124 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v125 = [v6 &selRef_pints + 3];

  v126 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v127 = [v6 &selRef_pints + 3];

  v128 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v125 maximum:v127 isMinimumInclusive:1 isMaximumInclusive:0];
  v129 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:2 identifier:v117 systolicRange:v122 diastolicRange:v128 rangeRelationship:0];

  v158[23] = v129;
  v158[24] = @"FIGO.MildlyElevated";
  v156 = @"FIGO.MildlyElevated";
  v130 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v131 = [v6 quantityWithUnit:v130 doubleValue:140.0];

  v132 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v133 = [v6 quantityWithUnit:v132 doubleValue:1.79769313e308];

  v134 = [v157 inclusiveRangeWithMinimum:v131 maximum:v133];
  v135 = [v4 millimeterOfMercuryUnit];
  v136 = [v6 &selRef_pints + 3];

  v137 = [v4 millimeterOfMercuryUnit];
  v138 = [v6 &selRef_pints + 3];

  v139 = [v157 inclusiveRangeWithMinimum:v136 maximum:v138];
  v140 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:2 identifier:v156 systolicRange:v134 diastolicRange:v139 rangeRelationship:1];

  v158[25] = v140;
  v158[26] = @"FIGO.SeverelyElevated";
  v141 = @"FIGO.SeverelyElevated";
  v142 = [v4 millimeterOfMercuryUnit];
  v143 = [v6 quantityWithUnit:v142 doubleValue:160.0];

  v144 = [v4 millimeterOfMercuryUnit];
  v145 = [v6 quantityWithUnit:v144 doubleValue:1.79769313e308];

  v146 = [v157 inclusiveRangeWithMinimum:v143 maximum:v145];
  v147 = [v4 millimeterOfMercuryUnit];
  v148 = [v6 quantityWithUnit:v147 doubleValue:110.0];

  v149 = [v4 millimeterOfMercuryUnit];
  v150 = [v6 quantityWithUnit:v149 doubleValue:1.79769313e308];

  v151 = [v157 inclusiveRangeWithMinimum:v148 maximum:v150];
  v152 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:2 identifier:v141 systolicRange:v146 diastolicRange:v151 rangeRelationship:1];

  v158[27] = v152;
  v153 = sub_191C90EDC(v158);
  swift_setDeallocating();
  sub_191C40C24();
  result = swift_arrayDestroy();
  off_1EADCB9B8 = v153;
  return result;
}

uint64_t sub_191C3FD78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v17[0] = 0;
  v6 = [swift_getObjCClassFromMetadata() categoryDataForCategory:v5 error:v17];
  if (!v6)
  {
    v14 = v17[0];
    sub_191CC5FC8();

    swift_willThrow();
    goto LABEL_7;
  }

  v7 = v6;
  v8 = *&v6[OBJC_IVAR___HKBloodPressureClassificationCategoryData_systolicRange];
  v9 = v17[0];
  v10 = [v8 containsQuantity_];
  v11 = [*&v7[OBJC_IVAR___HKBloodPressureClassificationCategoryData_diastolicRange] containsQuantity_];
  v12 = [v7 rangeRelationship];
  if (v12 == 1)
  {

    v13 = v10 | v11;
LABEL_7:
    v15 = *MEMORY[0x1E69E9840];
    return v13 & 1;
  }

  if (!v12)
  {

    v13 = v10 & v11;
    goto LABEL_7;
  }

  result = sub_191CC7118();
  __break(1u);
  return result;
}

uint64_t static HKBloodPressureClassificationEvaluator.categories(for:)(uint64_t a1)
{
  v1 = HKBloodPressureClassificationCategoryForGuidelines(a1);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HKBloodPressureClassificationCategory(0);
    v3 = sub_191CC68E8();

    return v3;
  }

  else
  {
    sub_191C86F64();
    return swift_willThrow();
  }
}

id static HKBloodPressureClassificationEvaluator.categoryData(for:)(uint64_t a1)
{
  if (qword_1EADCA150 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = off_1EADCB9B8;
  if (*(off_1EADCB9B8 + 2))
  {
    v2 = sub_191C402C0(a1);
    if (v3)
    {
      return *(v1[7] + 8 * v2);
    }
  }

  sub_191C40A18();
  return swift_willThrow();
}

HKBloodPressureClassificationEvaluator __swiftcall HKBloodPressureClassificationEvaluator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_191C40248(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_191CC74C8();
  sub_191CC67E8();
  v6 = sub_191CC7508();

  return sub_191C40404(a1, a2, v6);
}

unint64_t sub_191C402C0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_191CC67B8();
  sub_191CC74C8();
  sub_191CC67E8();
  v4 = sub_191CC7508();

  return sub_191C404BC(a1, v4);
}

unint64_t sub_191C40354(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_191CC74C8();
  v4 = a1[1];
  v5 = a1[2];
  MEMORY[0x193B02C70](*a1);
  sub_191CC74E8();
  if (v5)
  {
    sub_191CC67E8();
  }

  v6 = a1[3];
  v7 = a1[4];
  sub_191CC67E8();
  v8 = sub_191CC7508();

  return sub_191C405C0(a1, v8);
}

unint64_t sub_191C40404(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_191CC73E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_191C404BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_191CC67B8();
      v9 = v8;
      if (v7 == sub_191CC67B8() && v9 == v10)
      {
        break;
      }

      v12 = sub_191CC73E8();

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

unint64_t sub_191C405C0(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v9 = a1[2];
    v8 = a1[3];
    v19 = v8;
    v20 = a1[1];
    v10 = a1[4];
    v11 = *(v2 + 48);
    do
    {
      v12 = (v11 + 40 * v5);
      if (*v12 != v7)
      {
        goto LABEL_4;
      }

      v13 = v12[2];
      v14 = v12[3];
      v15 = v12[4];
      if (v13)
      {
        if (!v9)
        {
          goto LABEL_4;
        }

        v16 = v12[1] == v20 && v13 == v9;
        if (!v16 && (sub_191CC73E8() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v9)
      {
        goto LABEL_4;
      }

      v17 = v14 == v19 && v15 == v10;
      if (v17 || (sub_191CC73E8() & 1) != 0)
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_191C406EC()
{
  type metadata accessor for HKError(0);
  sub_191C40BD0(0, &unk_1EADCD110, sub_191C3D154);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4540;
  v1 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_191CC67B8();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000032;
  *(inited + 56) = 0x8000000191D2CA40;
  sub_191C909D0(inited);
  swift_setDeallocating();
  sub_191C40B74(inited + 32);
  sub_191BFC39C();
  sub_191CC5FA8();
  v3 = sub_191CC5FB8();

  return v3;
}

uint64_t sub_191C407F8()
{
  type metadata accessor for HKError(0);
  sub_191C40BD0(0, &unk_1EADCD110, sub_191C3D154);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4540;
  v1 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_191CC67B8();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000034;
  *(inited + 56) = 0x8000000191D2CAE0;
  sub_191C909D0(inited);
  swift_setDeallocating();
  sub_191C40B74(inited + 32);
  sub_191BFC39C();
  sub_191CC5FA8();
  v3 = sub_191CC5FB8();

  return v3;
}

uint64_t sub_191C40908()
{
  type metadata accessor for HKError(0);
  sub_191C40BD0(0, &unk_1EADCD110, sub_191C3D154);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4540;
  v1 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_191CC67B8();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000033;
  *(inited + 56) = 0x8000000191D2CB20;
  sub_191C909D0(inited);
  swift_setDeallocating();
  sub_191C40B74(inited + 32);
  sub_191BFC39C();
  sub_191CC5FA8();
  v3 = sub_191CC5FB8();

  return v3;
}

uint64_t sub_191C40A18()
{
  type metadata accessor for HKError(0);
  sub_191C40BD0(0, &unk_1EADCD110, sub_191C3D154);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4540;
  v1 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_191CC67B8();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000032;
  *(inited + 56) = 0x8000000191D2CA00;
  sub_191C909D0(inited);
  swift_setDeallocating();
  sub_191C40B74(inited + 32);
  sub_191BFC39C();
  sub_191CC5FA8();
  v3 = sub_191CC5FB8();

  return v3;
}

unint64_t type metadata accessor for HKBloodPressureClassificationEvaluator()
{
  result = qword_1EADCB9C0;
  if (!qword_1EADCB9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCB9C0);
  }

  return result;
}

uint64_t sub_191C40B74(uint64_t a1)
{
  sub_191C3D154();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_191C40BD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_191CC73A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_191C40C24()
{
  if (!qword_1EADCB9D0)
  {
    type metadata accessor for HKBloodPressureClassificationCategory(255);
    type metadata accessor for HKBloodPressureClassificationCategoryData();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCB9D0);
    }
  }
}

id HKWorkoutEffortRelationshipQueryDescriptor.predicate.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *HKWorkoutEffortRelationshipQueryDescriptor.anchor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t HKWorkoutEffortRelationshipQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 24);
  *(a1 + 8) = *(v1 + 32);
}

__n128 HKWorkoutEffortRelationshipQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *(v1 + 32);

  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  return result;
}

uint64_t HKWorkoutEffortRelationshipQueryDescriptor.init(predicate:anchor:option:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[4] = 0;
  a4[5] = -1;
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = 0;
  return result;
}

uint64_t HKWorkoutEffortRelationshipQueryDescriptor.result(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;
  v4 = v2[1];
  *(v3 + 160) = *v2;
  *(v3 + 176) = v4;
  *(v3 + 192) = v2[2];
  return MEMORY[0x1EEE6DFA0](sub_191C40E7C, 0, 0);
}

uint64_t sub_191C40E7C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[24];
  v8 = v1[21];
  v7 = v1[22];
  v10 = v1[19];
  v9 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C4108C;
  v11 = swift_continuation_init();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = objc_allocWithZone(HKWorkoutEffortRelationshipQuery);
  v1[14] = sub_191C412FC;
  v1[15] = v12;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C41D8C;
  v1[13] = &block_descriptor_14;
  v14 = _Block_copy(v4);
  v15 = v10;
  v16 = [v13 initWithPredicate:v9 anchor:v8 options:v7 resultsHandler:v14];
  _Block_release(v14);
  v17 = v1[15];

  if (v6)
  {
    v18 = v1[23];

    v19 = sub_191CC6778();
  }

  else
  {
    v19 = 0;
  }

  v20 = v1[25];
  v21 = v1[19];
  [v16 setDebugIdentifier_];

  [v16 setQualityOfService_];

  [v21 executeQuery_];

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C4108C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  else
  {
    **(*v0 + 144) = *(*v0 + 128);
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_191C411A0(uint64_t a1, uint64_t a2, void *a3, void *a4, id a5, uint64_t a6)
{
  [a5 stopQuery_];
  if (a2 && a3)
  {
    v10 = *(*(a6 + 64) + 40);
    *v10 = a2;
    v10[1] = a3;

    v11 = a3;

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a4)
    {
      v13 = a4;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C41F64(&qword_1EADCD100, type metadata accessor for HKError);
      sub_191CC5FA8();
      v13 = v16;
    }

    sub_191BF92E0();
    swift_allocError();
    *v14 = v13;
    v15 = a4;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_191C41304(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_191BFF960;

  return HKWorkoutEffortRelationshipQueryDescriptor.result(for:)(a1, a2);
}

uint64_t HKWorkoutEffortRelationshipQueryDescriptor.Results.Iterator.next()(uint64_t a1)
{
  v3 = *(MEMORY[0x1E69E87B0] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  sub_191C42394(0, &qword_1EADCB9D8, MEMORY[0x1E69E87B8]);
  *v4 = v1;
  v4[1] = sub_191BFD978;

  return MEMORY[0x1EEE6DB98](a1, v5);
}

uint64_t sub_191C41478(uint64_t a1)
{
  v3 = *(MEMORY[0x1E69E87B0] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  sub_191C42394(0, &qword_1EADCB9D8, MEMORY[0x1E69E87B8]);
  *v4 = v1;
  v4[1] = sub_191BFF960;

  return MEMORY[0x1EEE6DB98](a1, v5);
}

uint64_t HKWorkoutEffortRelationshipQueryDescriptor.Results.makeAsyncIterator()()
{
  sub_191C42394(0, &qword_1EADCB9E0, MEMORY[0x1E69E87C8]);

  return sub_191CC6AB8();
}

uint64_t sub_191C4159C()
{
  sub_191C42394(0, &qword_1EADCB9E0, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();

  return sub_191C42284(v0);
}

uint64_t HKWorkoutEffortRelationshipQueryDescriptor.results(for:)(uint64_t a1)
{
  sub_191C42394(0, &qword_1EADCB9E8, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v14[-v8];
  v10 = v1[1];
  v19[0] = *v1;
  v19[1] = v10;
  v19[2] = v1[2];
  v11 = swift_allocObject();
  v12 = v1[1];
  v11[1] = *v1;
  v11[2] = v12;
  v11[3] = v1[2];
  v15 = sub_191C41E68;
  v16 = v11;
  v17 = a1;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8790], v4);
  sub_191C41E7C(v19, v18);
  sub_191CC6AF8();
}

id sub_191C41788(uint64_t a1, uint64_t *a2)
{
  sub_191C42394(0, &qword_1EADCA7D8, MEMORY[0x1E69E87A0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = &v25[-v9 - 8];
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  (*(v6 + 16))(&v25[-v9 - 8], a1, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v6 + 32))(v15 + v14, v10, v5);
  v16 = objc_allocWithZone(HKWorkoutEffortRelationshipQuery);
  v29 = sub_191C422E0;
  v30 = v15;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v27 = sub_191C41D8C;
  v28 = &block_descriptor_43;
  v17 = _Block_copy(&aBlock);
  v18 = [v16 initWithPredicate:v11 anchor:v12 options:v13 resultsHandler:v17];
  _Block_release(v17);

  aBlock = *(a2 + 3);
  v27 = a2[5];
  v19 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    v20 = v18;
    sub_191BFC340(&aBlock, v25);
    v19 = sub_191CC6778();
  }

  else
  {
    v21 = v18;
  }

  v22 = v27;
  [v18 setDebugIdentifier_];

  [v18 setQualityOfService_];
  sub_191BFC2EC(&aBlock);
  return v18;
}

uint64_t sub_191C419FC(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_191C42394(0, &qword_1EADCBA28, MEMORY[0x1E69E8780]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7, v11);
  v13 = &v18 - v12;
  if (a2 && a3)
  {
    v19 = a2;
    v20 = a3;
    sub_191C42394(0, &qword_1EADCA7D8, MEMORY[0x1E69E87A0]);

    v14 = a3;
    sub_191CC6A88();
    return (*(v9 + 8))(v13, v8);
  }

  else
  {
    v16 = a4;
    if (!a4)
    {
      type metadata accessor for HKError(0);
      v21 = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C41F64(&qword_1EADCD100, type metadata accessor for HKError);
      sub_191CC5FA8();
      v16 = v19;
    }

    v19 = v16;
    v17 = a4;
    sub_191C42394(0, &qword_1EADCA7D8, MEMORY[0x1E69E87A0]);
    return sub_191CC6A98();
  }
}

uint64_t sub_191C41C00(uint64_t a1)
{
  sub_191C42394(0, &qword_1EADCB9E8, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v14[-v8];
  v10 = v1[1];
  v19[0] = *v1;
  v19[1] = v10;
  v19[2] = v1[2];
  v11 = swift_allocObject();
  v12 = v1[1];
  v11[1] = *v1;
  v11[2] = v12;
  v11[3] = v1[2];
  v15 = sub_191C42454;
  v16 = v11;
  v17 = a1;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8790], v4);
  sub_191C41E7C(v19, v18);
  sub_191CC6AF8();
}

uint64_t sub_191C41D8C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a3)
  {
    sub_191C42404();
    v7 = sub_191CC68E8();
  }

  v11 = a2;
  v12 = a4;
  v13 = a5;
  v10(v11, v7, a4, a5);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191C41F64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_191C41FCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_191C42028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_191C420BC()
{
  if (!qword_1EADCBA00)
  {
    v0 = type metadata accessor for HKQueryAsyncStream();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCBA00);
    }
  }
}

void sub_191C42120()
{
  sub_191C420BC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_191C421B4()
{
  sub_191C42394(319, &qword_1EADCB9D8, MEMORY[0x1E69E87B8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_191C42284(uint64_t a1)
{
  v2 = type metadata accessor for HKWorkoutEffortRelationshipQueryDescriptor.Results(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_191C422E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_191C42394(0, &qword_1EADCA7D8, MEMORY[0x1E69E87A0]);
  v9 = *(*(v8 - 8) + 80);

  return sub_191C419FC(a1, a2, a3, a4);
}

void sub_191C42394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_191BF92E0();
    v7 = a3(a1, &type metadata for HKWorkoutEffortRelationshipQueryDescriptor.Result, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_191C42404()
{
  result = qword_1EADCBA30;
  if (!qword_1EADCBA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCBA30);
  }

  return result;
}

uint64_t sub_191C42460(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_191C07DFC(0, v2, 0);
    v4 = v37;
    v5 = a1 + 64;
    v6 = -1 << *(a1 + 32);
    result = sub_191CC6E68();
    v7 = result;
    v8 = 0;
    v30 = v2;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      v31 = v8;
      v32 = *(a1 + 36);
      v11 = (*(a1 + 48) + 40 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[4];
      v34 = v11[3];
      v36 = v15;

      v33 = v15;
      swift_bridgeObjectRetain_n();
      MEMORY[0x193B01F90](91, 0xE100000000000000);
      v35 = v13;
      if (v14)
      {
        v16 = v13;
      }

      else
      {
        v16 = 1852399981;
      }

      if (v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0xE400000000000000;
      }

      MEMORY[0x193B01F90](v16, v17);

      MEMORY[0x193B01F90](40, 0xE100000000000000);
      v18 = sub_191CC7398();
      MEMORY[0x193B01F90](v18);

      result = MEMORY[0x193B01F90](23849, 0xE200000000000000);
      v19 = v4;
      v38 = v4;
      v20 = *(v4 + 16);
      v21 = *(v19 + 24);
      if (v20 >= v21 >> 1)
      {
        result = sub_191C07DFC((v21 > 1), v20 + 1, 1);
        v19 = v38;
      }

      *(v19 + 16) = v20 + 1;
      v22 = (v19 + 56 * v20);
      v22[4] = v12;
      v22[5] = v35;
      v22[6] = v14;
      v22[7] = v34;
      v22[8] = v33;
      v22[9] = v34;
      v22[10] = v36;
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_29;
      }

      v5 = a1 + 64;
      v23 = *(a1 + 64 + 8 * v10);
      if ((v23 & (1 << v7)) == 0)
      {
        goto LABEL_30;
      }

      v4 = v19;
      if (v32 != *(a1 + 36))
      {
        goto LABEL_31;
      }

      v24 = v23 & (-2 << (v7 & 0x3F));
      if (v24)
      {
        v9 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (a1 + 72 + 8 * v10);
        while (v26 < (v9 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_19198D53C(v7, v32, 0);
            v9 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_19198D53C(v7, v32, 0);
      }

LABEL_4:
      v8 = v31 + 1;
      v7 = v9;
      if (v31 + 1 == v30)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_191C4276C(uint64_t a1)
{
  v3 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v37 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v33[1] = v1;
    v46 = MEMORY[0x1E69E7CC0];
    sub_191C07DDC(0, v7, 0);
    v43 = v46;
    v9 = a1 + 56;
    v10 = -1 << *(a1 + 32);
    result = sub_191CC6E68();
    v11 = result;
    v12 = 0;
    v34 = a1 + 64;
    v35 = v7;
    v36 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v40 = v12;
      v41 = *(a1 + 36);
      v42 = 1 << v11;
      v15 = v37;
      sub_191C622F4(*(a1 + 48) + *(v38 + 72) * v11, v37, type metadata accessor for HKCloudSync.Show.SyncIdentity);
      sub_191CC61A8();
      sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8]);
      v44 = sub_191CC7398();
      v45 = v16;
      MEMORY[0x193B01F90](58, 0xE100000000000000);
      v17 = v39;
      v18 = v15 + *(v39 + 20);
      v19 = sub_191CC7398();
      MEMORY[0x193B01F90](v19);

      MEMORY[0x193B01F90](58, 0xE100000000000000);
      MEMORY[0x193B01F90](*(v15 + *(v17 + 24)), *(v15 + *(v17 + 24) + 8));
      v20 = v44;
      v21 = v45;
      result = sub_191C48D60(v15, type metadata accessor for HKCloudSync.Show.SyncIdentity);
      v22 = v43;
      v46 = v43;
      v24 = *(v43 + 16);
      v23 = *(v43 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_191C07DDC((v23 > 1), v24 + 1, 1);
        v22 = v46;
      }

      *(v22 + 16) = v24 + 1;
      v25 = v22 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v21;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v9 = v36;
      v26 = *(v36 + 8 * v14);
      if ((v26 & v42) == 0)
      {
        goto LABEL_24;
      }

      v43 = v22;
      if (v41 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v11 & 0x3F));
      if (v27)
      {
        v13 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v14 << 6;
        v29 = v14 + 1;
        v30 = (v34 + 8 * v14);
        while (v29 < (v13 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_19198D53C(v11, v41, 0);
            v13 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_19198D53C(v11, v41, 0);
      }

LABEL_4:
      v12 = v40 + 1;
      v11 = v13;
      if (v40 + 1 == v35)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_191C42B04(uint64_t a1)
{
  v39 = sub_191CC61A8();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v39, v5);
  v38 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v31 = v1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_191C07DDC(0, v7, 0);
    v42 = v43;
    v9 = a1 + 56;
    v10 = -1 << *(a1 + 32);
    result = sub_191CC6E68();
    v11 = result;
    v12 = 0;
    v36 = v3 + 8;
    v37 = v3 + 16;
    v32 = a1 + 64;
    v33 = v7;
    v34 = v3;
    v35 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v40 = *(a1 + 36);
      v15 = v38;
      v16 = v39;
      v17 = (*(v3 + 16))(v38, *(a1 + 48) + *(v3 + 72) * v11, v39);
      v41 = MEMORY[0x193B018F0](v17);
      v19 = v18;
      result = (*(v3 + 8))(v15, v16);
      v20 = v42;
      v43 = v42;
      v22 = *(v42 + 16);
      v21 = *(v42 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_191C07DDC((v21 > 1), v22 + 1, 1);
        v20 = v43;
      }

      *(v20 + 16) = v22 + 1;
      v23 = v20 + 16 * v22;
      *(v23 + 32) = v41;
      *(v23 + 40) = v19;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v9 = v35;
      v24 = *(v35 + 8 * v14);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v20;
      if (v40 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v13 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v3 = v34;
      }

      else
      {
        v26 = v14 << 6;
        v27 = v14 + 1;
        v28 = (v32 + 8 * v14);
        v3 = v34;
        while (v27 < (v13 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_19198D53C(v11, v40, 0);
            v13 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_19198D53C(v11, v40, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v33)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t HKCloudSync.Show.accountInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_191C42E60(v2, v3);
}

uint64_t sub_191C42E60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 HKCloudSync.Show.accountInfo.setter(__int128 *a1)
{
  v11 = a1[2];
  v3 = *(a1 + 6);
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  sub_191C42F18(v1[1], v1[2]);
  v9 = *a1;
  *(v1 + 3) = a1[1];
  *(v1 + 1) = v9;
  result = v11;
  *(v1 + 5) = v11;
  v1[7] = v3;
  return result;
}

uint64_t sub_191C42F18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t HKCloudSync.Show.repositories.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

__n128 HKCloudSync.Show.init(accountInfo:repositories:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a1[2];
  v6 = *(a1 + 6);
  *a3 = 1;
  sub_191C42F18(0, 0);
  v7 = *a1;
  *(a3 + 24) = a1[1];
  *(a3 + 8) = v7;
  result = v9;
  *(a3 + 40) = v9;
  *(a3 + 56) = v6;
  *(a3 + 64) = a2;
  return result;
}

uint64_t HKCloudSync.Show.AccountInfo.partition.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HKCloudSync.Show.AccountInfo.partition.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.AccountInfo.accountStatus.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t HKCloudSync.Show.AccountInfo.accountStatus.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t HKCloudSync.Show.AccountInfo.encryptionStatus.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t HKCloudSync.Show.AccountInfo.encryptionStatus.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t HKCloudSync.Show.AccountInfo.init(partition:hasValidCredentials:accountStatus:encryptionStatus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

unint64_t sub_191C4323C()
{
  v1 = 0x6F69746974726170;
  v2 = 0x53746E756F636361;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_191C432CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C66494(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C432F4(uint64_t a1)
{
  v2 = sub_191C43568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C43330(uint64_t a1)
{
  v2 = sub_191C43568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.AccountInfo.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBA38, sub_191C43568, &_s4ShowV11AccountInfoV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = v17 - v8;
  v10 = *v1;
  v11 = v1[1];
  v18 = *(v1 + 16);
  v12 = v1[3];
  v17[3] = v1[4];
  v17[4] = v12;
  v13 = v1[5];
  v17[1] = v1[6];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C43568();
  sub_191CC7548();
  v22 = 0;
  v15 = v17[5];
  sub_191CC7308();
  if (!v15)
  {
    v21 = 1;
    sub_191CC7318();
    v20 = 2;
    sub_191CC7308();
    v19 = 3;
    sub_191CC7308();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_191C43568()
{
  result = qword_1EADCBA40;
  if (!qword_1EADCBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA40);
  }

  return result;
}

uint64_t HKCloudSync.Show.AccountInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_191C62544(0, &qword_1EADCBA48, sub_191C43568, &_s4ShowV11AccountInfoV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C43568();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v6;
  v13 = v29;
  v34 = 0;
  v14 = sub_191CC7228();
  v16 = v15;
  v17 = v14;
  v33 = 1;
  v30 = sub_191CC7238() & 1;
  v32 = 2;
  v27 = sub_191CC7228();
  v28 = v19;
  v31 = 3;
  v20 = sub_191CC7228();
  v22 = v21;
  v23 = *(v12 + 8);
  v26 = v20;
  v23(v10, v5);
  v24 = v30;
  *v13 = v17;
  *(v13 + 8) = v16;
  *(v13 + 16) = v24;
  v25 = v28;
  *(v13 + 24) = v27;
  *(v13 + 32) = v25;
  *(v13 + 40) = v26;
  *(v13 + 48) = v22;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HKCloudSync.Show.Repository.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HKCloudSync.Show.Repository.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.Repository.primaryContainer.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_191C43990(v2, v3);
}

uint64_t sub_191C43990(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 HKCloudSync.Show.Repository.primaryContainer.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  sub_191C43A28(v1[2], v1[3]);
  result = *a1;
  v8 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v8;
  v1[6] = v3;
  return result;
}

uint64_t sub_191C43A28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t HKCloudSync.Show.Repository.secondaryContainers.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

__n128 HKCloudSync.Show.Repository.init(identifier:primaryContainer:secondaryContainers:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 32);
  *a5 = a1;
  *(a5 + 8) = a2;
  sub_191C43A28(0, 0);
  result = *a3;
  v10 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v10;
  *(a5 + 48) = v8;
  *(a5 + 56) = a4;
  return result;
}

uint64_t sub_191C43B48()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_191C43BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C66618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C43BD4(uint64_t a1)
{
  v2 = sub_191C43EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C43C10(uint64_t a1)
{
  v2 = sub_191C43EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.Repository.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBA50, sub_191C43EB8, &_s4ShowV10RepositoryV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v19 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v23 = v1[3];
  v24 = v12;
  v13 = v1[4];
  v21 = v1[5];
  v22 = v13;
  v14 = v1[6];
  v19 = v1[7];
  v20 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C43EB8();
  sub_191CC7548();
  LOBYTE(v26) = 0;
  v16 = v25;
  sub_191CC7308();
  if (!v16)
  {
    v17 = v19;
    v26 = v24;
    v27 = v23;
    v28 = v22;
    v29 = v21;
    v30 = v20;
    v31 = 1;
    sub_191C43990(v24, v23);
    sub_191C43F0C();
    sub_191CC72F8();
    sub_191C43A28(v26, v27);
    v26 = v17;
    v31 = 2;
    sub_191C62404(0, &qword_1EADCBA68, &type metadata for HKCloudSync.Show.Container, MEMORY[0x1E69E62F8]);
    sub_191C43F60();
    sub_191CC7348();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_191C43EB8()
{
  result = qword_1EADCBA58;
  if (!qword_1EADCBA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA58);
  }

  return result;
}

unint64_t sub_191C43F0C()
{
  result = qword_1EADCBA60;
  if (!qword_1EADCBA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA60);
  }

  return result;
}

unint64_t sub_191C43F60()
{
  result = qword_1EADCBA70;
  if (!qword_1EADCBA70)
  {
    sub_191C62404(255, &qword_1EADCBA68, &type metadata for HKCloudSync.Show.Container, MEMORY[0x1E69E62F8]);
    sub_191C43F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA70);
  }

  return result;
}

uint64_t HKCloudSync.Show.Repository.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v32 = a2;
  sub_191C62544(0, &qword_1EADCBA78, sub_191C43EB8, &_s4ShowV10RepositoryV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C43EB8();
  sub_191CC7528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_191C43A28(0, 0);
  }

  else
  {
    v12 = v6;
    v13 = v32;
    LOBYTE(v36) = 0;
    v14 = v5;
    v15 = sub_191CC7228();
    v17 = v16;
    v28 = v15;
    LOBYTE(v33[0]) = 1;
    sub_191C443AC();
    sub_191CC7218();
    v30 = v36;
    v18 = v37;
    v29 = v18 >> 64;
    v31 = v18;
    v19 = v38;
    sub_191C43A28(0, 0);
    sub_191C62404(0, &qword_1EADCBA68, &type metadata for HKCloudSync.Show.Container, MEMORY[0x1E69E62F8]);
    v42 = 2;
    sub_191C44400();
    sub_191CC7268();
    (*(v12 + 8))(v10, v14);
    v27 = v43;
    *&v33[0] = v28;
    *(&v33[0] + 1) = v17;
    v20 = v30;
    v33[1] = v30;
    v21 = v31;
    v22 = v29;
    *&v34 = v31;
    *(&v34 + 1) = v29;
    v26 = v19;
    *&v35 = v19;
    *(&v35 + 1) = v43;
    v23 = v30;
    *v13 = v33[0];
    v13[1] = v23;
    v24 = v35;
    v13[2] = v34;
    v13[3] = v24;
    sub_191C4449C(v33, &v36);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *&v36 = v28;
    *(&v36 + 1) = v17;
    v37 = v20;
    v38 = v21;
    v39 = v22;
    v40 = v26;
    v41 = v27;
    return sub_191C444D4(&v36);
  }
}

unint64_t sub_191C443AC()
{
  result = qword_1EADCBA80;
  if (!qword_1EADCBA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA80);
  }

  return result;
}

unint64_t sub_191C44400()
{
  result = qword_1EADCBA88;
  if (!qword_1EADCBA88)
  {
    sub_191C62404(255, &qword_1EADCBA68, &type metadata for HKCloudSync.Show.Container, MEMORY[0x1E69E62F8]);
    sub_191C443AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA88);
  }

  return result;
}

uint64_t HKCloudSync.Show.Container.containerIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HKCloudSync.Show.Container.containerIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.Container.deviceIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t HKCloudSync.Show.Container.deviceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t HKCloudSync.Show.Container.databases.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t HKCloudSync.Show.Container.init(containerIdentifier:deviceIdentifier:databases:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_191C446A8()
{
  v1 = 0x6573616261746164;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_191C44714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C66744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C4473C(uint64_t a1)
{
  v2 = sub_191C449CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C44778(uint64_t a1)
{
  v2 = sub_191C449CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.Container.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBA90, sub_191C449CC, &_s4ShowV9ContainerV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v17 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v19 = v1[3];
  v20 = v12;
  v18 = v1[4];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C449CC();
  sub_191CC7548();
  v25 = 0;
  v14 = v21;
  sub_191CC7308();
  if (!v14)
  {
    v15 = v18;
    v24 = 1;
    sub_191CC7308();
    v22 = v15;
    v23 = 2;
    sub_191C62404(0, &qword_1EADCBAA0, &type metadata for HKCloudSync.Show.Database, MEMORY[0x1E69E62F8]);
    sub_191C44A20();
    sub_191CC7348();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_191C449CC()
{
  result = qword_1EADCBA98;
  if (!qword_1EADCBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBA98);
  }

  return result;
}

unint64_t sub_191C44A20()
{
  result = qword_1EADCBAA8;
  if (!qword_1EADCBAA8)
  {
    sub_191C62404(255, &qword_1EADCBAA0, &type metadata for HKCloudSync.Show.Database, MEMORY[0x1E69E62F8]);
    sub_191C44ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAA8);
  }

  return result;
}

unint64_t sub_191C44ABC()
{
  result = qword_1EADCBAB0;
  if (!qword_1EADCBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAB0);
  }

  return result;
}

uint64_t HKCloudSync.Show.Container.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  sub_191C62544(0, &qword_1EADCBAB8, sub_191C449CC, &_s4ShowV9ContainerV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C449CC();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v6;
  v13 = v25;
  v29 = 0;
  v14 = sub_191CC7228();
  v16 = v15;
  v24 = v14;
  v28 = 1;
  v22 = sub_191CC7228();
  v23 = v17;
  sub_191C62404(0, &qword_1EADCBAA0, &type metadata for HKCloudSync.Show.Database, MEMORY[0x1E69E62F8]);
  v27 = 2;
  sub_191C44E00();
  sub_191CC7268();
  (*(v12 + 8))(v10, v5);
  v18 = v26;
  v19 = v23;
  *v13 = v24;
  v13[1] = v16;
  v13[2] = v22;
  v13[3] = v19;
  v13[4] = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_191C44E00()
{
  result = qword_1EADCBAC0;
  if (!qword_1EADCBAC0)
  {
    sub_191C62404(255, &qword_1EADCBAA0, &type metadata for HKCloudSync.Show.Database, MEMORY[0x1E69E62F8]);
    sub_191C44E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAC0);
  }

  return result;
}

unint64_t sub_191C44E9C()
{
  result = qword_1EADCBAC8;
  if (!qword_1EADCBAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAC8);
  }

  return result;
}

uint64_t HKCloudSync.Show.Database.scope.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HKCloudSync.Show.Database.scope.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.Database.zones.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t HKCloudSync.Show.Database.init(scope:zones:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_191C45008()
{
  if (*v0)
  {
    return 0x73656E6F7ALL;
  }

  else
  {
    return 0x65706F6373;
  }
}

uint64_t sub_191C45034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65706F6373 && a2 == 0xE500000000000000;
  if (v6 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_191C45108(uint64_t a1)
{
  v2 = sub_191C45368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C45144(uint64_t a1)
{
  v2 = sub_191C45368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.Database.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBAD0, sub_191C45368, &_s4ShowV8DatabaseV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v15 - v8;
  v10 = *v1;
  v11 = v1[1];
  v16 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C45368();
  sub_191CC7548();
  v20 = 0;
  v13 = v17;
  sub_191CC7308();
  if (!v13)
  {
    v18 = v16;
    v19 = 1;
    sub_191C62404(0, &qword_1EADCBAE0, &type metadata for HKCloudSync.Show.Zone, MEMORY[0x1E69E62F8]);
    sub_191C453BC();
    sub_191CC7348();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_191C45368()
{
  result = qword_1EADCBAD8;
  if (!qword_1EADCBAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAD8);
  }

  return result;
}

unint64_t sub_191C453BC()
{
  result = qword_1EADCBAE8;
  if (!qword_1EADCBAE8)
  {
    sub_191C62404(255, &qword_1EADCBAE0, &type metadata for HKCloudSync.Show.Zone, MEMORY[0x1E69E62F8]);
    sub_191C45458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAE8);
  }

  return result;
}

unint64_t sub_191C45458()
{
  result = qword_1EADCBAF0;
  if (!qword_1EADCBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBAF0);
  }

  return result;
}

uint64_t HKCloudSync.Show.Database.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a2;
  sub_191C62544(0, &qword_1EADCBAF8, sub_191C45368, &_s4ShowV8DatabaseV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C45368();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v6;
  v13 = v20[0];
  v22 = 0;
  v14 = sub_191CC7228();
  v16 = v15;
  v17 = v14;
  sub_191C62404(0, &qword_1EADCBAE0, &type metadata for HKCloudSync.Show.Zone, MEMORY[0x1E69E62F8]);
  v21 = 1;
  sub_191C45720();
  sub_191CC7268();
  (*(v12 + 8))(v10, v5);
  v18 = v20[1];
  *v13 = v17;
  v13[1] = v16;
  v13[2] = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_191C45720()
{
  result = qword_1EADCBB00;
  if (!qword_1EADCBB00)
  {
    sub_191C62404(255, &qword_1EADCBAE0, &type metadata for HKCloudSync.Show.Zone, MEMORY[0x1E69E62F8]);
    sub_191C457BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB00);
  }

  return result;
}

unint64_t sub_191C457BC()
{
  result = qword_1EADCBB08;
  if (!qword_1EADCBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB08);
  }

  return result;
}

uint64_t HKCloudSync.Show.Zone.zoneID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 HKCloudSync.Show.Zone.zoneID.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1->n128_u64[1];
  v5 = v1[1].n128_u64[1];

  result = v7;
  *v1 = v7;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t HKCloudSync.Show.Zone.type.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t HKCloudSync.Show.Zone.type.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t HKCloudSync.Show.Zone.ownerParticipant.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v7[0] = v1[3];
  v7[1] = v2;
  v4 = v1[6];
  v8 = v1[5];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_191C459C4(v7, &v6);
}

uint64_t sub_191C459C4(uint64_t a1, uint64_t a2)
{
  sub_191C62404(0, &qword_1EADCBB10, &type metadata for HKCloudSync.Show.ShareParticipant, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 HKCloudSync.Show.Zone.ownerParticipant.setter(uint64_t a1)
{
  v3 = v1[4];
  v8[0] = v1[3];
  v8[1] = v3;
  v4 = v1[6];
  v8[2] = v1[5];
  v8[3] = v4;
  sub_191C45A9C(v8);
  v5 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[5] = result;
  v1[6] = v7;
  return result;
}

uint64_t sub_191C45A9C(uint64_t a1)
{
  sub_191C62404(0, &qword_1EADCBB10, &type metadata for HKCloudSync.Show.ShareParticipant, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HKCloudSync.Show.Zone.otherParticipants.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t HKCloudSync.Show.Zone.records.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

__n128 HKCloudSync.Show.Zone.init(zoneID:type:ownerParticipant:otherParticipants:records:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a7 = *a1;
  *(a7 + 16) = v11;
  *(a7 + 24) = v12;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  memset(v16, 0, sizeof(v16));
  sub_191C45A9C(v16);
  v13 = *(a4 + 16);
  *(a7 + 48) = *a4;
  *(a7 + 64) = v13;
  result = *(a4 + 32);
  v15 = *(a4 + 48);
  *(a7 + 80) = result;
  *(a7 + 96) = v15;
  *(a7 + 112) = a5;
  *(a7 + 120) = a6;
  return result;
}

unint64_t sub_191C45C5C()
{
  v1 = *v0;
  v2 = 0x4449656E6F7ALL;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x7364726F636572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C45CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C66874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C45D18(uint64_t a1)
{
  v2 = sub_191C4619C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C45D54(uint64_t a1)
{
  v2 = sub_191C4619C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.Zone.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBB18, sub_191C4619C, &_s4ShowV4ZoneV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v27 = *(v3 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v22 - v7;
  v9 = v1[1];
  v26 = *v1;
  v11 = v1[2];
  v10 = v1[3];
  v12 = v1[5];
  v25 = v1[4];
  v24 = v12;
  v13 = *(v1 + 4);
  v36 = *(v1 + 3);
  v37 = v13;
  v14 = *(v1 + 6);
  v38 = *(v1 + 5);
  v39 = v14;
  v15 = v1[15];
  v23 = v1[14];
  v22 = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C4619C();

  sub_191CC7548();
  *&v32 = v26;
  *(&v32 + 1) = v9;
  *&v33 = v11;
  *(&v33 + 1) = v10;
  LOBYTE(v30[0]) = 0;
  sub_191C461F0();
  v17 = v40;
  sub_191CC7348();
  if (v17)
  {

    return (*(v27 + 8))(v8, v4);
  }

  else
  {
    v19 = v23;
    v20 = v22;
    v21 = v27;

    LOBYTE(v32) = 1;
    sub_191CC7308();
    v32 = v36;
    v33 = v37;
    v34 = v38;
    v35 = v39;
    v31 = 2;
    sub_191C459C4(&v36, v30);
    sub_191C46244();
    sub_191CC72F8();
    v30[0] = v32;
    v30[1] = v33;
    v30[2] = v34;
    v30[3] = v35;
    sub_191C45A9C(v30);
    v29 = v19;
    v28 = 3;
    sub_191C62404(0, &qword_1EADCBB38, &type metadata for HKCloudSync.Show.ShareParticipant, MEMORY[0x1E69E62F8]);
    sub_191C46298();
    sub_191CC72F8();
    v29 = v20;
    v28 = 4;
    sub_191C46334(0);
    sub_191C46388();
    sub_191CC7348();
    return (*(v21 + 8))(0, v4);
  }
}

unint64_t sub_191C4619C()
{
  result = qword_1EADCBB20;
  if (!qword_1EADCBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB20);
  }

  return result;
}

unint64_t sub_191C461F0()
{
  result = qword_1EADCBB28;
  if (!qword_1EADCBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB28);
  }

  return result;
}

unint64_t sub_191C46244()
{
  result = qword_1EADCBB30;
  if (!qword_1EADCBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB30);
  }

  return result;
}

unint64_t sub_191C46298()
{
  result = qword_1EADCBB40;
  if (!qword_1EADCBB40)
  {
    sub_191C62404(255, &qword_1EADCBB38, &type metadata for HKCloudSync.Show.ShareParticipant, MEMORY[0x1E69E62F8]);
    sub_191C46244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB40);
  }

  return result;
}

unint64_t sub_191C46388()
{
  result = qword_1EADCBB50;
  if (!qword_1EADCBB50)
  {
    sub_191C46334(255);
    sub_191C46B48(&qword_1EADCBB58, type metadata accessor for HKCloudSync.Show.Record);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB50);
  }

  return result;
}

uint64_t HKCloudSync.Show.Zone.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_191C62544(0, &qword_1EADCBB60, sub_191C4619C, &_s4ShowV4ZoneV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v43 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v11);
  sub_191C4619C();
  sub_191CC7528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v44);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    sub_191C45A9C(&v53);
  }

  else
  {
    v41 = a2;
    v42 = v6;
    LOBYTE(v45) = 0;
    sub_191C4695C();
    sub_191CC7268();
    v13 = v53;
    v14 = v55;
    v35 = v56;
    v36 = v54;
    LOBYTE(v53) = 1;
    v32 = sub_191CC7228();
    v33 = v14;
    v34 = v15;
    v80 = 2;
    sub_191C469B0();
    sub_191CC7218();
    v31 = v71;
    v29 = v13;
    v30 = v72;
    v39 = v74;
    v40 = v73;
    v37 = v76;
    v38 = v75;
    v17 = v77;
    v16 = v78;
    memset(v70, 0, sizeof(v70));
    sub_191C45A9C(v70);
    sub_191C62404(0, &qword_1EADCBB38, &type metadata for HKCloudSync.Show.ShareParticipant, MEMORY[0x1E69E62F8]);
    LOBYTE(v45) = 3;
    sub_191C46A04();
    sub_191CC7218();
    v18 = v53;
    sub_191C46334(0);
    v79 = 4;
    sub_191C46AA0();
    sub_191CC7268();
    (*(v42 + 8))(v10, v43);
    v43 = v69;
    v19 = v29;
    v20 = v35;
    v21 = v36;
    *&v45 = v29;
    *(&v45 + 1) = v36;
    *&v46 = v33;
    *(&v46 + 1) = v35;
    *&v47 = v32;
    *(&v47 + 1) = v34;
    *&v48 = v31;
    *(&v48 + 1) = v30;
    *&v49 = v40;
    *(&v49 + 1) = v39;
    *&v50 = v38;
    *(&v50 + 1) = v37;
    *&v51 = v17;
    *(&v51 + 1) = v16;
    *&v52 = v18;
    *(&v52 + 1) = v69;
    v22 = v48;
    v23 = v41;
    v41[2] = v47;
    v23[3] = v22;
    v24 = v50;
    v23[4] = v49;
    v23[5] = v24;
    v25 = v46;
    *v23 = v45;
    v23[1] = v25;
    v26 = v52;
    v23[6] = v51;
    v23[7] = v26;
    sub_191C46B90(&v45, &v53);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v53 = v19;
    v54 = v21;
    v55 = v33;
    v56 = v20;
    v57 = v32;
    v58 = v34;
    v59 = v31;
    v60 = v30;
    v61 = v40;
    v62 = v39;
    v63 = v38;
    v64 = v37;
    v65 = v17;
    v66 = v16;
    v67 = v18;
    v68 = v43;
    return sub_191C46BC8(&v53);
  }
}

unint64_t sub_191C4695C()
{
  result = qword_1EADCBB68;
  if (!qword_1EADCBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB68);
  }

  return result;
}

unint64_t sub_191C469B0()
{
  result = qword_1EADCBB70;
  if (!qword_1EADCBB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB70);
  }

  return result;
}

unint64_t sub_191C46A04()
{
  result = qword_1EADCBB78;
  if (!qword_1EADCBB78)
  {
    sub_191C62404(255, &qword_1EADCBB38, &type metadata for HKCloudSync.Show.ShareParticipant, MEMORY[0x1E69E62F8]);
    sub_191C469B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB78);
  }

  return result;
}

unint64_t sub_191C46AA0()
{
  result = qword_1EADCBB80;
  if (!qword_1EADCBB80)
  {
    sub_191C46334(255);
    sub_191C46B48(&qword_1EADCBB88, type metadata accessor for HKCloudSync.Show.Record);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB80);
  }

  return result;
}

uint64_t sub_191C46B48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HKCloudSync.Show.ZoneID.zoneName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HKCloudSync.Show.ZoneID.zoneName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.ZoneID.ownerName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t HKCloudSync.Show.ZoneID.ownerName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t HKCloudSync.Show.ZoneID.init(zoneName:ownerName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_191C46D44()
{
  if (*v0)
  {
    result = 0x6D614E72656E776FLL;
  }

  else
  {
    result = 0x656D614E656E6F7ALL;
  }

  *v0;
  return result;
}

uint64_t sub_191C46D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E656E6F7ALL && a2 == 0xE800000000000000;
  if (v6 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D614E72656E776FLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_191C46E68(uint64_t a1)
{
  v2 = sub_191C4707C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C46EA4(uint64_t a1)
{
  v2 = sub_191C4707C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.ZoneID.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBB90, sub_191C4707C, &_s4ShowV6ZoneIDV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = v16 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v16[1] = v1[3];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C4707C();
  sub_191CC7548();
  v18 = 0;
  v14 = v16[3];
  sub_191CC7308();
  if (!v14)
  {
    v17 = 1;
    sub_191CC7308();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_191C4707C()
{
  result = qword_1EADCBB98;
  if (!qword_1EADCBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBB98);
  }

  return result;
}

uint64_t HKCloudSync.Show.ZoneID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  sub_191C62544(0, &qword_1EADCBBA0, sub_191C4707C, &_s4ShowV6ZoneIDV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C4707C();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v21;
  v23 = 0;
  v13 = sub_191CC7228();
  v15 = v14;
  v20 = v13;
  v22 = 1;
  v16 = sub_191CC7228();
  v18 = v17;
  (*(v6 + 8))(v10, v5);
  *v12 = v20;
  v12[1] = v15;
  v12[2] = v16;
  v12[3] = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HKCloudSync.Show.ShareParticipant.role.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t HKCloudSync.Show.ShareParticipant.role.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t HKCloudSync.Show.ShareParticipant.acceptanceStatus.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t HKCloudSync.Show.ShareParticipant.acceptanceStatus.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t HKCloudSync.Show.ShareParticipant.permission.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t HKCloudSync.Show.ShareParticipant.permission.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t HKCloudSync.Show.ShareParticipant.init(identity:role:acceptanceStatus:permission:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

unint64_t sub_191C47500()
{
  v1 = 0x797469746E656469;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x697373696D726570;
  }

  if (*v0)
  {
    v1 = 1701605234;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_191C4757C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C66A2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C475A4(uint64_t a1)
{
  v2 = sub_191C47818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C475E0(uint64_t a1)
{
  v2 = sub_191C47818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.ShareParticipant.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBBA8, sub_191C47818, &_s4ShowV16ShareParticipantV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = v18 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v18[5] = v1[3];
  v18[6] = v12;
  v13 = v1[4];
  v18[3] = v1[5];
  v18[4] = v13;
  v14 = v1[6];
  v18[1] = v1[7];
  v18[2] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C47818();
  sub_191CC7548();
  v22 = 0;
  v16 = v18[7];
  sub_191CC7308();
  if (!v16)
  {
    v21 = 1;
    sub_191CC7308();
    v20 = 2;
    sub_191CC7308();
    v19 = 3;
    sub_191CC7308();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_191C47818()
{
  result = qword_1EADCBBB0;
  if (!qword_1EADCBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBBB0);
  }

  return result;
}

uint64_t HKCloudSync.Show.ShareParticipant.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a2;
  sub_191C62544(0, &qword_1EADCBBB8, sub_191C47818, &_s4ShowV16ShareParticipantV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C47818();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v6;
  v13 = v34;
  LOBYTE(v39[0]) = 0;
  v14 = sub_191CC7228();
  v33 = v15;
  LOBYTE(v39[0]) = 1;
  v16 = sub_191CC7228();
  v32 = v17;
  v30 = v16;
  LOBYTE(v39[0]) = 2;
  v29 = sub_191CC7228();
  v31 = v18;
  v40 = 3;
  v19 = sub_191CC7228();
  v21 = v20;
  (*(v12 + 8))(v10, v5);
  v23 = v32;
  v22 = v33;
  *&v35 = v14;
  *(&v35 + 1) = v33;
  v24 = v30;
  *&v36 = v30;
  *(&v36 + 1) = v32;
  *&v37 = v29;
  *(&v37 + 1) = v31;
  *&v38 = v19;
  *(&v38 + 1) = v21;
  v25 = v36;
  *v13 = v35;
  v13[1] = v25;
  v26 = v38;
  v13[2] = v37;
  v13[3] = v26;
  sub_191C47BA8(&v35, v39);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v39[0] = v14;
  v39[1] = v22;
  v39[2] = v24;
  v39[3] = v23;
  v39[4] = v29;
  v39[5] = v31;
  v39[6] = v19;
  v39[7] = v21;
  return sub_191C47BE0(v39);
}

uint64_t HKCloudSync.Show.Record.recordID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t HKCloudSync.Show.Record.recordID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t HKCloudSync.Show.Record.recordType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t HKCloudSync.Show.Record.recordType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void sub_191C47DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_191C47F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t HKCloudSync.Show.Record.childRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKCloudSync.Show.Record(0) + 36));
}

uint64_t HKCloudSync.Show.Record.childRecords.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKCloudSync.Show.Record(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HKCloudSync.Show.Record.init(recordID:recordType:schemaVersion:modificationDate:detail:childRecords:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v13 = *a1;
  v14 = a1[1];
  v15 = type metadata accessor for HKCloudSync.Show.Record(0);
  v16 = v15[7];
  v17 = sub_191CC6148();
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = v15[9];
  *a8 = v13;
  *(a8 + 1) = v14;
  *(a8 + 2) = a2;
  *(a8 + 3) = a3;
  *(a8 + 4) = a4;
  sub_191C47F88(a5, &a8[v16], sub_191C47DA4);
  result = sub_191C627D4(a6, &a8[v15[8]], type metadata accessor for HKCloudSync.Show.RecordDetail);
  *&a8[v18] = a7;
  return result;
}

unint64_t sub_191C48200()
{
  v1 = *v0;
  v2 = 0x444964726F636572;
  v3 = 0xD000000000000010;
  v4 = 0x6C6961746564;
  if (v1 != 4)
  {
    v4 = 0x636552646C696863;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x795464726F636572;
  if (v1 != 1)
  {
    v5 = 0x6556616D65686373;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C482D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C66BA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C482FC(uint64_t a1)
{
  v2 = sub_191C486AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C48338(uint64_t a1)
{
  v2 = sub_191C486AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.Record.encode(to:)(void *a1)
{
  v3 = v1;
  sub_191C62544(0, &qword_1EADCBBC0, sub_191C486AC, &_s4ShowV6RecordV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C486AC();
  sub_191CC7548();
  v13 = v3[1];
  v21[0] = *v3;
  v21[1] = v13;
  v22 = 0;
  sub_191C48700();

  sub_191CC7348();
  if (v2)
  {
  }

  else
  {

    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v21[0]) = 1;
    sub_191CC7308();
    v16 = v3[4];
    LOBYTE(v21[0]) = 2;
    sub_191CC7338();
    v17 = type metadata accessor for HKCloudSync.Show.Record(0);
    v18 = v17[7];
    LOBYTE(v21[0]) = 3;
    sub_191CC6148();
    sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530]);
    sub_191CC72F8();
    v19 = v17[8];
    LOBYTE(v21[0]) = 4;
    type metadata accessor for HKCloudSync.Show.RecordDetail(0);
    sub_191C46B48(&qword_1EADCBBD8, type metadata accessor for HKCloudSync.Show.RecordDetail);
    sub_191CC7348();
    v21[0] = *(v3 + v17[9]);
    v22 = 5;
    sub_191C46334(0);
    sub_191C46388();
    sub_191CC72F8();
  }

  return (*(v7 + 8))(v11, v6);
}

unint64_t sub_191C486AC()
{
  result = qword_1EADCBBC8;
  if (!qword_1EADCBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBBC8);
  }

  return result;
}

unint64_t sub_191C48700()
{
  result = qword_1EADCBBD0;
  if (!qword_1EADCBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBBD0);
  }

  return result;
}

uint64_t HKCloudSync.Show.Record.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v43 = type metadata accessor for HKCloudSync.Show.RecordDetail(0);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43, v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C47DA4(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C62544(0, &qword_1EADCBBE0, sub_191C486AC, &_s4ShowV6RecordV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v41 - v14;
  v16 = type metadata accessor for HKCloudSync.Show.Record(0);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 28);
  v23 = sub_191CC6148();
  v24 = *(*(v23 - 8) + 56);
  v48 = v22;
  v25 = v21;
  v24(&v21[v22], 1, 1, v23);
  v27 = a1[3];
  v26 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v27);
  sub_191C486AC();
  v28 = v46;
  sub_191CC7528();
  if (v28)
  {
    v30 = v48;
    __swift_destroy_boxed_opaque_existential_0(v47);
    v39 = sub_191C47DA4;
    v40 = v25 + v30;
  }

  else
  {
    v29 = v44;
    v51 = 0;
    sub_191C48DC0();
    sub_191CC7268();
    v32 = v50;
    v33 = v15;
    v34 = v25;
    *v25 = v49;
    v25[1] = v32;
    LOBYTE(v49) = 1;
    v35 = v33;
    v34[2] = sub_191CC7228();
    v34[3] = v36;
    LOBYTE(v49) = 2;
    v34[4] = sub_191CC7258();
    LOBYTE(v49) = 3;
    sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530]);
    sub_191CC7218();
    sub_191C47F88(v10, v34 + v48, sub_191C47DA4);
    LOBYTE(v49) = 4;
    sub_191C46B48(&qword_1EADCBBF0, type metadata accessor for HKCloudSync.Show.RecordDetail);
    v37 = v42;
    sub_191CC7268();
    sub_191C627D4(v37, v34 + *(v16 + 32), type metadata accessor for HKCloudSync.Show.RecordDetail);
    sub_191C46334(0);
    v51 = 5;
    sub_191C46AA0();
    sub_191CC7218();
    v38 = *(v16 + 36);
    (*(v29 + 8))(v35, v45);
    *(v34 + v38) = v49;
    sub_191C622F4(v34, v41, type metadata accessor for HKCloudSync.Show.Record);
    __swift_destroy_boxed_opaque_existential_0(v47);
    v39 = type metadata accessor for HKCloudSync.Show.Record;
    v40 = v34;
  }

  return sub_191C48D60(v40, v39);
}

uint64_t sub_191C48D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_191C48DC0()
{
  result = qword_1EADCBBE8;
  if (!qword_1EADCBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBBE8);
  }

  return result;
}

uint64_t HKCloudSync.Show.RecordID.recordName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HKCloudSync.Show.RecordID.recordName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.RecordID.init(recordName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_191C48EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_191CC73E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_191C48F80(uint64_t a1)
{
  v2 = sub_191C49160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C48FBC(uint64_t a1)
{
  v2 = sub_191C49160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.RecordID.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBBF8, sub_191C49160, &_s4ShowV8RecordIDV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C49160();
  sub_191CC7548();
  sub_191CC7308();
  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_191C49160()
{
  result = qword_1EADCBC00;
  if (!qword_1EADCBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC00);
  }

  return result;
}

uint64_t HKCloudSync.Show.RecordID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_191C62544(0, &qword_1EADCBC08, sub_191C49160, &_s4ShowV8RecordIDV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C49160();
  sub_191CC7528();
  if (!v2)
  {
    v12 = v18;
    v13 = sub_191CC7228();
    v15 = v14;
    (*(v6 + 8))(v10, v5);
    *v12 = v13;
    v12[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_191C4935C(char a1)
{
  result = 0x65676E616863;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x72657473616DLL;
      break;
    case 3:
      result = 0x7972747369676572;
      break;
    case 4:
      result = 0x65636E6575716573;
      break;
    case 5:
      result = 0x65726F7473;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x656D686361747461;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0x6F43656369766564;
      break;
    case 11:
      result = 0x654B656369766564;
      break;
    case 12:
      result = 0x496C61636964656DLL;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0x7553646572616873;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_191C4955C(char a1)
{
  result = 1953459315;
  switch(a1)
  {
    case 1:
      result = 0x6576697463417369;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x656E696C65736162;
      break;
    case 4:
      result = 0x6E4965676E616863;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6C6F636F746F7270;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      v3 = 0x797469746E65;
      goto LABEL_14;
    case 11:
      v3 = 0x6E657A6F7266;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E41000000000000;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_191C496EC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x656D614E7473616CLL;
    v6 = 0x6D614E7473726966;
    if (a1 != 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1684632949;
    v2 = 0x6974617469766E69;
    v3 = 0xD000000000000015;
    if (a1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_191C49834(char a1)
{
  result = 0x6576697463417369;
  switch(a1)
  {
    case 1:
      return 0xD000000000000012;
    case 2:
      return 0x54746375646F7270;
    case 3:
      return 0x6F4D656369766564;
    case 4:
      return 0xD000000000000010;
    case 5:
      v4 = 0x4965726F7473;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6564000000000000;
    case 6:
      v4 = 0x4972656E776FLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6564000000000000;
    case 7:
      return 0x6E656449636E7973;
    case 8:
      return 0x646C6968437369;
    case 9:
      return 0xD000000000000016;
    case 10:
      return 0x49676E69646E6570;
    case 11:
      return 0xD000000000000018;
    case 12:
      return 0xD000000000000017;
    case 13:
      return 0x6572506472616873;
    case 14:
      return 0xD000000000000015;
    case 15:
      return 0xD000000000000011;
    case 16:
      return 0xD000000000000014;
    case 17:
      v3 = 0x5341746F6C73;
      goto LABEL_19;
    case 18:
      v3 = 0x5342746F6C73;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7165000000000000;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_191C49ABC(void *a1)
{
  sub_191C62544(0, &qword_1EADCBBF8, sub_191C49160, &_s4ShowV8RecordIDV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C49160();
  sub_191CC7548();
  sub_191CC7308();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_191C49C24()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x65707954656D696DLL;
  v4 = 1752392040;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461657263;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D614E656C6966;
  if (v1 != 1)
  {
    v5 = 0x657A6953656C6966;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C49CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C66DB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C49D0C(uint64_t a1)
{
  v2 = sub_191C50A30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C49D48(uint64_t a1)
{
  v2 = sub_191C50A30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C49D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_191CC73E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_191C49E1C(uint64_t a1)
{
  v2 = sub_191C50A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C49E58(uint64_t a1)
{
  v2 = sub_191C50A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_191C49E94()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 1701869940;
  if (v1 != 5)
  {
    v3 = 0x6E6F697461657263;
  }

  v4 = 0x6556616D65686373;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C49F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C66FBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C49FB8(uint64_t a1)
{
  v2 = sub_191C509DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C49FF4(uint64_t a1)
{
  v2 = sub_191C509DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4A04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x636E657265666572 && a2 == 0xEA00000000007365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_191CC73E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_191C4A0DC(uint64_t a1)
{
  v2 = sub_191C50988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A118(uint64_t a1)
{
  v2 = sub_191C50988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4A154()
{
  v1 = 0x6C6F636F746F7270;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E4965676E616863;
  }
}

uint64_t sub_191C4A1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C67224(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C4A1F0(uint64_t a1)
{
  v2 = sub_191C50D58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A22C(uint64_t a1)
{
  v2 = sub_191C50D58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4A270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C67350(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C4A2A4(uint64_t a1)
{
  v2 = sub_191C50DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A2E0(uint64_t a1)
{
  v2 = sub_191C50DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4A31C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6556616D65686373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444964726F636572;
  }
}

uint64_t sub_191C4A388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C678A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C4A3B0(uint64_t a1)
{
  v2 = sub_191C50D04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A3EC(uint64_t a1)
{
  v2 = sub_191C50D04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_191C4A428()
{
  v1 = *v0;
  v2 = 0x54746375646F7270;
  v3 = 0x4F746E6572727563;
  v4 = 0x6E656449636E7973;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C4A4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C679D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C4A514(uint64_t a1)
{
  v2 = sub_191C50934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A550(uint64_t a1)
{
  v2 = sub_191C50934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4A58C()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_191C4A5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C67BA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C4A608(uint64_t a1)
{
  v2 = sub_191C508E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A644(uint64_t a1)
{
  v2 = sub_191C508E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4A69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000191D2DAB0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_191CC73E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_191C4A730(uint64_t a1)
{
  v2 = sub_191C50CB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A76C(uint64_t a1)
{
  v2 = sub_191C50CB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_191C4A7A8()
{
  if (*v0)
  {
    result = 1936158572;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_191C4A7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000191D2D770 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1936158572 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_191CC73E8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_191C4A8C8(uint64_t a1)
{
  v2 = sub_191C5088C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4A904(uint64_t a1)
{
  v2 = sub_191C5088C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_191C4A940()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_191C4A978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000018 && 0x8000000191D2DAB0 == a2;
  if (v6 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000191D2DAD0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_191C4AA58(uint64_t a1)
{
  v2 = sub_191C50C5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4AA94(uint64_t a1)
{
  v2 = sub_191C50C5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4AAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C67CC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C4AB0C(uint64_t a1)
{
  v2 = sub_191C50C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4AB48(uint64_t a1)
{
  v2 = sub_191C50C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4ABA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000191D2D7D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_191CC73E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_191C4AC34(uint64_t a1)
{
  v2 = sub_191C50838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4AC70(uint64_t a1)
{
  v2 = sub_191C50838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4ACAC()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6E6F6973726576;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6567616B636170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C4AD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C68108(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C4AD6C(uint64_t a1)
{
  v2 = sub_191C5075C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4ADA8(uint64_t a1)
{
  v2 = sub_191C5075C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4ADEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C682C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C4AE14(uint64_t a1)
{
  v2 = sub_191C507B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4AE50(uint64_t a1)
{
  v2 = sub_191C507B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4AEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000191D2D790 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_191CC73E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_191C4AF3C(uint64_t a1)
{
  v2 = sub_191C50708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4AF78(uint64_t a1)
{
  v2 = sub_191C50708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C4AFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C68604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C4AFF0(uint64_t a1)
{
  v2 = sub_191C50AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C4B02C(uint64_t a1)
{
  v2 = sub_191C50AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.RecordDetail.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_191C62544(0, &qword_1EADCBC10, sub_191C50708, &_s4ShowV12RecordDetailO34SharedSummaryTransactionCodingKeysON, MEMORY[0x1E69E6F58]);
  v418 = v3;
  v417 = *(v3 - 8);
  v4 = *(v417 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v416 = &v381 - v6;
  sub_191C62544(0, &qword_1EADCBC20, sub_191C5075C, &_s4ShowV12RecordDetailO23SharedSummaryCodingKeysON, v2);
  v422 = v7;
  v421 = *(v7 - 8);
  v8 = *(v421 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v420 = &v381 - v10;
  sub_191C62544(0, &qword_1EADCBC30, sub_191C507B0, &_s4ShowV12RecordDetailO34SharedSummaryParticipantCodingKeysON, v2);
  v427 = v11;
  v425 = *(v11 - 8);
  v12 = *(v425 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v426 = &v381 - v14;
  sub_191C50804(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v438 = &v381 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C62544(0, &qword_1EADCBC48, sub_191C50838, &_s4ShowV12RecordDetailO36SharedSummaryAuthorizationCodingKeysON, v2);
  v405 = v19;
  v404 = *(v19 - 8);
  v20 = *(v404 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v402 = &v381 - v22;
  sub_191C62544(0, &qword_1EADCBC58, sub_191C5088C, &_s4ShowV12RecordDetailO19MedicalIDCodingKeysON, v2);
  v410 = v23;
  v409 = *(v23 - 8);
  v24 = *(v409 + 64);
  MEMORY[0x1EEE9AC00](v23, v25);
  v403 = &v381 - v26;
  sub_191C62544(0, &qword_1EADCBC68, sub_191C508E0, &_s4ShowV12RecordDetailO24DeviceKeyValueCodingKeysON, v2);
  v412 = v27;
  v411 = *(v27 - 8);
  v28 = *(v411 + 64);
  MEMORY[0x1EEE9AC00](v27, v29);
  v406 = &v381 - v30;
  sub_191C62544(0, &qword_1EADCBC78, sub_191C50934, &_s4ShowV12RecordDetailO23DeviceContextCodingKeysON, v2);
  v415 = v31;
  v414 = *(v31 - 8);
  v32 = *(v414 + 64);
  MEMORY[0x1EEE9AC00](v31, v33);
  v413 = &v381 - v34;
  sub_191C62544(0, &qword_1EADCBC88, sub_191C50988, &_s4ShowV12RecordDetailO38AttachmentReferenceTombstoneCodingKeysON, v2);
  v400 = v35;
  v399 = *(v35 - 8);
  v36 = *(v399 + 64);
  MEMORY[0x1EEE9AC00](v35, v37);
  v398 = &v381 - v38;
  sub_191C62544(0, &qword_1EADCBC98, sub_191C509DC, &_s4ShowV12RecordDetailO29AttachmentReferenceCodingKeysON, v2);
  v432 = v39;
  v424 = *(v39 - 8);
  v40 = *(v424 + 64);
  MEMORY[0x1EEE9AC00](v39, v41);
  v433 = &v381 - v42;
  sub_191C62544(0, &qword_1EADCBCA8, sub_191C50A30, &_s4ShowV12RecordDetailO20AttachmentCodingKeysON, v2);
  v408 = v43;
  v407 = *(v43 - 8);
  v44 = *(v407 + 64);
  MEMORY[0x1EEE9AC00](v43, v45);
  v401 = &v381 - v46;
  v454 = sub_191CC6148();
  v451 = *(v454 - 8);
  v47 = *(v451 + 64);
  v49 = MEMORY[0x1EEE9AC00](v454, v48);
  v434 = &v381 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v435 = &v381 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v437 = &v381 - v56;
  MEMORY[0x1EEE9AC00](v55, v57);
  v436 = &v381 - v58;
  sub_191C62544(0, &qword_1EADCBCB8, sub_191C50A84, &_s4ShowV12RecordDetailO30AttachmentManagementCodingKeysON, v2);
  v397 = v59;
  v396 = *(v59 - 8);
  v60 = *(v396 + 64);
  MEMORY[0x1EEE9AC00](v59, v61);
  v395 = &v381 - v62;
  sub_191C62544(0, &qword_1EADCBCC8, sub_191C50AD8, &_s4ShowV12RecordDetailO15StoreCodingKeysON, v2);
  v431 = v63;
  v423 = *(v63 - 8);
  v64 = *(v423 + 64);
  MEMORY[0x1EEE9AC00](v63, v65);
  v430 = &v381 - v66;
  sub_191C50B2C(0);
  v68 = *(*(v67 - 8) + 64);
  v70 = MEMORY[0x1EEE9AC00](v67 - 8, v69);
  v441 = &v381 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1EEE9AC00](v70, v72);
  v442 = &v381 - v74;
  MEMORY[0x1EEE9AC00](v73, v75);
  v448 = &v381 - v76;
  sub_191C50B60(0);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77 - 8, v79);
  v443 = &v381 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C50BB4(0);
  v82 = *(*(v81 - 8) + 64);
  v84 = MEMORY[0x1EEE9AC00](v81 - 8, v83);
  v440 = &v381 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x1EEE9AC00](v84, v86);
  v444 = &v381 - v88;
  MEMORY[0x1EEE9AC00](v87, v89);
  v447 = &v381 - v90;
  v91 = sub_191CC61A8();
  v452 = *(v91 - 8);
  v453 = v91;
  v92 = *(v452 + 64);
  v94 = MEMORY[0x1EEE9AC00](v91, v93);
  v450 = &v381 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = MEMORY[0x1EEE9AC00](v94, v96);
  v446 = &v381 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97, v99);
  v394 = &v381 - v101;
  MEMORY[0x1EEE9AC00](v100, v102);
  v445 = &v381 - v103;
  sub_191C62544(0, &qword_1EADCBCF0, sub_191C50C08, &_s4ShowV12RecordDetailO18SequenceCodingKeysON, v2);
  v429 = v104;
  v419 = *(v104 - 8);
  v105 = *(v419 + 64);
  MEMORY[0x1EEE9AC00](v104, v106);
  v428 = &v381 - v107;
  sub_191C62544(0, &qword_1EADCBD00, sub_191C50C5C, &_s4ShowV12RecordDetailO18RegistryCodingKeysON, v2);
  v393 = v108;
  v392 = *(v108 - 8);
  v109 = *(v392 + 64);
  MEMORY[0x1EEE9AC00](v108, v110);
  v391 = &v381 - v111;
  sub_191C62544(0, &qword_1EADCBD10, sub_191C50CB0, &_s4ShowV12RecordDetailO16MasterCodingKeysON, v2);
  v386 = v112;
  v385 = *(v112 - 8);
  v113 = *(v385 + 64);
  MEMORY[0x1EEE9AC00](v112, v114);
  v383 = &v381 - v115;
  sub_191C62544(0, &qword_1EADCBD20, sub_191C50D04, &_s4ShowV12RecordDetailO27DataUploadRequestCodingKeysON, v2);
  v390 = v116;
  v389 = *(v116 - 8);
  v117 = *(v389 + 64);
  MEMORY[0x1EEE9AC00](v116, v118);
  v388 = &v381 - v119;
  sub_191C47DA4(0);
  v121 = *(*(v120 - 8) + 64);
  v123 = MEMORY[0x1EEE9AC00](v120 - 8, v122);
  v384 = &v381 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = MEMORY[0x1EEE9AC00](v123, v125);
  v449 = &v381 - v127;
  v129 = MEMORY[0x1EEE9AC00](v126, v128);
  v439 = &v381 - v130;
  MEMORY[0x1EEE9AC00](v129, v131);
  v387 = &v381 - v132;
  sub_191C62544(0, &qword_1EADCBD30, sub_191C50D58, &_s4ShowV12RecordDetailO16ChangeCodingKeysON, v2);
  v134 = v133;
  v382 = *(v133 - 8);
  v135 = *(v382 + 64);
  MEMORY[0x1EEE9AC00](v133, v136);
  v138 = &v381 - v137;
  v139 = type metadata accessor for HKCloudSync.Show.RecordDetail(0);
  v140 = *(*(v139 - 8) + 64);
  MEMORY[0x1EEE9AC00](v139, v141);
  v143 = &v381 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C62544(0, &qword_1EADCBD40, sub_191C50DAC, &_s4ShowV12RecordDetailO10CodingKeysON, v2);
  v459 = v144;
  v457 = *(v144 - 8);
  v145 = *(v457 + 64);
  MEMORY[0x1EEE9AC00](v144, v146);
  v148 = &v381 - v147;
  v149 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C50DAC();
  v458 = v148;
  sub_191CC7548();
  sub_191C622F4(v455, v143, type metadata accessor for HKCloudSync.Show.RecordDetail);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v277 = *v143;
      v276 = *(v143 + 1);
      sub_191C52030();
      v279 = *&v143[*(v278 + 64)];
      v280 = v387;
      sub_191C627D4(&v143[*(v278 + 48)], v387, sub_191C47DA4);
      LOBYTE(v460) = 1;
      sub_191C50D04();
      v281 = v388;
      v283 = v458;
      v282 = v459;
      sub_191CC72B8();
      v460 = v277;
      v461 = v276;
      v462 = 0;
      sub_191C48700();
      v284 = v390;
      v285 = v456;
      sub_191CC7348();
      if (v285)
      {
        (*(v389 + 8))(v281, v284);
        sub_191C48D60(v280, sub_191C47DA4);
        (*(v457 + 8))(v283, v282);
      }

      else
      {

        LOBYTE(v460) = 1;
        sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530]);
        sub_191CC72F8();
        LOBYTE(v460) = 2;
        sub_191CC7338();
        (*(v389 + 8))(v281, v284);
        sub_191C48D60(v280, sub_191C47DA4);
        return (*(v457 + 8))(v283, v282);
      }

    case 2u:
      v242 = *v143;
      LOBYTE(v460) = 2;
      sub_191C50CB0();
      v243 = v383;
      v245 = v458;
      v244 = v459;
      sub_191CC72B8();
      v460 = v242;
      sub_191C693C0(0, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
      sub_191C51FA4(&qword_1EADCBE50);
      v246 = v386;
      sub_191CC7348();
      (*(v385 + 8))(v243, v246);
      (*(v457 + 8))(v245, v244);

    case 3u:
      v258 = *v143;
      v257 = *(v143 + 1);
      LOBYTE(v460) = 3;
      sub_191C50C5C();
      v259 = v391;
      v261 = v458;
      v260 = v459;
      sub_191CC72B8();
      v460 = v258;
      v462 = 0;
      sub_191C693C0(0, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
      sub_191C51FA4(&qword_1EADCBE50);
      v262 = v393;
      v263 = v456;
      sub_191CC7348();

      if (!v263)
      {
        v460 = v257;
        v462 = 1;
        sub_191C51B48();
        sub_191C51DB8();
        sub_191CC7348();
      }

      (*(v392 + 8))(v259, v262);
      (*(v457 + 8))(v261, v260);

    case 4u:
      v210 = *v143;
      v211 = *(v143 + 1);
      LODWORD(v449) = v143[16];
      sub_191C51948(0, v150);
      v213 = v212[16];
      v214 = *&v143[v212[20]];
      v447 = *&v143[v212[24]];
      v448 = v214;
      v215 = *&v143[v212[28]];
      v216 = &v143[v212[32]];
      v218 = *v216;
      v217 = *(v216 + 1);
      v445 = v218;
      v446 = v215;
      v451 = v217;
      v450 = *&v143[v212[36]];
      v455 = *&v143[v212[40]];
      v219 = *&v143[v212[44]];
      v220 = *&v143[v212[48]];
      v221 = *&v143[v212[52]];
      v452 = *&v143[v212[56]];
      v453 = v221;
      v222 = v439;
      sub_191C627D4(&v143[v213], v439, sub_191C47DA4);
      LOBYTE(v460) = 4;
      sub_191C50C08();
      v223 = v428;
      v225 = v458;
      v224 = v459;
      sub_191CC72B8();
      LOBYTE(v460) = 0;
      v226 = v429;
      v227 = v456;
      sub_191CC7308();
      if (v227)
      {

        (*(v419 + 8))(v223, v226);
        sub_191C48D60(v222, sub_191C47DA4);
        return (*(v457 + 8))(v225, v224);
      }

      v444 = v219;
      v456 = v220;

      LOBYTE(v460) = 1;
      sub_191CC7318();
      LOBYTE(v460) = 2;
      sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530]);
      sub_191CC72F8();
      LOBYTE(v460) = 3;
      sub_191CC7368();
      LOBYTE(v460) = 4;
      sub_191CC7368();
      LOBYTE(v460) = 5;
      sub_191CC7368();
      LOBYTE(v460) = 6;
      sub_191CC7308();

      v460 = v450;
      v462 = 7;
      sub_191C2D540();
      sub_191C51D10();
      sub_191CC7348();

      v460 = v455;
      v462 = 8;
      sub_191C51B48();
      sub_191C51DB8();
      sub_191CC7348();

      v460 = v444;
      v462 = 9;
      sub_191CC7348();

      v460 = v456;
      v462 = 10;
      sub_191C51BDC();
      sub_191C57754(&qword_1EADCBE28, sub_191C51E60);
      sub_191CC7348();

      v460 = v453;
      v462 = 11;
      sub_191CC72F8();

      v460 = v452;
      v462 = 12;
      sub_191C62404(0, &qword_1EADCBE18, &type metadata for HKCloudSync.Show.SyncEntityVersion, MEMORY[0x1E69E62F8]);
      sub_191C51EB4();
      sub_191CC72F8();
      (*(v419 + 8))(v428, v429);
      sub_191C48D60(v439, sub_191C47DA4);
      (*(v457 + 8))(v458, v459);

    case 5u:
      v286 = *v143;
      sub_191C516B4(0, v150);
      v288 = v287;
      v434 = v286;
      v289 = swift_projectBox();
      LODWORD(v433) = *v289;
      v290 = *(v289 + 2);
      v429 = *(v289 + 1);
      v450 = v290;
      v291 = *(v289 + 4);
      v428 = *(v289 + 3);
      v446 = v291;
      v292 = *(v289 + 6);
      v427 = *(v289 + 5);
      v439 = v292;
      v293 = v288[24];
      v294 = v288[28];
      v295 = &v289[v288[32]];
      v297 = *v295;
      v296 = v295[1];
      v426 = v297;
      v440 = v296;
      LODWORD(v425) = v289[v288[40]];
      v298 = v288[36];
      v299 = &v289[v288[44]];
      v301 = *v299;
      v300 = *(v299 + 1);
      v424 = v301;
      v455 = v300;
      v302 = v288[48];
      v303 = &v289[v288[52]];
      v305 = *v303;
      v304 = *(v303 + 1);
      v422 = v305;
      v451 = v304;
      v306 = &v289[v288[56]];
      v308 = *v306;
      v307 = *(v306 + 1);
      v421 = v308;
      v438 = v307;
      v309 = v288[60];
      v310 = &v289[v288[64]];
      v312 = *v310;
      v311 = v310[1];
      v420 = v312;
      v437 = v311;
      v313 = &v289[v288[68]];
      v315 = *v313;
      v314 = *(v313 + 1);
      v419 = v315;
      v436 = v314;
      v316 = &v289[v288[72]];
      v318 = *v316;
      v317 = *(v316 + 1);
      v418 = v318;
      v435 = v317;
      v319 = v288[76];
      v320 = v288[80];
      v432 = v288[84];
      sub_191C622F4(&v289[v293], v449, sub_191C47DA4);
      (*(v452 + 16))(v445, &v289[v294], v453);
      sub_191C622F4(&v289[v298], v447, sub_191C50BB4);
      sub_191C622F4(&v289[v302], v444, sub_191C50BB4);
      sub_191C622F4(&v289[v309], v443, sub_191C50B60);
      sub_191C622F4(&v289[v319], v448, sub_191C50B2C);
      sub_191C622F4(&v289[v320], v442, sub_191C50B2C);
      sub_191C622F4(&v289[v432], v441, sub_191C50B2C);
      LOBYTE(v460) = 5;
      sub_191C50AD8();

      v321 = v430;
      v322 = v458;
      sub_191CC72B8();
      LOBYTE(v460) = 0;
      v323 = v431;
      v324 = v456;
      sub_191CC7318();
      if (v324)
      {

        (*(v423 + 8))(v321, v323);
        sub_191C48D60(v441, sub_191C50B2C);
        sub_191C48D60(v442, sub_191C50B2C);
        sub_191C48D60(v448, sub_191C50B2C);
        sub_191C48D60(v443, sub_191C50B60);
        sub_191C48D60(v444, sub_191C50BB4);
        sub_191C48D60(v447, sub_191C50BB4);
        (*(v452 + 8))(v445, v453);
        sub_191C48D60(v449, sub_191C47DA4);
        (*(v457 + 8))(v322, v459);
      }

      else
      {
        LOBYTE(v460) = 1;
        sub_191CC72C8();

        LOBYTE(v460) = 2;
        sub_191CC72C8();

        LOBYTE(v460) = 3;
        sub_191CC7308();

        LOBYTE(v460) = 4;
        sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530]);
        sub_191CC72F8();
        LOBYTE(v460) = 5;
        sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8]);
        sub_191CC7348();
        LOBYTE(v460) = 6;
        sub_191CC7308();

        LOBYTE(v460) = 7;
        type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
        sub_191C46B48(&qword_1EADCBDA0, type metadata accessor for HKCloudSync.Show.SyncIdentity);
        sub_191CC72F8();
        LOBYTE(v460) = 8;
        sub_191CC7318();
        LOBYTE(v460) = 9;
        sub_191CC72C8();

        LOBYTE(v460) = 10;
        sub_191CC72F8();
        LOBYTE(v460) = 11;
        sub_191CC7308();

        LOBYTE(v460) = 12;
        sub_191CC7308();

        LOBYTE(v460) = 13;
        type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
        sub_191C46B48(&qword_1EADCBDD8, type metadata accessor for HKCloudSync.Show.ShardPredicate);
        sub_191CC72F8();
        LOBYTE(v460) = 14;
        sub_191CC72C8();

        LOBYTE(v460) = 15;
        sub_191CC72C8();

        LOBYTE(v460) = 16;
        sub_191CC72C8();

        LOBYTE(v460) = 17;
        sub_191C46B48(&qword_1EADCBBD8, type metadata accessor for HKCloudSync.Show.RecordDetail);
        sub_191CC72F8();
        LOBYTE(v460) = 18;
        sub_191CC72F8();
        LOBYTE(v460) = 19;
        sub_191CC72F8();
        (*(v423 + 8))(v430, v431);
        sub_191C48D60(v441, sub_191C50B2C);
        sub_191C48D60(v442, sub_191C50B2C);
        sub_191C48D60(v448, sub_191C50B2C);
        sub_191C48D60(v443, sub_191C50B60);
        sub_191C48D60(v444, sub_191C50BB4);
        sub_191C48D60(v447, sub_191C50BB4);
        (*(v452 + 8))(v445, v453);
        sub_191C48D60(v449, sub_191C47DA4);
        (*(v457 + 8))(v458, v459);
      }

    case 6u:
      v326 = v452;
      v327 = v453;
      v328 = v394;
      (*(v452 + 32))(v394, v143, v453);
      LOBYTE(v460) = 6;
      sub_191C50A84();
      v329 = v395;
      v225 = v458;
      v224 = v459;
      sub_191CC72B8();
      sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8]);
      v330 = v397;
      sub_191CC7348();
      (*(v396 + 8))(v329, v330);
      (*(v326 + 8))(v328, v327);
      return (*(v457 + 8))(v225, v224);
    case 7u:
      v264 = *v143;
      v265 = *(v143 + 1);
      v266 = *(v143 + 2);
      v455 = *(v143 + 3);
      v267 = *(v143 + 5);
      v449 = *(v143 + 4);
      v450 = v266;
      v268 = *(v143 + 6);
      v447 = *(v143 + 7);
      v448 = v267;
      v452 = *(v143 + 8);
      v453 = v268;
      sub_191C5157C(0, v150);
      v270 = v451;
      v271 = v436;
      v272 = v454;
      (*(v451 + 32))(v436, &v143[*(v269 + 112)], v454);
      LOBYTE(v460) = 7;
      sub_191C50A30();
      v273 = v401;
      v196 = v458;
      v195 = v459;
      sub_191CC72B8();
      LOBYTE(v460) = 0;
      v274 = v408;
      v275 = v456;
      sub_191CC7308();
      if (v275)
      {

        (*(v407 + 8))(v273, v274);
        (*(v270 + 8))(v271, v272);
        goto LABEL_37;
      }

      LOBYTE(v460) = 1;
      sub_191CC7308();

      LOBYTE(v460) = 2;
      sub_191CC7338();
      LOBYTE(v460) = 3;
      sub_191CC7308();
      v368 = v436;

      LOBYTE(v460) = 4;
      sub_191CC7308();

      LOBYTE(v460) = 5;
      sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530]);
      v373 = v454;
      sub_191CC7348();
      v375 = v458;
      v374 = v459;
      v376 = v451;
      (*(v407 + 8))(v273, v274);
      (*(v376 + 8))(v368, v373);
      return (*(v457 + 8))(v375, v374);
    case 8u:
      v345 = *v143;
      v346 = *(v143 + 1);
      v347 = *(v143 + 2);
      v455 = *(v143 + 3);
      v348 = *(v143 + 5);
      v448 = *(v143 + 4);
      v449 = v347;
      v450 = v348;
      v447 = *(v143 + 6);
      sub_191C51428(0, v150);
      v350 = v349[24];
      v445 = *&v143[v349[28]];
      v351 = v349[32];
      v352 = v452;
      (*(v452 + 32))(v446, &v143[v350], v453);
      v353 = v451;
      v354 = v437;
      (*(v451 + 32))(v437, &v143[v351], v454);
      LOBYTE(v460) = 8;
      sub_191C509DC();
      v355 = v433;
      v196 = v458;
      v195 = v459;
      sub_191CC72B8();
      LOBYTE(v460) = 0;
      v356 = v432;
      v357 = v456;
      sub_191CC7308();
      if (v357)
      {

        (*(v424 + 8))(v355, v356);
        (*(v353 + 8))(v354, v454);
        (*(v352 + 8))(v446, v453);
        goto LABEL_37;
      }

      LOBYTE(v460) = 1;
      sub_191CC7308();

      LOBYTE(v460) = 2;
      sub_191CC7308();
      v366 = v454;
      v367 = v451;
      v369 = v458;

      LOBYTE(v460) = 3;
      sub_191CC7338();
      v370 = v452;
      LOBYTE(v460) = 4;
      sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8]);
      sub_191CC7348();
      v372 = v366;
      LOBYTE(v460) = 5;
      v377 = v433;
      sub_191CC7338();
      LOBYTE(v460) = 6;
      sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530]);
      v378 = v437;
      sub_191CC7348();
      v379 = v459;
      v380 = v453;
      (*(v424 + 8))(v377, v432);
      (*(v367 + 8))(v378, v372);
      (*(v370 + 8))(v446, v380);
      return (*(v457 + 8))(v369, v379);
    case 9u:
      v236 = *v143;
      LOBYTE(v460) = 9;
      sub_191C50988();
      v237 = v398;
      v239 = v458;
      v238 = v459;
      sub_191CC72B8();
      v460 = v236;
      sub_191C5132C(0);
      sub_191C51380();
      v240 = v400;
      sub_191CC72F8();
      v241 = &v431;
      goto LABEL_29;
    case 0xAu:
      v332 = *v143;
      v331 = *(v143 + 1);
      v333 = *(v143 + 2);
      v455 = *(v143 + 3);
      v334 = *(v143 + 5);
      v450 = *(v143 + 4);
      v452 = v333;
      v453 = v334;
      sub_191C51218(0, v150);
      v336 = *(v335 + 96);
      sub_191C627D4(&v143[*(v335 + 80)], v440, sub_191C50BB4);
      v337 = v451;
      v338 = v435;
      v339 = v454;
      (*(v451 + 32))(v435, &v143[v336], v454);
      LOBYTE(v460) = 10;
      sub_191C50934();
      v340 = v413;
      v341 = v458;
      v342 = v459;
      sub_191CC72B8();
      LOBYTE(v460) = 0;
      v343 = v415;
      v344 = v456;
      sub_191CC7308();

      if (v344)
      {

        (*(v414 + 8))(v340, v343);
        (*(v337 + 8))(v338, v339);
        sub_191C48D60(v440, sub_191C50BB4);
        return (*(v457 + 8))(v341, v342);
      }

      else
      {
        LOBYTE(v460) = 1;
        sub_191CC7308();

        LOBYTE(v460) = 2;
        sub_191CC7308();
        v362 = v458;
        v363 = v454;
        v364 = v451;
        v365 = v440;

        LOBYTE(v460) = 3;
        type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
        sub_191C46B48(&qword_1EADCBDA0, type metadata accessor for HKCloudSync.Show.SyncIdentity);
        sub_191CC72F8();
        LOBYTE(v460) = 4;
        sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530]);
        v371 = v435;
        sub_191CC7348();
        (*(v414 + 8))(v340, v343);
        (*(v364 + 8))(v371, v363);
        sub_191C48D60(v365, sub_191C50BB4);
        return (*(v457 + 8))(v362, v342);
      }

    case 0xBu:
      v200 = *v143;
      v199 = *(v143 + 1);
      v201 = *(v143 + 3);
      v455 = *(v143 + 2);
      v453 = v201;
      sub_191C51150();
      v203 = v451;
      v204 = v434;
      v205 = v454;
      (*(v451 + 32))(v434, &v143[*(v202 + 64)], v454);
      LOBYTE(v460) = 11;
      sub_191C508E0();
      v206 = v406;
      v207 = v458;
      v162 = v459;
      sub_191CC72B8();
      LOBYTE(v460) = 0;
      v208 = v412;
      v209 = v456;
      sub_191CC7308();

      if (v209)
      {
        sub_191C049D8(v455, v453);
        (*(v411 + 8))(v206, v208);
        (*(v203 + 8))(v204, v205);
      }

      else
      {
        v358 = v453;
        v460 = v455;
        v461 = v453;
        v462 = 1;
        sub_191C511C4();
        sub_191CC7348();
        LOBYTE(v460) = 2;
        sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530]);
        v359 = v434;
        sub_191CC7348();
        sub_191C049D8(v455, v358);
        (*(v411 + 8))(v206, v208);
        (*(v203 + 8))(v359, v205);
      }

      v165 = *(v457 + 8);
      v166 = v207;
      goto LABEL_14;
    case 0xCu:
      sub_191C50FB0();
      v229 = *&v143[*(v228 + 48)];
      v230 = v384;
      sub_191C627D4(v143, v384, sub_191C47DA4);
      LOBYTE(v460) = 12;
      sub_191C5088C();
      v231 = v403;
      v232 = v458;
      v162 = v459;
      sub_191CC72B8();
      LOBYTE(v460) = 0;
      sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530]);
      v233 = v410;
      v234 = v456;
      sub_191CC72F8();
      if (v234)
      {

        (*(v409 + 8))(v231, v233);
        sub_191C48D60(v230, sub_191C47DA4);
        v165 = *(v457 + 8);
        v166 = v232;
LABEL_14:
        v235 = v162;
        goto LABEL_51;
      }

      v460 = v229;
      v462 = 1;
      sub_191C51054(0);
      sub_191C510A8();
      sub_191CC72F8();
      (*(v409 + 8))(v231, v233);
      sub_191C48D60(v230, sub_191C47DA4);
      (*(v457 + 8))(v232, v162);

    case 0xDu:
      v325 = *v143;
      LOBYTE(v460) = 13;
      sub_191C50838();
      v237 = v402;
      v239 = v458;
      v238 = v459;
      sub_191CC72B8();
      v460 = v325;
      sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_191C573DC(&qword_1EADCBD50);
      v240 = v405;
      sub_191CC7348();
      v241 = &v436;
LABEL_29:
      (*(*(v241 - 32) + 1))(v237, v240);
      (*(v457 + 8))(v239, v238);

    case 0xEu:
      v168 = *v143;
      v167 = *(v143 + 1);
      sub_191C50E00(0, v150);
      v170 = v169[12];
      v171 = v169[16];
      v172 = &v143[v169[20]];
      v173 = *v172;
      v451 = *(v172 + 1);
      v174 = &v143[v169[24]];
      v176 = *v174;
      v175 = v174[1];
      v444 = v176;
      v445 = v173;
      v449 = v175;
      v177 = &v143[v169[28]];
      v178 = *v177;
      v446 = v177[1];
      v179 = &v143[v169[32]];
      v181 = *v179;
      v180 = v179[1];
      v442 = v181;
      v443 = v178;
      v447 = v180;
      v182 = &v143[v169[36]];
      v184 = *v182;
      v183 = v182[1];
      v441 = v184;
      v448 = v183;
      v185 = &v143[v169[40]];
      v187 = *v185;
      v186 = v185[1];
      v440 = v187;
      v454 = v186;
      v188 = &v143[v169[44]];
      v190 = *v188;
      v189 = v188[1];
      v439 = v190;
      v455 = v189;
      v191 = v452;
      v192 = v453;
      (*(v452 + 32))(v450, &v143[v170], v453);
      v193 = v438;
      sub_191C627D4(&v143[v171], v438, sub_191C50804);
      LOBYTE(v460) = 14;
      sub_191C507B0();
      v194 = v426;
      v196 = v458;
      v195 = v459;
      sub_191CC72B8();
      LOBYTE(v460) = 0;
      v197 = v427;
      v198 = v456;
      sub_191CC7308();
      if (!v198)
      {

        LOBYTE(v460) = 1;
        sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8]);
        sub_191CC7348();
        LOBYTE(v460) = 2;
        sub_191CC72F8();
        LOBYTE(v460) = 3;
        sub_191CC72C8();

        LOBYTE(v460) = 4;
        sub_191CC72C8();

        LOBYTE(v460) = 5;
        sub_191CC72C8();

        LOBYTE(v460) = 6;
        sub_191CC72C8();

        LOBYTE(v460) = 7;
        sub_191CC72C8();

        LOBYTE(v460) = 8;
        sub_191CC72C8();

        LOBYTE(v460) = 9;
        sub_191CC72C8();

        (*(v425 + 8))(v426, v427);
        sub_191C48D60(v438, sub_191C50804);
        (*(v452 + 8))(v450, v453);
        v166 = v458;
        v165 = *(v457 + 8);
        goto LABEL_50;
      }

      (*(v425 + 8))(v194, v197);
      sub_191C48D60(v193, sub_191C50804);
      (*(v191 + 8))(v450, v192);
LABEL_37:
      result = (*(v457 + 8))(v196, v195);
      break;
    case 0xFu:
      v247 = *v143;
      v248 = *(v143 + 1);
      v249 = *(v143 + 3);
      v454 = *(v143 + 2);
      v455 = v249;
      v250 = *(v143 + 4);
      v251 = *(v143 + 5);
      v252 = *(v143 + 7);
      v452 = *(v143 + 6);
      v453 = v250;
      v253 = *(v143 + 8);
      LOBYTE(v460) = 15;
      sub_191C5075C();
      v254 = v420;
      v225 = v458;
      v224 = v459;
      sub_191CC72B8();
      LOBYTE(v460) = 0;
      v255 = v422;
      v256 = v456;
      sub_191CC7308();
      if (v256)
      {

        (*(v421 + 8))(v254, v255);
        return (*(v457 + 8))(v225, v224);
      }

      else
      {

        LOBYTE(v460) = 1;
        sub_191CC7308();

        LOBYTE(v460) = 2;
        sub_191CC7308();
        v361 = v458;
        v360 = v459;

        LOBYTE(v460) = 3;
        sub_191CC7308();

        v460 = v253;
        v462 = 4;
        sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_191C573DC(&qword_1EADCBD50);
        sub_191CC7348();
        (*(v421 + 8))(v254, v255);
        (*(v457 + 8))(v361, v360);
      }

    case 0x10u:
      v160 = *v143;
      v159 = *(v143 + 1);
      LOBYTE(v460) = 16;
      sub_191C50708();
      v161 = v416;
      v163 = v458;
      v162 = v459;
      sub_191CC72B8();
      v164 = v418;
      sub_191CC7308();

      (*(v417 + 8))(v161, v164);
      v165 = *(v457 + 8);
      v166 = v163;
      goto LABEL_14;
    default:
      v152 = *v143;
      v151 = *(v143 + 1);
      v153 = *(v143 + 2);
      v154 = v143[24];
      LOBYTE(v460) = 0;
      sub_191C50D58();
      v156 = v458;
      v155 = v459;
      sub_191CC72B8();
      LOBYTE(v460) = 0;
      v157 = v456;
      sub_191CC7368();
      if (v157)
      {

        (*(v382 + 8))(v138, v134);
        result = (*(v457 + 8))(v156, v155);
      }

      else
      {
        LOBYTE(v460) = 1;
        sub_191CC7308();

        LOBYTE(v460) = 2;
        sub_191CC7318();
        (*(v382 + 8))(v138, v134);
        v165 = *(v457 + 8);
        v166 = v156;
LABEL_50:
        v235 = v459;
LABEL_51:
        result = v165(v166, v235);
      }

      break;
  }

  return result;
}

unint64_t sub_191C50708()
{
  result = qword_1EADCBC18;
  if (!qword_1EADCBC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC18);
  }

  return result;
}

unint64_t sub_191C5075C()
{
  result = qword_1EADCBC28;
  if (!qword_1EADCBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC28);
  }

  return result;
}

unint64_t sub_191C507B0()
{
  result = qword_1EADCBC38;
  if (!qword_1EADCBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC38);
  }

  return result;
}

unint64_t sub_191C50838()
{
  result = qword_1EADCBC50;
  if (!qword_1EADCBC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC50);
  }

  return result;
}

unint64_t sub_191C5088C()
{
  result = qword_1EADCBC60;
  if (!qword_1EADCBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC60);
  }

  return result;
}

unint64_t sub_191C508E0()
{
  result = qword_1EADCBC70;
  if (!qword_1EADCBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC70);
  }

  return result;
}

unint64_t sub_191C50934()
{
  result = qword_1EADCBC80;
  if (!qword_1EADCBC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC80);
  }

  return result;
}

unint64_t sub_191C50988()
{
  result = qword_1EADCBC90;
  if (!qword_1EADCBC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBC90);
  }

  return result;
}

unint64_t sub_191C509DC()
{
  result = qword_1EADCBCA0;
  if (!qword_1EADCBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBCA0);
  }

  return result;
}

unint64_t sub_191C50A30()
{
  result = qword_1EADCBCB0;
  if (!qword_1EADCBCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBCB0);
  }

  return result;
}

unint64_t sub_191C50A84()
{
  result = qword_1EADCBCC0;
  if (!qword_1EADCBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBCC0);
  }

  return result;
}

unint64_t sub_191C50AD8()
{
  result = qword_1EADCBCD0;
  if (!qword_1EADCBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBCD0);
  }

  return result;
}

unint64_t sub_191C50C08()
{
  result = qword_1EADCBCF8;
  if (!qword_1EADCBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBCF8);
  }

  return result;
}

unint64_t sub_191C50C5C()
{
  result = qword_1EADCBD08;
  if (!qword_1EADCBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBD08);
  }

  return result;
}

unint64_t sub_191C50CB0()
{
  result = qword_1EADCBD18;
  if (!qword_1EADCBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBD18);
  }

  return result;
}

unint64_t sub_191C50D04()
{
  result = qword_1EADCBD28;
  if (!qword_1EADCBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBD28);
  }

  return result;
}

unint64_t sub_191C50D58()
{
  result = qword_1EADCBD38;
  if (!qword_1EADCBD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBD38);
  }

  return result;
}

unint64_t sub_191C50DAC()
{
  result = qword_1EADCBD48;
  if (!qword_1EADCBD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBD48);
  }

  return result;
}

void sub_191C50E00(uint64_t a1, uint64_t a2)
{
  if (!qword_1EADCBD58)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v2 = MEMORY[0x1E69E6158];
    sub_191CC61A8();
    sub_191C50804(255);
    sub_191C62404(255, &qword_1EADCBD60, v2, MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata, &qword_1EADCBD58);
    }
  }
}

void sub_191C50FB0()
{
  if (!qword_1EADCBD68)
  {
    sub_191C47DA4(255);
    sub_191C47DD8(255, &qword_1EADCBD70, sub_191C51054, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCBD68);
    }
  }
}

unint64_t sub_191C510A8()
{
  result = qword_1EADCBD80;
  if (!qword_1EADCBD80)
  {
    sub_191C51054(255);
    sub_191C46B48(&qword_1EADCBD88, type metadata accessor for HKCloudSync.Show.Log);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBD80);
  }

  return result;
}

void sub_191C51150()
{
  if (!qword_1EADCBD90)
  {
    sub_191CC6148();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EADCBD90);
    }
  }
}

unint64_t sub_191C511C4()
{
  result = qword_1EADCC860;
  if (!qword_1EADCC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC860);
  }

  return result;
}

void sub_191C51218(uint64_t a1, uint64_t a2)
{
  if (!qword_1EADCBD98)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_191C50BB4(255);
    sub_191CC6148();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EADCBD98);
    }
  }
}

unint64_t sub_191C51380()
{
  result = qword_1EADCBDB0;
  if (!qword_1EADCBDB0)
  {
    sub_191C5132C(255);
    sub_191C46B48(&qword_1EADCBDB8, type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBDB0);
  }

  return result;
}

void sub_191C51428(uint64_t a1, uint64_t a2)
{
  if (!qword_1EADCBDC0)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_191CC61A8();
    sub_191CC6148();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EADCBDC0);
    }
  }
}

void sub_191C5157C(uint64_t a1, uint64_t a2)
{
  if (!qword_1EADCBDC8)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_191CC6148();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EADCBDC8);
    }
  }
}

void sub_191C516B4(uint64_t a1, uint64_t a2)
{
  if (!qword_1EADCBDD0)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_191C62404(255, &qword_1EADCBD60, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_191C47DA4(255);
    sub_191CC61A8();
    sub_191C50BB4(255);
    sub_191C50B60(255);
    sub_191C50B2C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EADCBDD0);
    }
  }
}

void sub_191C51948(uint64_t a1, uint64_t a2)
{
  if (!qword_1EADCBDE0)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_191C47DA4(255);
    sub_191C2D540();
    sub_191C51B48();
    sub_191C51BDC();
    sub_191C47DD8(255, &qword_1EADCBE08, sub_191C51BDC, MEMORY[0x1E69E6720]);
    sub_191C51C94();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EADCBDE0);
    }
  }
}

void sub_191C51B48()
{
  if (!qword_1EADCBDE8)
  {
    type metadata accessor for HKCloudSync.Show.SyncIdentity(255);
    sub_191C46B48(&qword_1EADCBDF0, type metadata accessor for HKCloudSync.Show.SyncIdentity);
    v0 = sub_191CC6B88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCBDE8);
    }
  }
}

void sub_191C51BDC()
{
  if (!qword_1EADCBDF8)
  {
    sub_191C51C40();
    v0 = sub_191CC6648();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCBDF8);
    }
  }
}

unint64_t sub_191C51C40()
{
  result = qword_1EADCBE00;
  if (!qword_1EADCBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBE00);
  }

  return result;
}

void sub_191C51C94()
{
  if (!qword_1EADCBE10)
  {
    sub_191C62404(255, &qword_1EADCBE18, &type metadata for HKCloudSync.Show.SyncEntityVersion, MEMORY[0x1E69E62F8]);
    v0 = sub_191CC6DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCBE10);
    }
  }
}

unint64_t sub_191C51D10()
{
  result = qword_1EADCB3F0;
  if (!qword_1EADCB3F0)
  {
    sub_191C2D540();
    sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB3F0);
  }

  return result;
}

unint64_t sub_191C51DB8()
{
  result = qword_1EADCBE20;
  if (!qword_1EADCBE20)
  {
    sub_191C51B48();
    sub_191C46B48(&qword_1EADCBDA0, type metadata accessor for HKCloudSync.Show.SyncIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBE20);
  }

  return result;
}

unint64_t sub_191C51E60()
{
  result = qword_1EADCBE30;
  if (!qword_1EADCBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBE30);
  }

  return result;
}

unint64_t sub_191C51EB4()
{
  result = qword_1EADCBE38;
  if (!qword_1EADCBE38)
  {
    sub_191C62404(255, &qword_1EADCBE18, &type metadata for HKCloudSync.Show.SyncEntityVersion, MEMORY[0x1E69E62F8]);
    sub_191C51F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBE38);
  }

  return result;
}

unint64_t sub_191C51F50()
{
  result = qword_1EADCBE40;
  if (!qword_1EADCBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBE40);
  }

  return result;
}

uint64_t sub_191C51FA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_191C693C0(255, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_191C52030()
{
  if (!qword_1EADCBE58)
  {
    sub_191C47DA4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EADCBE58);
    }
  }
}

uint64_t HKCloudSync.Show.RecordDetail.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v448 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_191C62544(0, &qword_1EADCBE60, sub_191C50708, &_s4ShowV12RecordDetailO34SharedSummaryTransactionCodingKeysON, MEMORY[0x1E69E6F48]);
  v432 = v4;
  v419 = *(v4 - 8);
  v5 = *(v419 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v454 = &v398 - v7;
  sub_191C62544(0, &qword_1EADCBE68, sub_191C5075C, &_s4ShowV12RecordDetailO23SharedSummaryCodingKeysON, v3);
  v439 = v8;
  v437 = *(v8 - 8);
  v9 = *(v437 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v466 = &v398 - v11;
  sub_191C62544(0, &qword_1EADCBE70, sub_191C507B0, &_s4ShowV12RecordDetailO34SharedSummaryParticipantCodingKeysON, v3);
  v447 = v12;
  v421 = *(v12 - 8);
  v13 = *(v421 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v459 = &v398 - v15;
  sub_191C62544(0, &qword_1EADCBE78, sub_191C50838, &_s4ShowV12RecordDetailO36SharedSummaryAuthorizationCodingKeysON, v3);
  v433 = v16;
  v417 = *(v16 - 8);
  v17 = *(v417 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v455 = (&v398 - v19);
  sub_191C62544(0, &qword_1EADCBE80, sub_191C5088C, &_s4ShowV12RecordDetailO19MedicalIDCodingKeysON, v3);
  v435 = v20;
  v418 = *(v20 - 8);
  v21 = *(v418 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v465 = &v398 - v23;
  sub_191C62544(0, &qword_1EADCBE88, sub_191C508E0, &_s4ShowV12RecordDetailO24DeviceKeyValueCodingKeysON, v3);
  v434 = v24;
  v446 = *(v24 - 8);
  v25 = *(v446 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v462 = (&v398 - v27);
  sub_191C62544(0, &qword_1EADCBE90, sub_191C50934, &_s4ShowV12RecordDetailO23DeviceContextCodingKeysON, v3);
  v438 = v28;
  v436 = *(v28 - 8);
  v29 = *(v436 + 64);
  MEMORY[0x1EEE9AC00](v28, v30);
  v456 = &v398 - v31;
  sub_191C62544(0, &qword_1EADCBE98, sub_191C50988, &_s4ShowV12RecordDetailO38AttachmentReferenceTombstoneCodingKeysON, v3);
  v431 = v32;
  v416 = *(v32 - 8);
  v33 = *(v416 + 64);
  MEMORY[0x1EEE9AC00](v32, v34);
  v464 = &v398 - v35;
  sub_191C62544(0, &qword_1EADCBEA0, sub_191C509DC, &_s4ShowV12RecordDetailO29AttachmentReferenceCodingKeysON, v3);
  v441 = v36;
  v444 = *(v36 - 8);
  v37 = *(v444 + 64);
  MEMORY[0x1EEE9AC00](v36, v38);
  v458 = &v398 - v39;
  sub_191C62544(0, &qword_1EADCBEA8, sub_191C50A30, &_s4ShowV12RecordDetailO20AttachmentCodingKeysON, v3);
  v440 = v40;
  v443 = *(v40 - 8);
  v41 = *(v443 + 64);
  MEMORY[0x1EEE9AC00](v40, v42);
  v457 = &v398 - v43;
  sub_191C62544(0, &qword_1EADCBEB0, sub_191C50A84, &_s4ShowV12RecordDetailO30AttachmentManagementCodingKeysON, v3);
  v430 = v44;
  v415 = *(v44 - 8);
  v45 = *(v415 + 64);
  MEMORY[0x1EEE9AC00](v44, v46);
  v453 = &v398 - v47;
  sub_191C62544(0, &qword_1EADCBEB8, sub_191C50AD8, &_s4ShowV12RecordDetailO15StoreCodingKeysON, v3);
  v463 = v48;
  v422 = *(v48 - 8);
  v49 = *(v422 + 64);
  MEMORY[0x1EEE9AC00](v48, v50);
  v461 = &v398 - v51;
  sub_191C62544(0, &qword_1EADCBEC0, sub_191C50C08, &_s4ShowV12RecordDetailO18SequenceCodingKeysON, v3);
  v442 = v52;
  v420 = *(v52 - 8);
  v53 = *(v420 + 64);
  MEMORY[0x1EEE9AC00](v52, v54);
  v460 = &v398 - v55;
  sub_191C62544(0, &qword_1EADCBEC8, sub_191C50C5C, &_s4ShowV12RecordDetailO18RegistryCodingKeysON, v3);
  v429 = v56;
  v414 = *(v56 - 8);
  v57 = *(v414 + 64);
  MEMORY[0x1EEE9AC00](v56, v58);
  v452 = &v398 - v59;
  sub_191C62544(0, &qword_1EADCBED0, sub_191C50CB0, &_s4ShowV12RecordDetailO16MasterCodingKeysON, v3);
  v426 = v60;
  v413 = *(v60 - 8);
  v61 = *(v413 + 64);
  MEMORY[0x1EEE9AC00](v60, v62);
  v450 = &v398 - v63;
  sub_191C62544(0, &qword_1EADCBED8, sub_191C50D04, &_s4ShowV12RecordDetailO27DataUploadRequestCodingKeysON, v3);
  v428 = v64;
  v427 = *(v64 - 8);
  v65 = *(v427 + 64);
  MEMORY[0x1EEE9AC00](v64, v66);
  v451 = &v398 - v67;
  sub_191C62544(0, &qword_1EADCBEE0, sub_191C50D58, &_s4ShowV12RecordDetailO16ChangeCodingKeysON, v3);
  v425 = v68;
  v445 = *(v68 - 8);
  v69 = *(v445 + 64);
  MEMORY[0x1EEE9AC00](v68, v70);
  v449 = &v398 - v71;
  sub_191C62544(0, &qword_1EADCBEE8, sub_191C50DAC, &_s4ShowV12RecordDetailO10CodingKeysON, v3);
  v469 = v72;
  v467 = *(v72 - 8);
  v73 = *(v467 + 64);
  MEMORY[0x1EEE9AC00](v72, v74);
  v472 = &v398 - v75;
  v468 = type metadata accessor for HKCloudSync.Show.RecordDetail(0);
  v76 = *(*(v468 - 8) + 64);
  v78 = MEMORY[0x1EEE9AC00](v468, v77);
  v406 = (&v398 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = MEMORY[0x1EEE9AC00](v78, v80);
  v404 = (&v398 - v82);
  v84 = MEMORY[0x1EEE9AC00](v81, v83);
  v412 = (&v398 - v85);
  v87 = MEMORY[0x1EEE9AC00](v84, v86);
  v407 = (&v398 - v88);
  v90 = MEMORY[0x1EEE9AC00](v87, v89);
  v424 = &v398 - v91;
  v93 = MEMORY[0x1EEE9AC00](v90, v92);
  v408 = (&v398 - v94);
  v96 = MEMORY[0x1EEE9AC00](v93, v95);
  v411 = (&v398 - v97);
  v99 = MEMORY[0x1EEE9AC00](v96, v98);
  v405 = (&v398 - v100);
  v102 = MEMORY[0x1EEE9AC00](v99, v101);
  v409 = (&v398 - v103);
  v105 = MEMORY[0x1EEE9AC00](v102, v104);
  v410 = (&v398 - v106);
  v108 = MEMORY[0x1EEE9AC00](v105, v107);
  v423 = &v398 - v109;
  v111 = MEMORY[0x1EEE9AC00](v108, v110);
  v113 = (&v398 - v112);
  v115 = MEMORY[0x1EEE9AC00](v111, v114);
  v117 = &v398 - v116;
  v119 = MEMORY[0x1EEE9AC00](v115, v118);
  v121 = &v398 - v120;
  v123 = MEMORY[0x1EEE9AC00](v119, v122);
  v125 = &v398 - v124;
  v127 = MEMORY[0x1EEE9AC00](v123, v126);
  v129 = (&v398 - v128);
  MEMORY[0x1EEE9AC00](v127, v130);
  v132 = &v398 - v131;
  v133 = a1;
  v134 = a1[3];
  v135 = v133[4];
  v471 = v133;
  __swift_project_boxed_opaque_existential_0(v133, v134);
  sub_191C50DAC();
  v136 = v470;
  sub_191CC7528();
  if (!v136)
  {
    v398 = v129;
    v400 = v121;
    v399 = v117;
    v402 = v125;
    v138 = v464;
    v137 = v465;
    v401 = v113;
    v139 = v466;
    v470 = 0;
    v140 = v468;
    v403 = v132;
    v141 = v467;
    v142 = v469;
    v143 = v472;
    v144 = sub_191CC7298();
    v145 = (2 * *(v144 + 16)) | 1;
    v475 = v144;
    v476 = v144 + 32;
    v477 = 0;
    v478 = v145;
    v146 = sub_191C23F60();
    if (v477 == v478 >> 1)
    {
      switch(v146)
      {
        case 0:
          LOBYTE(v479) = 0;
          sub_191C50D58();
          v147 = v449;
          v148 = v470;
          sub_191CC71C8();
          if (v148)
          {
            goto LABEL_7;
          }

          LOBYTE(v479) = 0;
          v149 = v425;
          v150 = v141;
          v234 = sub_191CC7288();
          LOBYTE(v479) = 1;
          v466 = sub_191CC7228();
          v262 = v261;
          LOBYTE(v479) = 2;
          v263 = sub_191CC7238();
          v470 = 0;
          v274 = v263;
          (*(v445 + 8))(v147, v149);
          (*(v150 + 8))(v143, v142);
          swift_unknownObjectRelease();
          v275 = v398;
          v276 = v466;
          *v398 = v234;
          v275[1] = v276;
          v275[2] = v262;
          *(v275 + 24) = v274 & 1;
          swift_storeEnumTagMultiPayload();
          v277 = v275;
          goto LABEL_58;
        case 1:
          LOBYTE(v479) = 1;
          sub_191C50D04();
          v185 = v451;
          v186 = v470;
          sub_191CC71C8();
          if (v186)
          {
            goto LABEL_7;
          }

          LOBYTE(v479) = 0;
          sub_191C48DC0();
          v187 = v428;
          sub_191CC7268();
          v188 = v141;
          sub_191C52030();
          v466 = v235;
          v236 = *(v235 + 12);
          sub_191CC6148();
          v470 = 0;
          LOBYTE(v479) = 1;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530]);
          v465 = v236;
          v237 = v470;
          sub_191CC7218();
          if (v237)
          {
            (*(v427 + 8))(v185, v187);
            (*(v188 + 8))(v143, v142);
            swift_unknownObjectRelease();
            v238 = *(v402 + 1);

            return __swift_destroy_boxed_opaque_existential_0(v471);
          }

          v264 = v466;
          LOBYTE(v479) = 2;
          v265 = sub_191CC7258();
          v470 = 0;
          v278 = v265;
          v279 = *(v264 + 16);
          (*(v427 + 8))(v185, v187);
          (*(v188 + 8))(v143, v142);
          swift_unknownObjectRelease();
          v280 = v402;
          *&v402[v279] = v278;
          swift_storeEnumTagMultiPayload();
          v277 = v280;
LABEL_58:
          v213 = v403;
          sub_191C627D4(v277, v403, type metadata accessor for HKCloudSync.Show.RecordDetail);
          v214 = v448;
          goto LABEL_54;
        case 2:
          LOBYTE(v479) = 2;
          sub_191C50CB0();
          v176 = v450;
          v177 = v470;
          sub_191CC71C8();
          if (v177)
          {
            goto LABEL_7;
          }

          sub_191C693C0(0, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
          sub_191C51FA4(&qword_1EADCBF50);
          v178 = v426;
          sub_191CC7268();
          (*(v413 + 8))(v176, v178);
          (*(v141 + 8))(v143, v142);
          swift_unknownObjectRelease();
          v223 = v400;
          *v400 = v479;
          goto LABEL_36;
        case 3:
          LOBYTE(v479) = 3;
          sub_191C50C5C();
          v180 = v452;
          v181 = v470;
          sub_191CC71C8();
          if (v181)
          {
            goto LABEL_7;
          }

          sub_191C693C0(0, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
          LOBYTE(v474) = 0;
          sub_191C51FA4(&qword_1EADCBF50);
          v182 = v429;
          sub_191CC7268();
          v231 = v479;
          sub_191C51B48();
          v473 = 1;
          sub_191C576AC();
          sub_191CC7268();
          (*(v414 + 8))(v180, v182);
          (*(v141 + 8))(v143, v142);
          swift_unknownObjectRelease();
          v257 = v474;
          v258 = v399;
          *v399 = v231;
          v258[1] = v257;
          swift_storeEnumTagMultiPayload();
          v259 = v258;
          goto LABEL_52;
        case 4:
          LOBYTE(v479) = 4;
          sub_191C50C08();
          v167 = v460;
          v168 = v470;
          sub_191CC71C8();
          if (v168)
          {
            goto LABEL_7;
          }

          LOBYTE(v479) = 0;
          v169 = v442;
          v170 = sub_191CC7228();
          v225 = v167;
          v226 = v401;
          *v401 = v170;
          v226[1] = v227;
          v466 = v227;
          LOBYTE(v479) = 1;
          v228 = sub_191CC7238();
          v470 = 0;
          v250 = v228;
          sub_191C51948(0, v251);
          v464 = v252;
          v253 = v252[16];
          *(v226 + 16) = v250 & 1;
          sub_191CC6148();
          LOBYTE(v479) = 2;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530]);
          v465 = v253;
          v254 = v470;
          sub_191CC7218();
          if (v254)
          {
            (*(v420 + 8))(v225, v169);
            (*(v141 + 8))(v472, v142);

            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0(v471);
          }

          LOBYTE(v479) = 3;
          *(v401 + *(v464 + 80)) = sub_191CC7288();
          LOBYTE(v479) = 4;
          *(v401 + *(v464 + 96)) = sub_191CC7288();
          LOBYTE(v479) = 5;
          *(v401 + *(v464 + 112)) = sub_191CC7288();
          LOBYTE(v479) = 6;
          v294 = sub_191CC7228();
          v333 = (v401 + *(v464 + 128));
          v334 = *(v464 + 144);
          *v333 = v294;
          v333[1] = v335;
          sub_191C2D540();
          LOBYTE(v479) = 7;
          sub_191C57604();
          sub_191CC7268();
          v346 = *(v464 + 160);
          sub_191C51B48();
          LOBYTE(v479) = 8;
          sub_191C576AC();
          v470 = v346;
          sub_191CC7268();
          v354 = *(v464 + 176);
          LOBYTE(v479) = 9;
          v463 = v354;
          sub_191CC7268();
          v360 = *(v464 + 192);
          sub_191C51BDC();
          LOBYTE(v479) = 10;
          sub_191C57754(&qword_1EADCBF30, sub_191C577CC);
          v462 = v360;
          sub_191CC7268();
          v364 = *(v464 + 208);
          LOBYTE(v479) = 11;
          v461 = v364;
          sub_191CC7218();
          v366 = *(v464 + 224);
          sub_191C62404(0, &qword_1EADCBE18, &type metadata for HKCloudSync.Show.SyncEntityVersion, MEMORY[0x1E69E62F8]);
          LOBYTE(v479) = 12;
          sub_191C57820();
          sub_191CC7218();
          (*(v420 + 8))(v460, v442);
          (*(v141 + 8))(v472, v142);
          swift_unknownObjectRelease();
          v326 = v401;
          goto LABEL_67;
        case 5:
          LOBYTE(v479) = 5;
          sub_191C50AD8();
          v189 = v470;
          sub_191CC71C8();
          if (v189)
          {
            goto LABEL_7;
          }

          sub_191C516B4(0, v190);
          v192 = v191;
          v193 = swift_allocBox();
          v465 = v194;
          v466 = v193;
          LOBYTE(v479) = 0;
          *v194 = sub_191CC7238() & 1;
          LOBYTE(v479) = 1;
          v239 = sub_191CC71E8();
          v266 = v465;
          *(v465 + 8) = v239;
          *(v266 + 16) = v267;
          LOBYTE(v479) = 2;
          v268 = sub_191CC71E8();
          v281 = v465;
          *(v465 + 24) = v268;
          *(v281 + 32) = v282;
          LOBYTE(v479) = 3;
          v283 = sub_191CC7228();
          v298 = v192;
          v299 = v192[24];
          v300 = v465;
          *(v465 + 40) = v283;
          *(v300 + 48) = v301;
          sub_191CC6148();
          LOBYTE(v479) = 4;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530]);
          v464 = v299;
          sub_191CC7218();
          v319 = v298[28];
          v320 = sub_191CC61A8();
          LOBYTE(v479) = 5;
          sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8]);
          v460 = v319;
          v462 = v320;
          sub_191CC7268();
          LOBYTE(v479) = 6;
          v327 = sub_191CC7228();
          v336 = (v465 + v298[32]);
          v337 = v298[36];
          *v336 = v327;
          v336[1] = v338;
          v339 = v336;
          type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
          LOBYTE(v479) = 7;
          sub_191C46B48(&qword_1EADCBF08, type metadata accessor for HKCloudSync.Show.SyncIdentity);
          v459 = v337;
          sub_191CC7218();
          LOBYTE(v479) = 8;
          *(v465 + v298[40]) = sub_191CC7238() & 1;
          LOBYTE(v479) = 9;
          v347 = sub_191CC71E8();
          v361 = (v465 + v298[44]);
          v362 = v298[48];
          *v361 = v347;
          v361[1] = v363;
          v458 = v361;
          LOBYTE(v479) = 10;
          v457 = v362;
          sub_191CC7218();
          LOBYTE(v479) = 11;
          v365 = sub_191CC7228();
          v367 = (v465 + v298[52]);
          *v367 = v365;
          v367[1] = v368;
          v456 = v367;
          LOBYTE(v479) = 12;
          v369 = sub_191CC7228();
          v370 = (v465 + v298[56]);
          v371 = v298[60];
          *v370 = v369;
          v370[1] = v372;
          v455 = v370;
          type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
          LOBYTE(v479) = 13;
          sub_191C46B48(&qword_1EADCBF20, type metadata accessor for HKCloudSync.Show.ShardPredicate);
          v454 = v371;
          sub_191CC7218();
          LOBYTE(v479) = 14;
          v373 = sub_191CC71E8();
          v374 = (v465 + v298[64]);
          *v374 = v373;
          v374[1] = v375;
          LOBYTE(v479) = 15;
          v376 = sub_191CC71E8();
          v377 = (v465 + v298[68]);
          *v377 = v376;
          v377[1] = v378;
          v379 = v377;
          LOBYTE(v479) = 16;
          v380 = sub_191CC71E8();
          v470 = 0;
          v381 = (v465 + v298[72]);
          v382 = v298[76];
          *v381 = v380;
          v381[1] = v383;
          LOBYTE(v479) = 17;
          sub_191C46B48(&qword_1EADCBBF0, type metadata accessor for HKCloudSync.Show.RecordDetail);
          v453 = v382;
          v384 = v470;
          sub_191CC7218();
          v470 = v384;
          if (v384)
          {
            (*(v422 + 8))(v461, v463);
            (*(v141 + 8))(v472, v469);
            swift_unknownObjectRelease();
            v385 = v381[1];

            v386 = v379[1];

            v387 = v374[1];

            v388 = v465;
            sub_191C48D60(&v454[v465], sub_191C50B60);
            v389 = v455[1];

            v390 = *(v456 + 1);

            sub_191C48D60(&v457[v388], sub_191C50BB4);
            v391 = *(v458 + 1);

            sub_191C48D60(&v459[v388], sub_191C50BB4);
            v392 = v339[1];

            (*(*(v462 - 1) + 8))(&v460[v388]);
            sub_191C48D60(v388 + v464, sub_191C47DA4);
            v393 = *(v388 + 48);

            v394 = *(v388 + 32);

            v395 = *(v388 + 16);

            swift_deallocBox();
            return __swift_destroy_boxed_opaque_existential_0(v471);
          }

          v396 = v298[80];
          LOBYTE(v479) = 18;
          v452 = v396;
          sub_191CC7218();
          v470 = 0;
          v397 = v298[84];
          LOBYTE(v479) = 19;
          sub_191CC7218();
          (*(v422 + 8))(v461, v463);
          (*(v141 + 8))(v472, v469);
          swift_unknownObjectRelease();
          v213 = v403;
          *v403 = v466;
          swift_storeEnumTagMultiPayload();
          goto LABEL_53;
        case 6:
          LOBYTE(v479) = 6;
          sub_191C50A84();
          v198 = v453;
          v199 = v470;
          sub_191CC71C8();
          if (v199)
          {
            goto LABEL_7;
          }

          sub_191CC61A8();
          sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8]);
          v172 = v423;
          v200 = v430;
          sub_191CC7268();
          (*(v415 + 8))(v198, v200);
          (*(v141 + 8))(v143, v142);
          swift_unknownObjectRelease();
          goto LABEL_51;
        case 7:
          LOBYTE(v479) = 7;
          sub_191C50A30();
          v183 = v470;
          sub_191CC71C8();
          if (v183)
          {
            goto LABEL_7;
          }

          LOBYTE(v479) = 0;
          v184 = sub_191CC7228();
          v232 = v410;
          *v410 = v184;
          v232[1] = v233;
          v470 = v233;
          LOBYTE(v479) = 1;
          v232[2] = sub_191CC7228();
          v232[3] = v260;
          v466 = v260;
          LOBYTE(v479) = 2;
          v232[4] = sub_191CC7258();
          LOBYTE(v479) = 3;
          v232[5] = sub_191CC7228();
          v232[6] = v297;
          v465 = v297;
          LOBYTE(v479) = 4;
          v313 = sub_191CC7228();
          v315 = v314;
          sub_191C5157C(0, v314);
          v317 = *(v316 + 112);
          v318 = v410;
          v410[7] = v313;
          v318[8] = v315;
          sub_191CC6148();
          LOBYTE(v479) = 5;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530]);
          sub_191CC7268();
          (*(v443 + 8))(v457, v440);
          (*(v141 + 8))(v143, v142);
          swift_unknownObjectRelease();
          v326 = v410;
          goto LABEL_67;
        case 8:
          LOBYTE(v479) = 8;
          sub_191C509DC();
          v206 = v470;
          sub_191CC71C8();
          if (v206)
          {
            goto LABEL_7;
          }

          v207 = v142;
          LOBYTE(v479) = 0;
          v208 = sub_191CC7228();
          v243 = v409;
          *v409 = v208;
          v243[1] = v244;
          v466 = v244;
          LOBYTE(v479) = 1;
          v243[2] = sub_191CC7228();
          v243[3] = v271;
          v465 = v271;
          LOBYTE(v479) = 2;
          v243[4] = sub_191CC7228();
          v243[5] = v289;
          v464 = v289;
          LOBYTE(v479) = 3;
          v290 = sub_191CC7258();
          v470 = 0;
          v302 = v290;
          sub_191C51428(0, v303);
          v462 = v304;
          v305 = v304[24];
          v243[6] = v302;
          sub_191CC61A8();
          LOBYTE(v479) = 4;
          sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8]);
          v463 = v305;
          v306 = v470;
          sub_191CC7268();
          if (v306)
          {
            (*(v444 + 8))(v458, v441);
            (*(v141 + 8))(v143, v207);

            goto LABEL_55;
          }

          LOBYTE(v479) = 5;
          v321 = sub_191CC7258();
          v322 = v462[32];
          *(v409 + v462[28]) = v321;
          sub_191CC6148();
          LOBYTE(v479) = 6;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530]);
          sub_191CC7268();
          (*(v444 + 8))(v458, v441);
          (*(v141 + 8))(v143, v207);
          swift_unknownObjectRelease();
          v326 = v409;
          goto LABEL_67;
        case 9:
          LOBYTE(v479) = 9;
          sub_191C50988();
          v174 = v470;
          sub_191CC71C8();
          if (v174)
          {
            goto LABEL_7;
          }

          sub_191C5132C(0);
          sub_191C5755C();
          v175 = v431;
          sub_191CC7218();
          (*(v416 + 8))(v138, v175);
          (*(v141 + 8))(v143, v142);
          swift_unknownObjectRelease();
          v223 = v405;
          *v405 = v479;
          goto LABEL_36;
        case 10:
          LOBYTE(v479) = 10;
          sub_191C50934();
          v201 = v456;
          v202 = v470;
          sub_191CC71C8();
          if (v202)
          {
            goto LABEL_7;
          }

          v203 = v142;
          LOBYTE(v479) = 0;
          v204 = v438;
          v205 = sub_191CC7228();
          v240 = v411;
          *v411 = v205;
          v240[1] = v241;
          v466 = v241;
          LOBYTE(v479) = 1;
          v242 = v201;
          v240[2] = sub_191CC7228();
          v240[3] = v269;
          v465 = v269;
          LOBYTE(v479) = 2;
          v270 = sub_191CC7228();
          v470 = 0;
          v284 = v270;
          v286 = v285;
          sub_191C51218(0, v285);
          v462 = v287;
          v463 = v286;
          v464 = v287[20];
          v240[4] = v284;
          v240[5] = v286;
          type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
          LOBYTE(v479) = 3;
          sub_191C46B48(&qword_1EADCBF08, type metadata accessor for HKCloudSync.Show.SyncIdentity);
          v288 = v470;
          sub_191CC7218();
          if (v288)
          {
            (*(v436 + 8))(v242, v204);
            (*(v141 + 8))(v143, v203);

LABEL_55:

            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0(v471);
          }

          v470 = v462[24];
          sub_191CC6148();
          LOBYTE(v479) = 4;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530]);
          sub_191CC7268();
          (*(v436 + 8))(v456, v438);
          (*(v141 + 8))(v143, v203);
          swift_unknownObjectRelease();
          v326 = v411;
LABEL_67:
          swift_storeEnumTagMultiPayload();
          v340 = v326;
          v213 = v403;
          sub_191C627D4(v340, v403, type metadata accessor for HKCloudSync.Show.RecordDetail);
          goto LABEL_53;
        case 11:
          LOBYTE(v479) = 11;
          sub_191C508E0();
          v164 = v470;
          sub_191CC71C8();
          if (v164)
          {
            goto LABEL_7;
          }

          LOBYTE(v479) = 0;
          v165 = v434;
          v166 = sub_191CC7228();
          v223 = v408;
          *v408 = v166;
          v223[1] = v224;
          v470 = v224;
          LOBYTE(v479) = 1;
          sub_191C57508();
          sub_191CC7268();
          sub_191C51150();
          v248 = *(v247 + 64);
          sub_191CC6148();
          LOBYTE(v479) = 2;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530]);
          v249 = v462;
          sub_191CC7268();
          (*(v446 + 8))(v249, v165);
          (*(v141 + 8))(v143, v142);
          swift_unknownObjectRelease();
          goto LABEL_36;
        case 12:
          LOBYTE(v479) = 12;
          sub_191C5088C();
          v171 = v470;
          sub_191CC71C8();
          if (v171)
          {
            goto LABEL_7;
          }

          sub_191CC6148();
          LOBYTE(v479) = 0;
          sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530]);
          v172 = v424;
          v173 = v435;
          sub_191CC7218();
          sub_191C50FB0();
          v230 = *(v229 + 48);
          sub_191C51054(0);
          LOBYTE(v479) = 1;
          sub_191C57460();
          sub_191CC7218();
          (*(v418 + 8))(v137, v173);
          (*(v141 + 8))(v143, v142);
          swift_unknownObjectRelease();
LABEL_51:
          swift_storeEnumTagMultiPayload();
          v259 = v172;
          goto LABEL_52;
        case 13:
          LOBYTE(v479) = 13;
          sub_191C50838();
          v195 = v455;
          v196 = v470;
          sub_191CC71C8();
          if (v196)
          {
            goto LABEL_7;
          }

          sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          sub_191C573DC(&qword_1EADCBEF0);
          v197 = v433;
          sub_191CC7268();
          (*(v417 + 8))(v195, v197);
          (*(v141 + 8))(v143, v142);
          swift_unknownObjectRelease();
          v223 = v407;
          *v407 = v479;
          goto LABEL_36;
        case 14:
          LOBYTE(v479) = 14;
          sub_191C507B0();
          v161 = v459;
          v162 = v470;
          sub_191CC71C8();
          if (v162)
          {
            goto LABEL_7;
          }

          LOBYTE(v479) = 0;
          v163 = sub_191CC7228();
          v470 = 0;
          v215 = v163;
          v217 = v216;
          sub_191C50E00(0, v216);
          v465 = v218;
          v219 = *(v218 + 12);
          v220 = v412;
          *v412 = v215;
          v220[1] = v217;
          v466 = v217;
          v221 = sub_191CC61A8();
          LOBYTE(v479) = 1;
          sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8]);
          v464 = v219;
          v222 = v470;
          sub_191CC7268();
          if (v222)
          {
            (*(v421 + 8))(v161, v447);
            (*(v141 + 8))(v472, v469);

            goto LABEL_8;
          }

          v245 = v465;
          v246 = *(v465 + 64);
          LOBYTE(v479) = 2;
          v463 = v246;
          sub_191CC7218();
          LOBYTE(v479) = 3;
          v272 = sub_191CC71E8();
          v291 = (v412 + v245[20]);
          *v291 = v272;
          v291[1] = v292;
          v462 = v292;
          LOBYTE(v479) = 4;
          v293 = sub_191CC71E8();
          v307 = (v412 + v245[24]);
          *v307 = v293;
          v307[1] = v308;
          LOBYTE(v479) = 5;
          v309 = sub_191CC71E8();
          v323 = (v412 + v245[28]);
          *v323 = v309;
          v323[1] = v324;
          LOBYTE(v479) = 6;
          v325 = sub_191CC71E8();
          v470 = 0;
          v328 = (v412 + v245[32]);
          *v328 = v325;
          v328[1] = v329;
          LOBYTE(v479) = 7;
          v330 = v470;
          v331 = sub_191CC71E8();
          v461 = v332;
          v470 = v330;
          if (v330)
          {
            (*(v421 + 8))(v459, v447);
            (*(v141 + 8))(v472, v469);
            swift_unknownObjectRelease();
LABEL_73:

            v353 = v412;
            sub_191C48D60(v412 + v463, sub_191C50804);
            (*(*(v221 - 8) + 8))(&v353[v464], v221);

            return __swift_destroy_boxed_opaque_existential_0(v471);
          }

          v341 = (v412 + v245[36]);
          v342 = v461;
          *v341 = v331;
          v341[1] = v342;
          LOBYTE(v479) = 8;
          v343 = v470;
          v344 = sub_191CC71E8();
          v460 = v345;
          v470 = v343;
          if (v343)
          {
            (*(v421 + 8))(v459, v447);
            (*(v141 + 8))(v472, v469);
            swift_unknownObjectRelease();
LABEL_72:

            goto LABEL_73;
          }

          v348 = (v412 + v245[40]);
          v349 = v460;
          *v348 = v344;
          v348[1] = v349;
          LOBYTE(v479) = 9;
          v350 = v470;
          v351 = sub_191CC71E8();
          v458 = v352;
          v470 = v350;
          if (v350)
          {
            (*(v421 + 8))(v459, v447);
            (*(v141 + 8))(v472, v469);
            swift_unknownObjectRelease();

            goto LABEL_72;
          }

          v355 = v351;
          v356 = v245[44];
          v357 = v412;
          v358 = (v412 + v356);
          (*(v421 + 8))(v459, v447);
          (*(v141 + 8))(v472, v469);
          swift_unknownObjectRelease();
          v359 = v458;
          *v358 = v355;
          v358[1] = v359;
          swift_storeEnumTagMultiPayload();
          v213 = v403;
          sub_191C627D4(v357, v403, type metadata accessor for HKCloudSync.Show.RecordDetail);
LABEL_53:
          v214 = v448;
LABEL_54:
          sub_191C627D4(v213, v214, type metadata accessor for HKCloudSync.Show.RecordDetail);
          break;
        case 15:
          LOBYTE(v479) = 15;
          sub_191C5075C();
          v179 = v470;
          sub_191CC71C8();
          if (v179)
          {
            goto LABEL_7;
          }

          LOBYTE(v479) = 0;
          v465 = sub_191CC7228();
          v470 = v209;
          LOBYTE(v479) = 1;
          v464 = sub_191CC7228();
          v256 = v255;
          LOBYTE(v479) = 2;
          v462 = sub_191CC7228();
          v463 = v273;
          LOBYTE(v479) = 3;
          v461 = sub_191CC7228();
          v296 = v295;
          sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          LOBYTE(v474) = 4;
          sub_191C573DC(&qword_1EADCBEF0);
          sub_191CC7268();
          (*(v437 + 8))(v139, v439);
          (*(v141 + 8))(v472, v469);
          swift_unknownObjectRelease();
          v310 = v479;
          v223 = v404;
          v311 = v470;
          *v404 = v465;
          v223[1] = v311;
          v223[2] = v464;
          v223[3] = v256;
          v312 = v463;
          v223[4] = v462;
          v223[5] = v312;
          v223[6] = v461;
          v223[7] = v296;
          v223[8] = v310;
LABEL_36:
          swift_storeEnumTagMultiPayload();
          v259 = v223;
LABEL_52:
          v213 = v403;
          sub_191C627D4(v259, v403, type metadata accessor for HKCloudSync.Show.RecordDetail);
          goto LABEL_53;
        case 16:
          LOBYTE(v479) = 16;
          sub_191C50708();
          v157 = v454;
          v158 = v470;
          sub_191CC71C8();
          if (v158)
          {
            goto LABEL_7;
          }

          v159 = v432;
          v160 = sub_191CC7228();
          v211 = v210;
          (*(v419 + 8))(v157, v159);
          (*(v141 + 8))(v143, v142);
          swift_unknownObjectRelease();
          v212 = v406;
          *v406 = v160;
          *(v212 + 8) = v211;
          swift_storeEnumTagMultiPayload();
          v213 = v403;
          sub_191C627D4(v212, v403, type metadata accessor for HKCloudSync.Show.RecordDetail);
          v214 = v448;
          goto LABEL_54;
        default:
          goto LABEL_6;
      }
    }

    else
    {
LABEL_6:
      v151 = sub_191CC7028();
      swift_allocError();
      v153 = v152;
      sub_191C2CAB4();
      v155 = *(v154 + 48);
      *v153 = v140;
      sub_191CC71D8();
      sub_191CC7008();
      (*(*(v151 - 8) + 104))(v153, *MEMORY[0x1E69E6AF8], v151);
      swift_willThrow();
LABEL_7:
      (*(v141 + 8))(v143, v142);
LABEL_8:
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v471);
}

uint64_t sub_191C573DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_191C62404(255, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_191C57460()
{
  result = qword_1EADCBEF8;
  if (!qword_1EADCBEF8)
  {
    sub_191C51054(255);
    sub_191C46B48(&qword_1EADCBF00, type metadata accessor for HKCloudSync.Show.Log);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBEF8);
  }

  return result;
}

unint64_t sub_191C57508()
{
  result = qword_1EADCC870;
  if (!qword_1EADCC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC870);
  }

  return result;
}

unint64_t sub_191C5755C()
{
  result = qword_1EADCBF10;
  if (!qword_1EADCBF10)
  {
    sub_191C5132C(255);
    sub_191C46B48(&qword_1EADCBF18, type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF10);
  }

  return result;
}

unint64_t sub_191C57604()
{
  result = qword_1EADCB450;
  if (!qword_1EADCB450)
  {
    sub_191C2D540();
    sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB450);
  }

  return result;
}

unint64_t sub_191C576AC()
{
  result = qword_1EADCBF28;
  if (!qword_1EADCBF28)
  {
    sub_191C51B48();
    sub_191C46B48(&qword_1EADCBF08, type metadata accessor for HKCloudSync.Show.SyncIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF28);
  }

  return result;
}

uint64_t sub_191C57754(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_191C51BDC();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_191C577CC()
{
  result = qword_1EADCBF38;
  if (!qword_1EADCBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF38);
  }

  return result;
}

unint64_t sub_191C57820()
{
  result = qword_1EADCBF40;
  if (!qword_1EADCBF40)
  {
    sub_191C62404(255, &qword_1EADCBE18, &type metadata for HKCloudSync.Show.SyncEntityVersion, MEMORY[0x1E69E62F8]);
    sub_191C578BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF40);
  }

  return result;
}

unint64_t sub_191C578BC()
{
  result = qword_1EADCBF48;
  if (!qword_1EADCBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF48);
  }

  return result;
}

uint64_t HKCloudSync.Show.SyncIdentity.instanceDiscriminator.getter()
{
  v1 = (v0 + *(type metadata accessor for HKCloudSync.Show.SyncIdentity(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HKCloudSync.Show.SyncIdentity.instanceDiscriminator.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HKCloudSync.Show.SyncIdentity(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.SyncIdentity.init(hardwareIdentifier:databaseIdentifier:instanceDiscriminator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_191CC61A8();
  v11 = *(*(v10 - 8) + 32);
  v11(a5, a1, v10);
  v12 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  result = (v11)(a5 + *(v12 + 20), a2, v10);
  v14 = (a5 + *(v12 + 24));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t static HKCloudSync.Show.SyncIdentity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_191CC6178() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  v5 = *(v4 + 20);
  if ((sub_191CC6178() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_191CC73E8();
}

unint64_t sub_191C57C38()
{
  v1 = 0xD000000000000015;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_191C57C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C68C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C57CB4(uint64_t a1)
{
  v2 = sub_191C57F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C57CF0(uint64_t a1)
{
  v2 = sub_191C57F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.SyncIdentity.encode(to:)(void *a1)
{
  v3 = v1;
  sub_191C62544(0, &qword_1EADCBF58, sub_191C57F54, &_s4ShowV12SyncIdentityV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C57F54();
  sub_191CC7548();
  v22 = 0;
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8]);
  sub_191CC7348();
  if (!v2)
  {
    v13 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
    v14 = *(v13 + 20);
    v21 = 1;
    sub_191CC7348();
    v15 = (v3 + *(v13 + 24));
    v16 = *v15;
    v17 = v15[1];
    v20 = 2;
    sub_191CC7308();
  }

  return (*(v7 + 8))(v11, v6);
}

unint64_t sub_191C57F54()
{
  result = qword_1EADCBF60;
  if (!qword_1EADCBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCBF60);
  }

  return result;
}

uint64_t HKCloudSync.Show.SyncIdentity.hash(into:)()
{
  v1 = v0;
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  sub_191CC66A8();
  v2 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  v3 = v0 + *(v2 + 20);
  sub_191CC66A8();
  v4 = (v1 + *(v2 + 24));
  v5 = *v4;
  v6 = v4[1];

  return sub_191CC67E8();
}

uint64_t HKCloudSync.Show.SyncIdentity.hashValue.getter()
{
  v1 = v0;
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  sub_191CC66A8();
  v2 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  v3 = v0 + *(v2 + 20);
  sub_191CC66A8();
  v4 = (v1 + *(v2 + 24));
  v5 = *v4;
  v6 = v4[1];
  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t HKCloudSync.Show.SyncIdentity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v39 = sub_191CC61A8();
  v36 = *(v39 - 8);
  v3 = *(v36 + 64);
  v5 = MEMORY[0x1EEE9AC00](v39, v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v38 = &v33 - v9;
  sub_191C62544(0, &qword_1EADCBF68, sub_191C57F54, &_s4ShowV12SyncIdentityV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v41 = v10;
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C57F54();
  v40 = v14;
  v21 = v42;
  sub_191CC7528();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v37;
  v42 = a1;
  v33 = v15;
  v34 = v19;
  v45 = 0;
  sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8]);
  v23 = v38;
  v24 = v39;
  sub_191CC7268();
  v38 = *(v36 + 32);
  (v38)(v34, v23, v24);
  v44 = 1;
  v25 = v7;
  sub_191CC7268();
  v26 = v34;
  (v38)(&v34[*(v33 + 20)], v25, v24);
  v43 = 2;
  v27 = v40;
  v28 = sub_191CC7228();
  v30 = v29;
  (*(v22 + 8))(v27, v41);
  v31 = (v26 + *(v33 + 24));
  *v31 = v28;
  v31[1] = v30;
  sub_191C622F4(v26, v35, type metadata accessor for HKCloudSync.Show.SyncIdentity);
  __swift_destroy_boxed_opaque_existential_0(v42);
  return sub_191C48D60(v26, type metadata accessor for HKCloudSync.Show.SyncIdentity);
}

uint64_t sub_191C585E8(uint64_t a1)
{
  v3 = v1;
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  sub_191CC66A8();
  v4 = v1 + *(a1 + 20);
  sub_191CC66A8();
  v5 = (v3 + *(a1 + 24));
  v6 = *v5;
  v7 = v5[1];
  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t sub_191C586B8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  sub_191CC66A8();
  v5 = v2 + *(a2 + 20);
  sub_191CC66A8();
  v6 = (v4 + *(a2 + 24));
  v7 = *v6;
  v8 = v6[1];

  return sub_191CC67E8();
}

uint64_t sub_191C5877C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  sub_191CC66A8();
  v5 = v2 + *(a2 + 20);
  sub_191CC66A8();
  v6 = (v4 + *(a2 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t sub_191C58848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_191CC6178() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  if ((sub_191CC6178() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_191CC73E8();
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.schemaIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.schemaIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.init(entityIdentifier:schemaIdentifier:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_191C58A38()
{
  v1 = 1701667182;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_191C58A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C68D74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C58ABC(uint64_t a1)
{
  v2 = sub_191C61BB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C58AF8(uint64_t a1)
{
  v2 = sub_191C61BB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBF70, sub_191C61BB4, &_s4ShowV20SyncEntityIdentifierV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = v16 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v16[3] = v1[2];
  v16[4] = v10;
  v16[1] = v1[4];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C61BB4();
  sub_191CC7548();
  v19 = 0;
  v14 = v16[5];
  sub_191CC7338();
  if (!v14)
  {
    v18 = 1;
    sub_191CC72C8();
    v17 = 2;
    sub_191CC7308();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.hash(into:)()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  MEMORY[0x193B02C70](*v0);
  sub_191CC74E8();
  if (v3)
  {
    sub_191CC67E8();
  }

  return sub_191CC67E8();
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_191CC74C8();
  MEMORY[0x193B02C70](v2);
  sub_191CC74E8();
  if (v4)
  {
    sub_191CC67E8();
  }

  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t HKCloudSync.Show.SyncEntityIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  sub_191C62544(0, &qword_1EADCBF80, sub_191C61BB4, &_s4ShowV20SyncEntityIdentifierV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C61BB4();
  sub_191CC7528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v12 = v6;
    v13 = v28;
    v31 = 0;
    v14 = sub_191CC7258();
    v30 = 1;
    v15 = sub_191CC71E8();
    v17 = v16;
    v27 = v15;
    v29 = 2;
    v18 = sub_191CC7228();
    v21 = v20;
    v22 = *(v12 + 8);
    v26 = v18;
    v22(v10, v5);
    v23 = v26;
    v24 = v27;
    *v13 = v14;
    v13[1] = v24;
    v13[2] = v17;
    v13[3] = v23;
    v13[4] = v21;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_191C590D8()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_191CC74C8();
  MEMORY[0x193B02C70](v2);
  sub_191CC74E8();
  if (v4)
  {
    sub_191CC67E8();
  }

  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t sub_191C59174()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  MEMORY[0x193B02C70](*v0);
  sub_191CC74E8();
  if (v3)
  {
    sub_191CC67E8();
  }

  return sub_191CC67E8();
}

uint64_t sub_191C59204()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_191CC74C8();
  MEMORY[0x193B02C70](v2);
  sub_191CC74E8();
  if (v4)
  {
    sub_191CC67E8();
  }

  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t HKCloudSync.Show.SyncEntityVersion.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

__n128 HKCloudSync.Show.SyncEntityVersion.identifier.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);

  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  *(v1 + 32) = v3;
  return result;
}

__n128 HKCloudSync.Show.SyncEntityVersion.init(identifier:currentVersion:minimumVersion:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 32);
  result = *a1;
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 32) = v4;
  *(a4 + 40) = a2;
  *(a4 + 44) = a3;
  return result;
}

uint64_t sub_191C593CC()
{
  v1 = 0x56746E6572727563;
  if (*v0 != 1)
  {
    v1 = 0x566D756D696E696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_191C59444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C68EA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C5946C(uint64_t a1)
{
  v2 = sub_191C61C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C594A8(uint64_t a1)
{
  v2 = sub_191C61C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.SyncEntityVersion.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBF88, sub_191C61C08, &_s4ShowV17SyncEntityVersionV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = v15 - v8;
  v10 = *(v1 + 4);
  LODWORD(v8) = *(v1 + 11);
  v22 = *(v1 + 10);
  v15[3] = v8;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C61C08();
  v12 = *v1;
  v16 = v1[1];
  v17 = v12;

  sub_191CC7548();
  v20 = v16;
  v19 = v17;
  v21 = v10;
  v23 = 0;
  sub_191C51E60();
  v13 = v18;
  sub_191CC7348();
  if (v13)
  {
  }

  else
  {

    LOBYTE(v19) = 1;
    sub_191CC7358();
    LOBYTE(v19) = 2;
    sub_191CC7358();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t HKCloudSync.Show.SyncEntityVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_191C62544(0, &qword_1EADCBF98, sub_191C61C08, &_s4ShowV17SyncEntityVersionV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C61C08();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v6;
  v13 = v21;
  v25 = 0;
  sub_191C577CC();
  sub_191CC7268();
  v19 = v22;
  v20 = v23;
  v14 = v24;
  LOBYTE(v22) = 1;
  v15 = v12;
  LODWORD(v12) = sub_191CC7278();
  LOBYTE(v22) = 2;
  v17 = sub_191CC7278();
  (*(v15 + 8))(v10, v5);
  v18 = v20;
  *v13 = v19;
  *(v13 + 16) = v18;
  *(v13 + 32) = v14;
  *(v13 + 40) = v12;
  *(v13 + 44) = v17;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HKCloudSync.Show.ShardPredicate.type.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HKCloudSync.Show.ShardPredicate.type.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.ShardPredicate.init(type:startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
  v11 = *(v10 + 20);
  v12 = sub_191CC6148();
  v13 = *(*(v12 - 8) + 56);
  v13(&a5[v11], 1, 1, v12);
  v14 = *(v10 + 24);
  v13(&a5[v14], 1, 1, v12);
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_191C47F88(a3, &a5[v11], sub_191C47DA4);
  return sub_191C47F88(a4, &a5[v14], sub_191C47DA4);
}

uint64_t sub_191C59D30()
{
  v1 = 0x7461447472617473;
  if (*v0 != 1)
  {
    v1 = 0x65746144646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_191C59D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C68FD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C59DB0(uint64_t a1)
{
  v2 = sub_191C621F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C59DEC(uint64_t a1)
{
  v2 = sub_191C621F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.ShardPredicate.encode(to:)(void *a1)
{
  v3 = v1;
  sub_191C62544(0, &qword_1EADCBFA0, sub_191C621F8, &_s4ShowV14ShardPredicateV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C621F8();
  sub_191CC7548();
  v13 = *v3;
  v14 = v3[1];
  v22 = 0;
  sub_191CC7308();
  if (!v2)
  {
    v15 = type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
    v16 = *(v15 + 20);
    v21 = 1;
    sub_191CC6148();
    sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530]);
    sub_191CC72F8();
    v17 = *(v15 + 24);
    v20 = 2;
    sub_191CC72F8();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t HKCloudSync.Show.ShardPredicate.hash(into:)()
{
  v1 = v0;
  v2 = sub_191CC6148();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C47DA4(0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v22 - v15;
  v17 = *v1;
  v18 = v1[1];
  sub_191CC67E8();
  v19 = type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
  sub_191C622F4(v1 + *(v19 + 20), v16, sub_191C47DA4);
  v20 = *(v3 + 48);
  if (v20(v16, 1, v2) == 1)
  {
    sub_191CC74E8();
  }

  else
  {
    (*(v3 + 32))(v7, v16, v2);
    sub_191CC74E8();
    sub_191C46B48(&qword_1EADCBFB0, MEMORY[0x1E6969530]);
    sub_191CC66A8();
    (*(v3 + 8))(v7, v2);
  }

  sub_191C622F4(v1 + *(v19 + 24), v13, sub_191C47DA4);
  if (v20(v13, 1, v2) == 1)
  {
    return sub_191CC74E8();
  }

  (*(v3 + 32))(v7, v13, v2);
  sub_191CC74E8();
  sub_191C46B48(&qword_1EADCBFB0, MEMORY[0x1E6969530]);
  sub_191CC66A8();
  return (*(v3 + 8))(v7, v2);
}

uint64_t HKCloudSync.Show.ShardPredicate.hashValue.getter()
{
  sub_191CC74C8();
  HKCloudSync.Show.ShardPredicate.hash(into:)();
  return sub_191CC7508();
}

uint64_t HKCloudSync.Show.ShardPredicate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_191C47DA4(0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - v9;
  sub_191C62544(0, &qword_1EADCBFB8, sub_191C621F8, &_s4ShowV14ShardPredicateV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v34 - v14;
  v16 = type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = (&v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v17 + 28);
  v23 = sub_191CC6148();
  v24 = *(*(v23 - 8) + 56);
  v41 = v22;
  v24(v21 + v22, 1, 1, v23);
  v40 = *(v17 + 32);
  v24(v21 + v40, 1, 1, v23);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C621F8();
  v26 = v39;
  sub_191CC7528();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_191C48D60(v21 + v41, sub_191C47DA4);
    v33 = v21 + v40;
    v32 = sub_191C47DA4;
  }

  else
  {
    v27 = a1;
    v44 = 0;
    v28 = v37;
    *v21 = sub_191CC7228();
    v21[1] = v30;
    v39 = v30;
    v43 = 1;
    v34 = sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530]);
    sub_191CC7218();
    sub_191C47F88(v10, v21 + v41, sub_191C47DA4);
    v42 = 2;
    v31 = v36;
    sub_191CC7218();
    (*(v28 + 8))(v15, v38);
    sub_191C47F88(v31, v21 + v40, sub_191C47DA4);
    sub_191C622F4(v21, v35, type metadata accessor for HKCloudSync.Show.ShardPredicate);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v32 = type metadata accessor for HKCloudSync.Show.ShardPredicate;
    v33 = v21;
  }

  return sub_191C48D60(v33, v32);
}

uint64_t sub_191C5A830()
{
  sub_191CC74C8();
  HKCloudSync.Show.ShardPredicate.hash(into:)();
  return sub_191CC7508();
}

uint64_t sub_191C5A874()
{
  sub_191CC74C8();
  HKCloudSync.Show.ShardPredicate.hash(into:)();
  return sub_191CC7508();
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.schemaIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.schemaIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0) + 24);
  v4 = sub_191CC6148();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.creationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0) + 24);
  v4 = sub_191CC6148();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.init(identifier:schemaIdentifier:creationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_191CC61A8();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0);
  v12 = (a5 + *(v11 + 20));
  *v12 = a2;
  v12[1] = a3;
  v13 = *(v11 + 24);
  v14 = sub_191CC6148();
  v15 = *(*(v14 - 8) + 32);

  return v15(a5 + v13, a4, v14);
}

uint64_t sub_191C5ABC0()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_191C5AC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C690F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C5AC54(uint64_t a1)
{
  v2 = sub_191C6224C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C5AC90(uint64_t a1)
{
  v2 = sub_191C6224C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.encode(to:)(void *a1)
{
  v3 = v1;
  sub_191C62544(0, &qword_1EADCBFC0, sub_191C6224C, &_s4ShowV28AttachmentReferenceTombstoneV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C6224C();
  sub_191CC7548();
  v22 = 0;
  sub_191CC61A8();
  sub_191C46B48(&qword_1EADCAD80, MEMORY[0x1E69695A8]);
  sub_191CC7348();
  if (!v2)
  {
    v13 = type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0);
    v14 = (v3 + *(v13 + 20));
    v15 = *v14;
    v16 = v14[1];
    v21 = 1;
    sub_191CC7308();
    v17 = *(v13 + 24);
    v20 = 2;
    sub_191CC6148();
    sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530]);
    sub_191CC7348();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t HKCloudSync.Show.AttachmentReferenceTombstone.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v35 = sub_191CC6148();
  v32 = *(v35 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35, v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_191CC61A8();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v38 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C62544(0, &qword_1EADCBFD0, sub_191C6224C, &_s4ShowV28AttachmentReferenceTombstoneV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v39 = v10;
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C6224C();
  v21 = v40;
  sub_191CC7528();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v37;
  v40 = v15;
  v43 = 0;
  sub_191C46B48(&qword_1EADCAD70, MEMORY[0x1E69695A8]);
  sub_191CC7268();
  v23 = *(v36 + 32);
  v31 = v19;
  v23(v19, v38, v6);
  v42 = 1;
  v24 = sub_191CC7228();
  v38 = v6;
  v25 = &v31[*(v40 + 20)];
  *v25 = v24;
  v25[1] = v26;
  v41 = 2;
  sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530]);
  v27 = v34;
  v28 = v35;
  sub_191CC7268();
  (*(v22 + 8))(v14, v39);
  v29 = v31;
  (*(v32 + 32))(&v31[*(v40 + 24)], v27, v28);
  sub_191C622F4(v29, v33, type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_191C48D60(v29, type metadata accessor for HKCloudSync.Show.AttachmentReferenceTombstone);
}

uint64_t sub_191C5B498@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_191C5B550(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) + 20);
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 40);

  return v8(v3 + v6, a1, v7);
}

uint64_t HKCloudSync.Show.Log.init(event:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for HKCloudSync.Show.Log(0) + 20);
  v7 = sub_191CC6148();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_191C5B6A4()
{
  if (*v0)
  {
    result = 0x6D617473656D6974;
  }

  else
  {
    result = 0x746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_191C5B6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v6 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_191C5B7C0(uint64_t a1)
{
  v2 = sub_191C622A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C5B7FC(uint64_t a1)
{
  v2 = sub_191C622A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.Log.encode(to:)(void *a1)
{
  v3 = v1;
  sub_191C62544(0, &qword_1EADCBFD8, sub_191C622A0, &_s4ShowV3LogV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C622A0();
  sub_191CC7548();
  v13 = *v3;
  v14 = v3[1];
  v19 = 0;
  sub_191CC7308();
  if (!v2)
  {
    v15 = *(type metadata accessor for HKCloudSync.Show.Log(0) + 20);
    v18 = 1;
    sub_191CC6148();
    sub_191C46B48(&qword_1EADCB310, MEMORY[0x1E6969530]);
    sub_191CC7348();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t HKCloudSync.Show.Log.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_191CC6148();
  v26 = *(v29 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v29, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C62544(0, &qword_1EADCBFE8, sub_191C622A0, &_s4ShowV3LogV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v30 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v25 - v10;
  v12 = type metadata accessor for HKCloudSync.Show.Log(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C622A0();
  v18 = v31;
  sub_191CC7528();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = a1;
  v20 = v28;
  v19 = v29;
  v33 = 0;
  *v16 = sub_191CC7228();
  v16[1] = v21;
  v25[0] = v16;
  v25[1] = v21;
  v32 = 1;
  sub_191C46B48(&qword_1EADCB330, MEMORY[0x1E6969530]);
  sub_191CC7268();
  (*(v20 + 8))(v11, v30);
  v22 = *(v12 + 20);
  v23 = v25[0];
  (*(v26 + 32))(v25[0] + v22, v6, v19);
  sub_191C622F4(v23, v27, type metadata accessor for HKCloudSync.Show.Log);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return sub_191C48D60(v23, type metadata accessor for HKCloudSync.Show.Log);
}

uint64_t sub_191C5BDC8()
{
  v1 = 0x49746E756F636361;
  if (*v0 != 1)
  {
    v1 = 0x6F7469736F706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_191C5BE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C6921C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C5BE5C(uint64_t a1)
{
  v2 = sub_191C6235C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C5BE98(uint64_t a1)
{
  v2 = sub_191C6235C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKCloudSync.Show.encode(to:)(void *a1)
{
  sub_191C62544(0, &qword_1EADCBFF0, sub_191C6235C, &_s4ShowV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v19 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v25 = v1[2];
  v26 = v10;
  v13 = v1[5];
  v23 = v1[4];
  v24 = v12;
  v14 = v1[7];
  v21 = v1[6];
  v22 = v13;
  v19 = v1[8];
  v20 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C6235C();
  sub_191CC7548();
  LOBYTE(v28) = 0;
  v16 = v27;
  sub_191CC7338();
  if (!v16)
  {
    v17 = v19;
    v28 = v26;
    v29 = v25;
    v30 = v24;
    v31 = v23;
    v32 = v22;
    v33 = v21;
    v34 = v20;
    v35 = 1;
    sub_191C42E60(v26, v25);
    sub_191C623B0();
    sub_191CC72F8();
    sub_191C42F18(v28, v29);
    v28 = v17;
    v35 = 2;
    sub_191C62404(0, &qword_1EADCC008, &type metadata for HKCloudSync.Show.Repository, MEMORY[0x1E69E62F8]);
    sub_191C62454();
    sub_191CC7348();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t HKCloudSync.Show.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_191C62544(0, &qword_1EADCC020, sub_191C6235C, &_s4ShowV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v31 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C6235C();
  sub_191CC7528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_191C42F18(0, 0);
  }

  else
  {
    v30 = v6;
    LOBYTE(v37) = 0;
    v12 = sub_191CC7258();
    LOBYTE(v32) = 1;
    sub_191C625AC();
    sub_191CC7218();
    v25 = v12;
    v26 = a2;
    v14 = v37;
    v13 = v38;
    v15 = v39;
    v27 = v40;
    v29 = v41;
    v28 = v42;
    v16 = v43;
    sub_191C42F18(0, 0);
    sub_191C62404(0, &qword_1EADCC008, &type metadata for HKCloudSync.Show.Repository, MEMORY[0x1E69E62F8]);
    v46 = 2;
    sub_191C62600();
    sub_191CC7268();
    (*(v30 + 8))(v10, v31);
    v17 = v47;
    v18 = v25;
    *&v32 = v25;
    *(&v32 + 1) = v14;
    *&v33 = v13;
    *(&v33 + 1) = v15;
    v19 = v27;
    *&v34 = v27;
    *(&v34 + 1) = v29;
    *&v35 = v28;
    *(&v35 + 1) = v16;
    v36 = v47;
    v20 = v26;
    *(v26 + 64) = v47;
    v21 = v35;
    v20[2] = v34;
    v20[3] = v21;
    v22 = v33;
    *v20 = v32;
    v20[1] = v22;
    sub_191C626F0(&v32, &v37);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v37 = v18;
    v38 = v14;
    v39 = v13;
    v40 = v15;
    v41 = v19;
    v42 = v29;
    v43 = v28;
    v44 = v16;
    v45 = v17;
    return sub_191C62728(&v37);
  }
}

uint64_t HKCloudSync.Show.RecordDetail.description.getter()
{
  sub_191C50804(0);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v479 = &v459 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v495 = &v459 - v7;
  v484 = type metadata accessor for HKCloudSync.Show.ShardPredicate(0);
  v483 = *(v484 - 8);
  v8 = *(v483 + 64);
  MEMORY[0x1EEE9AC00](v484, v9);
  v477 = &v459 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v496 = type metadata accessor for HKCloudSync.Show.SyncIdentity(0);
  v506 = *(v496 - 8);
  v11 = *(v506 + 64);
  MEMORY[0x1EEE9AC00](v496, v12);
  v491 = &v459 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C50B2C(0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v490 = &v459 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v489 = &v459 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v487 = &v459 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v497 = &v459 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v504 = &v459 - v30;
  MEMORY[0x1EEE9AC00](v29, v31);
  v503 = &v459 - v32;
  sub_191C50B60(0);
  v34 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v33 - 8, v35);
  v482 = &v459 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v38);
  v502 = &v459 - v39;
  sub_191C50BB4(0);
  v41 = *(*(v40 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v40 - 8, v42);
  v45 = &v459 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v43, v46);
  v478 = &v459 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v481 = &v459 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v480 = &v459 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v501 = &v459 - v57;
  MEMORY[0x1EEE9AC00](v56, v58);
  v500 = &v459 - v59;
  v509 = sub_191CC61A8();
  v507 = *(v509 - 8);
  v60 = *(v507 + 64);
  v62 = MEMORY[0x1EEE9AC00](v509, v61);
  v493 = &v459 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v62, v64);
  v505 = &v459 - v66;
  MEMORY[0x1EEE9AC00](v65, v67);
  v499 = &v459 - v68;
  v69 = sub_191CC6148();
  v70 = *(v69 - 8);
  v510 = v69;
  v511 = v70;
  v71 = *(v70 + 64);
  v73 = MEMORY[0x1EEE9AC00](v69, v72);
  v492 = &v459 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73, v75);
  v508 = &v459 - v76;
  sub_191C47DA4(0);
  v78 = *(*(v77 - 8) + 64);
  v80 = MEMORY[0x1EEE9AC00](v77 - 8, v79);
  v82 = &v459 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x1EEE9AC00](v80, v83);
  v86 = &v459 - v85;
  v88 = MEMORY[0x1EEE9AC00](v84, v87);
  v90 = &v459 - v89;
  v92 = MEMORY[0x1EEE9AC00](v88, v91);
  v498 = &v459 - v93;
  v95 = MEMORY[0x1EEE9AC00](v92, v94);
  v97 = &v459 - v96;
  v99 = MEMORY[0x1EEE9AC00](v95, v98);
  v494 = &v459 - v100;
  v102 = MEMORY[0x1EEE9AC00](v99, v101);
  v104 = &v459 - v103;
  MEMORY[0x1EEE9AC00](v102, v105);
  v107 = &v459 - v106;
  v108 = type metadata accessor for HKCloudSync.Show.RecordDetail(0);
  v485 = *(v108 - 8);
  v109 = *(v485 + 64);
  v111 = MEMORY[0x1EEE9AC00](v108, v110);
  v488 = &v459 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v111, v113);
  v115 = &v459 - v114;
  sub_191C622F4(v0, &v459 - v114, type metadata accessor for HKCloudSync.Show.RecordDetail);
  v486 = v108;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v262 = *v115;
      v261 = *(v115 + 1);
      sub_191C52030();
      v264 = *&v115[*(v263 + 64)];
      sub_191C627D4(&v115[*(v263 + 48)], v107, sub_191C47DA4);
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D4D0);
      v512 = v262;
      v513 = v261;
      sub_191CC70F8();

      MEMORY[0x193B01F90](0xD000000000000015, 0x8000000191D2D4F0);
      sub_191C622F4(v107, v104, sub_191C47DA4);
      v266 = v510;
      v265 = v511;
      if ((*(v511 + 48))(v104, 1, v510) == 1)
      {
        v267 = 0x3E656E6F6E3CLL;
        v268 = 0xE600000000000000;
      }

      else
      {
        v391 = v508;
        (*(v265 + 32))(v508, v104, v266);
        v392 = sub_191CC6068();
        v268 = v393;
        (*(v265 + 8))(v391, v266);
        v267 = v392;
      }

      MEMORY[0x193B01F90](v267, v268);

      MEMORY[0x193B01F90](0xD000000000000011, 0x8000000191D2D510);
      v512 = v264;
      v394 = sub_191CC7398();
      MEMORY[0x193B01F90](v394);

      v166 = v515;
      sub_191C48D60(v107, sub_191C47DA4);
      return v166;
    case 2u:
      v223 = *v115;
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD000000000000013, 0x8000000191D2D490);
      v512 = v223;
      sub_191C693C0(0, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
      sub_191C6283C();
      sub_191C1B784();
      v224 = sub_191CC6868();
      goto LABEL_56;
    case 3u:
      v237 = *v115;
      v236 = *(v115 + 1);
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD000000000000013, 0x8000000191D2D490);
      v512 = v237;
      v238 = MEMORY[0x1E69E6158];
      sub_191C693C0(0, &qword_1EADCBE48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
      sub_191C6283C();
      sub_191C1B784();
      v239 = sub_191CC6868();
      v241 = v240;

      MEMORY[0x193B01F90](v239, v241);

      MEMORY[0x193B01F90](0xD00000000000001DLL, 0x8000000191D2D4B0);
      v242 = sub_191C4276C(v236);

      v512 = v242;
      sub_191C62404(0, &qword_1EADCAE00, v238, MEMORY[0x1E69E62F8]);
      sub_191C62758();
      v243 = sub_191CC66D8();
      v245 = v244;

      v246 = v243;
      goto LABEL_57;
    case 4u:
      v167 = *v115;
      v168 = *(v115 + 1);
      v169 = v115[16];
      sub_191C51948(0, v116);
      v171 = v170[16];
      v172 = *&v115[v170[20]];
      v173 = *&v115[v170[28]];
      v501 = *&v115[v170[24]];
      v502 = v173;
      v174 = &v115[v170[32]];
      v175 = *v174;
      v176 = v174[1];
      v177 = *&v115[v170[36]];
      v178 = *&v115[v170[40]];
      v503 = v175;
      v504 = v178;
      v179 = *&v115[v170[48]];
      v505 = *&v115[v170[44]];
      v506 = v179;
      v507 = *&v115[v170[52]];
      v509 = *&v115[v170[56]];
      v180 = v494;
      sub_191C627D4(&v115[v171], v494, sub_191C47DA4);
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](539697728, 0xE400000000000000);
      MEMORY[0x193B01F90](v167, v168);

      MEMORY[0x193B01F90](10272, 0xE200000000000000);
      if (v169)
      {
        v181 = 0x455649544341;
      }

      else
      {
        v181 = 0x6576697463616E69;
      }

      v182 = 0xE600000000000000;
      if (v169)
      {
        v183 = 0xE600000000000000;
      }

      else
      {
        v183 = 0xE800000000000000;
      }

      MEMORY[0x193B01F90](v181, v183);

      MEMORY[0x193B01F90](8236, 0xE200000000000000);
      v184 = v180;
      v185 = 0x3E656E6F6E3CLL;
      sub_191C622F4(v184, v97, sub_191C47DA4);
      v187 = v510;
      v186 = v511;
      v188 = (*(v511 + 48))(v97, 1, v510);
      v189 = 0x3E656E6F6E3CLL;
      if (v188 != 1)
      {
        v190 = v508;
        (*(v186 + 32))(v508, v97, v187);
        v191 = sub_191CC6068();
        v182 = v192;
        (*(v186 + 8))(v190, v187);
        v189 = v191;
      }

      MEMORY[0x193B01F90](v189, v182);

      MEMORY[0x193B01F90](0x203A68636F704520, 0xE800000000000000);
      v512 = v172;
      v193 = sub_191CC7398();
      MEMORY[0x193B01F90](v193);

      MEMORY[0x193B01F90](0x676E616843207C20, 0xEB00000000203A65);
      v512 = v501;
      v194 = sub_191CC7398();
      MEMORY[0x193B01F90](v194);

      MEMORY[0x193B01F90](0x646C696843207C20, 0xED0000203A6E6572);
      v512 = v502;
      v195 = sub_191CC7398();
      MEMORY[0x193B01F90](v195);

      MEMORY[0x193B01F90](0x6973726556207C20, 0xEC000000203A6E6FLL);
      MEMORY[0x193B01F90](v503, v176);

      MEMORY[0x193B01F90](0xD000000000000019, 0x8000000191D2D3C0);
      v196 = sub_191C42B04(v177);

      v512 = v196;
      sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_191C62758();
      v197 = sub_191CC66D8();
      v199 = v198;

      MEMORY[0x193B01F90](v197, v199);

      MEMORY[0x193B01F90](0xD00000000000001DLL, 0x8000000191D2D3E0);
      v200 = sub_191C4276C(v504);

      v512 = v200;
      v201 = sub_191CC66D8();
      v203 = v202;

      MEMORY[0x193B01F90](v201, v203);

      MEMORY[0x193B01F90](0xD000000000000023, 0x8000000191D2D400);
      v204 = sub_191C4276C(v505);

      v512 = v204;
      v205 = sub_191CC66D8();
      v207 = v206;

      MEMORY[0x193B01F90](v205, v207);

      MEMORY[0x193B01F90](0xD000000000000014, 0x8000000191D2D430);
      v208 = sub_191C5FC60(v506);
      v210 = v209;

      MEMORY[0x193B01F90](v208, v210);

      MEMORY[0x193B01F90](0xD000000000000014, 0x8000000191D2D450);
      if (v507)
      {

        v212 = sub_191C5FC60(v211);
        v214 = v213;
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v214 = 0xE600000000000000;
        v212 = 0x3E656E6F6E3CLL;
      }

      MEMORY[0x193B01F90](v212, v214);

      MEMORY[0x193B01F90](0xD00000000000001CLL, 0x8000000191D2D470);
      swift_getKeyPath();
      if (v509)
      {
        v514 = v509;
        swift_bridgeObjectRetain_n();
        swift_getAtKeyPath();
        swift_bridgeObjectRelease_n();

        v185 = v512;
        v457 = v513;
      }

      else
      {

        v457 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v185, v457);

      MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
      v166 = v515;
      sub_191C48D60(v494, sub_191C47DA4);
      return v166;
    case 5u:
      v269 = *v115;
      sub_191C516B4(0, v116);
      v271 = v270;
      v479 = v269;
      v272 = swift_projectBox();
      v464 = *v272;
      v273 = *(v272 + 2);
      v465 = *(v272 + 1);
      v461 = v273;
      v274 = *(v272 + 4);
      v467 = *(v272 + 3);
      v462 = v274;
      v275 = *(v272 + 6);
      v468 = *(v272 + 5);
      v463 = v275;
      v276 = v271[24];
      v277 = v271[28];
      v278 = &v272[v271[32]];
      v280 = *v278;
      v279 = *(v278 + 1);
      v469 = v280;
      v460 = v279;
      v470 = v272[v271[40]];
      v281 = v271[36];
      v282 = &v272[v271[44]];
      v284 = *v282;
      v283 = v282[1];
      v471 = v284;
      v492 = v283;
      v285 = v271[48];
      v286 = &v272[v271[52]];
      v288 = *v286;
      v287 = *(v286 + 1);
      v472 = v288;
      v493 = v287;
      v289 = &v272[v271[56]];
      v291 = *v289;
      v290 = *(v289 + 1);
      v473 = v291;
      v494 = v290;
      v292 = v271[60];
      v293 = &v272[v271[64]];
      v295 = *v293;
      v294 = v293[1];
      v474 = v295;
      v495 = v294;
      v296 = &v272[v271[68]];
      v298 = *v296;
      v297 = v296[1];
      v475 = v298;
      v505 = v297;
      v299 = &v272[v271[72]];
      v300 = v299[1];
      v478 = *v299;
      v301 = v271[76];
      v302 = v271[80];
      v476 = v271[84];
      v466 = sub_191C47DA4;
      sub_191C622F4(&v272[v276], v498, sub_191C47DA4);
      (*(v507 + 16))(v499, &v272[v277], v509);
      sub_191C622F4(&v272[v281], v500, sub_191C50BB4);
      v303 = &v272[v285];
      v304 = 0x3E656E6F6E3CLL;
      sub_191C622F4(v303, v501, sub_191C50BB4);
      sub_191C622F4(&v272[v292], v502, sub_191C50B60);
      v305 = &v272[v301];
      v306 = v460;
      sub_191C622F4(v305, v503, sub_191C50B2C);
      sub_191C622F4(&v272[v302], v504, sub_191C50B2C);
      sub_191C622F4(&v272[v476], v497, sub_191C50B2C);
      v515 = 0;
      v516 = 0xE000000000000000;
      v476 = v300;

      v307 = v461;

      v308 = v462;

      v309 = v463;

      sub_191CC6FC8();
      MEMORY[0x193B01F90](8235, 0xE200000000000000);
      if (v464)
      {
        v310 = 0x455649544341;
      }

      else
      {
        v310 = 0x6576697463616E49;
      }

      v311 = 0xE600000000000000;
      if (v464)
      {
        v312 = 0xE600000000000000;
      }

      else
      {
        v312 = 0xE800000000000000;
      }

      MEMORY[0x193B01F90](v310, v312);

      MEMORY[0x193B01F90](8236, 0xE200000000000000);
      if (v307)
      {
        v313 = v465;
      }

      else
      {
        v313 = 0x3E656E6F6E3CLL;
      }

      if (v307)
      {
        v314 = v307;
      }

      else
      {
        v314 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v313, v314);

      MEMORY[0x193B01F90](544108320, 0xE400000000000000);
      if (v308)
      {
        v315 = v467;
      }

      else
      {
        v315 = 0x3E656E6F6E3CLL;
      }

      if (v308)
      {
        v316 = v308;
      }

      else
      {
        v316 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v315, v316);

      MEMORY[0x193B01F90](0x203A65646F4D202CLL, 0xE800000000000000);
      MEMORY[0x193B01F90](v468, v309);

      MEMORY[0x193B01F90](0x696669646F4D202CLL, 0xEC000000203A6465);
      sub_191C622F4(v498, v90, v466);
      v318 = v510;
      v317 = v511;
      v319 = (*(v511 + 48))(v90, 1, v510);
      v320 = 0x3E656E6F6E3CLL;
      if (v319 != 1)
      {
        v321 = v508;
        (*(v317 + 32))(v508, v90, v318);
        v322 = sub_191CC6068();
        v311 = v323;
        (*(v317 + 8))(v321, v318);
        v320 = v322;
      }

      MEMORY[0x193B01F90](v320, v311);

      MEMORY[0x193B01F90](0x65726F7453207C0ALL, 0xEA0000000000203ALL);
      sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8]);
      v324 = sub_191CC7398();
      MEMORY[0x193B01F90](v324);

      MEMORY[0x193B01F90](0x72656E774F207C20, 0xEA0000000000203ALL);
      MEMORY[0x193B01F90](v469, v306);

      MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D2E0);
      v325 = v480;
      sub_191C622F4(v500, v480, sub_191C50BB4);
      v326 = *(v506 + 48);
      v327 = v496;
      v506 += 48;
      if (v326(v325, 1, v496) == 1)
      {
        v328 = 0xE600000000000000;
        v329 = 0x3E656E6F6E3CLL;
      }

      else
      {
        v395 = v491;
        sub_191C627D4(v325, v491, type metadata accessor for HKCloudSync.Show.SyncIdentity);
        v512 = sub_191CC7398();
        v513 = v396;
        MEMORY[0x193B01F90](58, 0xE100000000000000);
        v397 = v395 + *(v327 + 20);
        v398 = sub_191CC7398();
        MEMORY[0x193B01F90](v398);

        MEMORY[0x193B01F90](58, 0xE100000000000000);
        MEMORY[0x193B01F90](*(v395 + *(v327 + 24)), *(v395 + *(v327 + 24) + 8));
        v329 = v512;
        v328 = v513;
        sub_191C48D60(v395, type metadata accessor for HKCloudSync.Show.SyncIdentity);
      }

      v399 = 2960685;
      MEMORY[0x193B01F90](v329, v328);

      MEMORY[0x193B01F90](0x6968437369207C20, 0xEC000000203A646CLL);
      if (v470)
      {
        v400 = 1702195828;
      }

      else
      {
        v400 = 0x65736C6166;
      }

      if (v470)
      {
        v401 = 0xE400000000000000;
      }

      else
      {
        v401 = 0xE500000000000000;
      }

      MEMORY[0x193B01F90](v400, v401);

      MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D300);
      if (v492)
      {
        v402 = v471;
      }

      else
      {
        v402 = 2960685;
      }

      v403 = 0xE300000000000000;
      if (v492)
      {
        v404 = v492;
      }

      else
      {
        v404 = 0xE300000000000000;
      }

      MEMORY[0x193B01F90](v402, v404);

      MEMORY[0x193B01F90](0xD000000000000015, 0x8000000191D2D320);
      v405 = v481;
      sub_191C622F4(v501, v481, sub_191C50BB4);
      if (v326(v405, 1, v327) != 1)
      {
        v406 = v491;
        sub_191C627D4(v405, v491, type metadata accessor for HKCloudSync.Show.SyncIdentity);
        v512 = sub_191CC7398();
        v513 = v407;
        MEMORY[0x193B01F90](58, 0xE100000000000000);
        v408 = v406 + *(v327 + 20);
        v409 = sub_191CC7398();
        MEMORY[0x193B01F90](v409);

        MEMORY[0x193B01F90](58, 0xE100000000000000);
        MEMORY[0x193B01F90](*(v406 + *(v327 + 24)), *(v406 + *(v327 + 24) + 8));
        v399 = v512;
        v403 = v513;
        sub_191C48D60(v406, type metadata accessor for HKCloudSync.Show.SyncIdentity);
      }

      MEMORY[0x193B01F90](v399, v403);

      MEMORY[0x193B01F90](0xD000000000000017, 0x8000000191D2D340);
      MEMORY[0x193B01F90](v472, v493);

      MEMORY[0x193B01F90](2108704, 0xE300000000000000);
      MEMORY[0x193B01F90](v473, v494);

      MEMORY[0x193B01F90](0x6472616853207C0ALL, 0xEA0000000000203ALL);
      v410 = v482;
      sub_191C622F4(v502, v482, sub_191C50B60);
      v411 = (*(v483 + 48))(v410, 1, v484);
      v412 = 0xE600000000000000;
      v413 = 0x3E656E6F6E3CLL;
      v414 = 0xE600000000000000;
      v415 = v507;
      v416 = v488;
      if (v411 != 1)
      {
        v417 = v477;
        sub_191C627D4(v410, v477, type metadata accessor for HKCloudSync.Show.ShardPredicate);
        v418 = HKCloudSync.Show.ShardPredicate.description.getter();
        v414 = v419;
        sub_191C48D60(v417, type metadata accessor for HKCloudSync.Show.ShardPredicate);
        v413 = v418;
      }

      MEMORY[0x193B01F90](v413, v414);

      MEMORY[0x193B01F90](0xD00000000000001DLL, 0x8000000191D2D360);
      if (v495)
      {
        v420 = v474;
      }

      else
      {
        v420 = 0x3E656E6F6E3CLL;
      }

      if (v495)
      {
        v421 = v495;
      }

      else
      {
        v421 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v420, v421);

      MEMORY[0x193B01F90](0x28646C4F20, 0xE500000000000000);
      if (v505)
      {
        v422 = v475;
      }

      else
      {
        v422 = 0x3E656E6F6E3CLL;
      }

      if (v505)
      {
        v423 = v505;
      }

      else
      {
        v423 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v422, v423);

      MEMORY[0x193B01F90](0x2865766974634120, 0xE800000000000000);
      if (v476)
      {
        v424 = v478;
      }

      else
      {
        v424 = 0x3E656E6F6E3CLL;
      }

      if (v476)
      {
        v425 = v476;
      }

      else
      {
        v425 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v424, v425);

      MEMORY[0x193B01F90](0x746F6C53207C0A29, 0xEC000000203A4120);
      v426 = v487;
      sub_191C622F4(v503, v487, sub_191C50B2C);
      v427 = *(v485 + 48);
      v428 = v486;
      v429 = v427(v426, 1, v486);
      v430 = 0x3E656E6F6E3CLL;
      if (v429 != 1)
      {
        v431 = sub_191C627D4(v426, v416, type metadata accessor for HKCloudSync.Show.RecordDetail);
        HKCloudSync.Show.RecordDetail.description.getter(v431);
        v432 = sub_191CC6778();

        v433 = [v432 hk:2 stringIndentedBy:?];

        v434 = sub_191CC67B8();
        v412 = v435;

        v304 = 0x3E656E6F6E3CLL;
        sub_191C48D60(v416, type metadata accessor for HKCloudSync.Show.RecordDetail);
        v430 = v434;
      }

      MEMORY[0x193B01F90](v430, v412);

      MEMORY[0x193B01F90](0x20746F6C53207C0ALL, 0xEB00000000203A42);
      v436 = v489;
      sub_191C622F4(v504, v489, sub_191C50B2C);
      if (v427(v436, 1, v428) == 1)
      {
        v437 = 0xE600000000000000;
        v438 = 0x3E656E6F6E3CLL;
      }

      else
      {
        v439 = sub_191C627D4(v436, v416, type metadata accessor for HKCloudSync.Show.RecordDetail);
        HKCloudSync.Show.RecordDetail.description.getter(v439);
        v440 = sub_191CC6778();

        v441 = [v440 hk:2 stringIndentedBy:?];

        v442 = sub_191CC67B8();
        v437 = v443;

        v304 = 0x3E656E6F6E3CLL;
        sub_191C48D60(v416, type metadata accessor for HKCloudSync.Show.RecordDetail);
        v438 = v442;
      }

      v444 = v497;
      MEMORY[0x193B01F90](v438, v437);

      MEMORY[0x193B01F90](0x73626D6F54207C0ALL, 0xEF203A73656E6F74);
      v445 = v490;
      sub_191C622F4(v444, v490, sub_191C50B2C);
      if (v427(v445, 1, v428) == 1)
      {
        v446 = 0xE600000000000000;
      }

      else
      {
        v447 = sub_191C627D4(v445, v416, type metadata accessor for HKCloudSync.Show.RecordDetail);
        HKCloudSync.Show.RecordDetail.description.getter(v447);
        v448 = sub_191CC6778();

        v449 = [v448 hk:2 stringIndentedBy:?];

        v304 = sub_191CC67B8();
        v446 = v450;

        sub_191C48D60(v416, type metadata accessor for HKCloudSync.Show.RecordDetail);
      }

      MEMORY[0x193B01F90](v304, v446);

      MEMORY[0x193B01F90](0xD000000000000036, 0x8000000191D2D380);
      v166 = v515;
      sub_191C48D60(v444, sub_191C50B2C);
      sub_191C48D60(v504, sub_191C50B2C);
      sub_191C48D60(v503, sub_191C50B2C);
      sub_191C48D60(v502, sub_191C50B60);
      sub_191C48D60(v501, sub_191C50BB4);
      sub_191C48D60(v500, sub_191C50BB4);
      (*(v415 + 8))(v499, v509);
      sub_191C48D60(v498, sub_191C47DA4);

      return v166;
    case 6u:
      v331 = v507;
      v332 = v505;
      v333 = v509;
      (*(v507 + 32))(v505, v115, v509);
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x203A44495555202BLL, 0xE800000000000000);
      sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8]);
      v334 = sub_191CC7398();
      MEMORY[0x193B01F90](v334);

      MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
      v166 = v515;
      (*(v331 + 8))(v332, v333);
      return v166;
    case 7u:
      v248 = *v115;
      v247 = *(v115 + 1);
      v250 = *(v115 + 2);
      v249 = *(v115 + 3);
      v251 = *(v115 + 5);
      v506 = *(v115 + 4);
      v507 = v251;
      v252 = *(v115 + 6);
      v509 = *(v115 + 7);
      v253 = *(v115 + 8);
      sub_191C5157C(0, v116);
      v255 = v511;
      v256 = &v115[*(v254 + 112)];
      v257 = v508;
      v258 = v510;
      (*(v511 + 32))(v508, v256, v510);
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x69746E656449202BLL, 0xEE00203A72656966);
      MEMORY[0x193B01F90](v248, v247);

      MEMORY[0x193B01F90](0x20656C6946202B0ALL, 0xEE00203A656D616ELL);
      MEMORY[0x193B01F90](v250, v249);

      MEMORY[0x193B01F90](0x20656C6946202B0ALL, 0xEE00203A657A6973);
      v512 = v506;
      v259 = sub_191CC7398();
      MEMORY[0x193B01F90](v259);

      MEMORY[0x193B01F90](0x20656D694D202B0ALL, 0xEE00203A65707974);
      MEMORY[0x193B01F90](v507, v252);

      MEMORY[0x193B01F90](0x20656C6946202B0ALL, 0xEE00203A68736168);
      MEMORY[0x193B01F90](v509, v253);

      MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D2C0);
      sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530]);
      v260 = sub_191CC7398();
      MEMORY[0x193B01F90](v260);

      MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
      v166 = v515;
      (*(v255 + 8))(v257, v258);
      return v166;
    case 8u:
      v350 = *v115;
      v349 = *(v115 + 1);
      v352 = *(v115 + 2);
      v351 = *(v115 + 3);
      v354 = *(v115 + 4);
      v353 = *(v115 + 5);
      v504 = *(v115 + 6);
      sub_191C51428(0, v116);
      v356 = v355[24];
      v506 = *&v115[v355[28]];
      v357 = v355[32];
      v358 = v507;
      (*(v507 + 32))(v505, &v115[v356], v509);
      v359 = v511;
      v360 = &v115[v357];
      v361 = v510;
      (*(v511 + 32))(v508, v360, v510);
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x69746E656449202BLL, 0xEE00203A72656966);
      MEMORY[0x193B01F90](v350, v349);

      MEMORY[0x193B01F90](0xD000000000000016, 0x8000000191D2D240);
      MEMORY[0x193B01F90](v352, v351);

      MEMORY[0x193B01F90](0xD000000000000016, 0x8000000191D2D260);
      MEMORY[0x193B01F90](v354, v353);

      MEMORY[0x193B01F90](0xD000000000000013, 0x8000000191D2D280);
      v512 = v504;
      v362 = sub_191CC7398();
      MEMORY[0x193B01F90](v362);

      MEMORY[0x193B01F90](0xD00000000000001ALL, 0x8000000191D2D2A0);
      sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8]);
      v363 = v505;
      v364 = v509;
      v365 = sub_191CC7398();
      MEMORY[0x193B01F90](v365);

      MEMORY[0x193B01F90](0x3A65707954202B0ALL, 0xE900000000000020);
      v512 = v506;
      v366 = sub_191CC7398();
      MEMORY[0x193B01F90](v366);

      MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D2C0);
      sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530]);
      v367 = v508;
      v368 = sub_191CC7398();
      MEMORY[0x193B01F90](v368);

      MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
      v166 = v515;
      (*(v359 + 8))(v367, v361);
      (*(v358 + 8))(v363, v364);
      return v166;
    case 9u:
      v222 = *v115;
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x7473626D6F54202BLL, 0xEE000A3A73656E6FLL);
      if (v222)
      {
        v514 = v222;
        sub_191C601E4(&v514, &v512);

        v122 = v512;
        v123 = v513;
      }

      else
      {
        v122 = 0x3E656E6F6E3CLL;
        v123 = 0xE600000000000000;
      }

      goto LABEL_165;
    case 0xAu:
      v336 = *v115;
      v335 = *(v115 + 1);
      v338 = *(v115 + 2);
      v337 = *(v115 + 3);
      v340 = *(v115 + 4);
      v339 = *(v115 + 5);
      sub_191C51218(0, v116);
      v342 = *(v341 + 96);
      v343 = v478;
      sub_191C627D4(&v115[*(v341 + 80)], v478, sub_191C50BB4);
      v344 = &v115[v342];
      v345 = v510;
      (*(v511 + 32))(v492, v344, v510);
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD000000000000015, 0x8000000191D2D1C0);
      MEMORY[0x193B01F90](v336, v335);

      MEMORY[0x193B01F90](0xD000000000000017, 0x8000000191D2D1E0);
      MEMORY[0x193B01F90](v338, v337);

      MEMORY[0x193B01F90](0xD000000000000014, 0x8000000191D2D200);
      MEMORY[0x193B01F90](v340, v339);

      MEMORY[0x193B01F90](0xD000000000000012, 0x8000000191D2D220);
      sub_191C622F4(v343, v45, sub_191C50BB4);
      v346 = v496;
      if ((*(v506 + 48))(v45, 1, v496) == 1)
      {
        v347 = 0x3E656E6F6E3CLL;
        v348 = 0xE600000000000000;
      }

      else
      {
        v451 = v491;
        sub_191C627D4(v45, v491, type metadata accessor for HKCloudSync.Show.SyncIdentity);
        sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8]);
        v512 = sub_191CC7398();
        v513 = v452;
        MEMORY[0x193B01F90](58, 0xE100000000000000);
        v453 = v451 + *(v346 + 20);
        v454 = sub_191CC7398();
        MEMORY[0x193B01F90](v454);

        MEMORY[0x193B01F90](58, 0xE100000000000000);
        MEMORY[0x193B01F90](*(v451 + *(v346 + 24)), *(v451 + *(v346 + 24) + 8));
        v347 = v512;
        v348 = v513;
        sub_191C48D60(v451, type metadata accessor for HKCloudSync.Show.SyncIdentity);
      }

      MEMORY[0x193B01F90](v347, v348);

      MEMORY[0x193B01F90](0xD000000000000016, 0x8000000191D2D1A0);
      sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530]);
      v455 = v492;
      v456 = sub_191CC7398();
      MEMORY[0x193B01F90](v456);

      MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
      v166 = v515;
      (*(v511 + 8))(v455, v345);
      sub_191C48D60(v343, sub_191C50BB4);
      return v166;
    case 0xBu:
      v156 = *v115;
      v157 = *(v115 + 1);
      v158 = *(v115 + 2);
      v159 = *(v115 + 3);
      sub_191C51150();
      v162 = v510;
      v161 = v511;
      v163 = v508;
      (*(v511 + 32))(v508, &v115[*(v160 + 64)], v510);
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x203A79654B202BLL, 0xE700000000000000);
      MEMORY[0x193B01F90](v156, v157);

      MEMORY[0x193B01F90](0x65756C6156202B0ALL, 0xEA0000000000203ALL);
      v164 = sub_191CC6018();
      MEMORY[0x193B01F90](v164);

      MEMORY[0x193B01F90](0xD000000000000016, 0x8000000191D2D1A0);
      sub_191C46B48(&qword_1EADCB860, MEMORY[0x1E6969530]);
      v165 = sub_191CC7398();
      MEMORY[0x193B01F90](v165);

      MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
      sub_191C049D8(v158, v159);
      v166 = v515;
      (*(v161 + 8))(v163, v162);
      return v166;
    case 0xCu:
      v215 = 0x3E656E6F6E3CLL;
      sub_191C50FB0();
      v217 = *&v115[*(v216 + 48)];
      sub_191C627D4(v115, v86, sub_191C47DA4);
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD000000000000025, 0x8000000191D2D110);
      sub_191C622F4(v86, v82, sub_191C47DA4);
      v219 = v510;
      v218 = v511;
      if ((*(v511 + 48))(v82, 1, v510) == 1)
      {
        v220 = 0xE600000000000000;
        v221 = 0x3E656E6F6E3CLL;
      }

      else
      {
        v387 = v508;
        (*(v218 + 32))(v508, v82, v219);
        v388 = sub_191CC6068();
        v220 = v389;
        (*(v218 + 8))(v387, v219);
        v221 = v388;
      }

      MEMORY[0x193B01F90](v221, v220);

      MEMORY[0x193B01F90](0xD00000000000001DLL, 0x8000000191D2D140);
      if (v217)
      {
        v514 = v217;
        sub_191C606F4(&v514, &v512);

        v215 = v512;
        v390 = v513;
      }

      else
      {
        v390 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v215, v390);

      MEMORY[0x193B01F90](0xD000000000000038, 0x8000000191D2D160);
      v166 = v515;
      sub_191C48D60(v86, sub_191C47DA4);
      return v166;
    case 0xDu:
      v233 = *v115;
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      v234 = "---------------------------";
      v235 = 0xD00000000000001CLL;
      goto LABEL_55;
    case 0xEu:
      v127 = *v115;
      v126 = *(v115 + 1);
      sub_191C50E00(0, v116);
      v129 = v128[12];
      v130 = v128[16];
      v131 = &v115[v128[20]];
      v132 = v131[1];
      v496 = *v131;
      v133 = &v115[v128[24]];
      v134 = *v133;
      v497 = v133[1];
      v498 = v134;
      v135 = &v115[v128[28]];
      v136 = *v135;
      v499 = v135[1];
      v500 = v136;
      v137 = &v115[v128[32]];
      v138 = *v137;
      v501 = v137[1];
      v502 = v138;
      v139 = &v115[v128[36]];
      v140 = *v139;
      v503 = v139[1];
      v504 = v140;
      v141 = &v115[v128[40]];
      v143 = *v141;
      v142 = *(v141 + 1);
      v508 = v143;
      v506 = v142;
      v144 = &v115[v128[44]];
      v145 = *v144;
      v510 = *(v144 + 1);
      v511 = v145;
      v146 = v507;
      v147 = *(v507 + 32);
      v148 = v509;
      v147(v493, &v115[v129], v509);
      v149 = &v115[v130];
      v150 = v146;
      v151 = v495;
      sub_191C627D4(v149, v495, sub_191C50804);
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](8235, 0xE200000000000000);
      MEMORY[0x193B01F90](v127, v126);

      MEMORY[0x193B01F90](2108704, 0xE300000000000000);
      sub_191C46B48(&qword_1EADCAC68, MEMORY[0x1E69695A8]);
      v152 = sub_191CC7398();
      MEMORY[0x193B01F90](v152);

      MEMORY[0x193B01F90](0x203A5344495B20, 0xE700000000000000);
      v153 = v479;
      sub_191C622F4(v151, v479, sub_191C50804);
      if ((*(v150 + 48))(v153, 1, v148) == 1)
      {
        v154 = 0x3E656E6F6E3CLL;
        v155 = 0xE600000000000000;
      }

      else
      {
        v369 = v505;
        v370 = (v147)(v505, v153, v148);
        v371 = MEMORY[0x193B018F0](v370);
        v155 = v372;
        (*(v150 + 8))(v369, v148);
        v154 = v371;
      }

      MEMORY[0x193B01F90](v154, v155);

      MEMORY[0x193B01F90](545000029, 0xE400000000000000);
      if (v132)
      {
        v373 = v496;
      }

      else
      {
        v373 = 0x6E776F6E6B6E753CLL;
      }

      if (v132)
      {
        v374 = v132;
      }

      else
      {
        v374 = 0xE90000000000003ELL;
      }

      MEMORY[0x193B01F90](v373, v374);

      MEMORY[0x193B01F90](32, 0xE100000000000000);
      if (v497)
      {
        v375 = v498;
      }

      else
      {
        v375 = 0x6E776F6E6B6E753CLL;
      }

      if (v497)
      {
        v376 = v497;
      }

      else
      {
        v376 = 0xE90000000000003ELL;
      }

      MEMORY[0x193B01F90](v375, v376);

      MEMORY[0x193B01F90](32, 0xE100000000000000);
      if (v499)
      {
        v377 = v500;
      }

      else
      {
        v377 = 0x6E776F6E6B6E753CLL;
      }

      if (v499)
      {
        v378 = v499;
      }

      else
      {
        v378 = 0xE90000000000003ELL;
      }

      MEMORY[0x193B01F90](v377, v378);

      MEMORY[0x193B01F90](32, 0xE100000000000000);
      if (v501)
      {
        v379 = v502;
      }

      else
      {
        v379 = 0x6E776F6E6B6E753CLL;
      }

      if (v501)
      {
        v380 = v501;
      }

      else
      {
        v380 = 0xE90000000000003ELL;
      }

      MEMORY[0x193B01F90](v379, v380);

      MEMORY[0x193B01F90](0x2220726F6620, 0xE600000000000000);
      if (v503)
      {
        v381 = v504;
      }

      else
      {
        v381 = 0x3E656E6F6E3CLL;
      }

      if (v503)
      {
        v382 = v503;
      }

      else
      {
        v382 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v381, v382);

      MEMORY[0x193B01F90](8236, 0xE200000000000000);
      if (v506)
      {
        v383 = v508;
      }

      else
      {
        v383 = 0x3E656E6F6E3CLL;
      }

      if (v506)
      {
        v384 = v506;
      }

      else
      {
        v384 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v383, v384);

      MEMORY[0x193B01F90](3940386, 0xE300000000000000);
      if (v510)
      {
        v385 = v511;
      }

      else
      {
        v385 = 0x3E656E6F6E3CLL;
      }

      if (v510)
      {
        v386 = v510;
      }

      else
      {
        v386 = 0xE600000000000000;
      }

      MEMORY[0x193B01F90](v385, v386);

      MEMORY[0x193B01F90](0xD00000000000004BLL, 0x8000000191D2D0A0);
      v166 = v515;
      sub_191C48D60(v495, sub_191C50804);
      (*(v150 + 8))(v493, v148);
      return v166;
    case 0xFu:
      v227 = *v115;
      v226 = *(v115 + 1);
      v229 = *(v115 + 2);
      v228 = *(v115 + 3);
      v231 = *(v115 + 4);
      v230 = *(v115 + 5);
      v232 = *(v115 + 7);
      v511 = *(v115 + 6);
      v233 = *(v115 + 8);
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x203A656D614E202BLL, 0xE800000000000000);
      MEMORY[0x193B01F90](v227, v226);

      MEMORY[0x193B01F90](0x616B636150207C0ALL, 0xEC000000203A6567);
      MEMORY[0x193B01F90](v229, v228);

      MEMORY[0x193B01F90](0x6973726556207C0ALL, 0xEC000000203A6E6FLL);
      MEMORY[0x193B01F90](v231, v230);

      MEMORY[0x193B01F90](0xD00000000000001ALL, 0x8000000191D2D060);
      MEMORY[0x193B01F90](v511, v232);

      v234 = "\n| Compatibility Version: ";
      v235 = 0xD00000000000001ELL;
LABEL_55:
      MEMORY[0x193B01F90](v235, v234 | 0x8000000000000000);
      v512 = v233;
      sub_191C62404(0, &qword_1EADCAE00, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_191C62758();
      v224 = sub_191CC66D8();
LABEL_56:
      v330 = v224;
      v245 = v225;

      v246 = v330;
LABEL_57:
      MEMORY[0x193B01F90](v246, v245);
      break;
    case 0x10u:
      v124 = *v115;
      v125 = *(v115 + 1);
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0xD00000000000001CLL, 0x8000000191D2D000);
      MEMORY[0x193B01F90](v124, v125);
      break;
    default:
      v118 = *v115;
      v117 = *(v115 + 1);
      v119 = *(v115 + 2);
      v120 = v115[24];
      v515 = 0;
      v516 = 0xE000000000000000;
      sub_191CC6FC8();
      MEMORY[0x193B01F90](0x65676E616843202BLL, 0xE900000000000020);
      v512 = v118;
      v121 = sub_191CC7398();
      MEMORY[0x193B01F90](v121);

      MEMORY[0x193B01F90](0x6F69737265562820, 0xEA0000000000206ELL);
      MEMORY[0x193B01F90](v117, v119);

      if (v120)
      {
        v122 = 0x4C414E494620;
      }

      else
      {
        v122 = 0;
      }

      if (v120)
      {
        v123 = 0xE600000000000000;
      }

      else
      {
        v123 = 0xE000000000000000;
      }

LABEL_165:
      MEMORY[0x193B01F90](v122, v123);
      break;
  }

  MEMORY[0x193B01F90](0xD000000000000034, 0x8000000191D2D020);
  return v515;
}