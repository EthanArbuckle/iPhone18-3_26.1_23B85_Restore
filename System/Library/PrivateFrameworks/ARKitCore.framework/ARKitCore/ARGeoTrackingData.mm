@interface ARGeoTrackingData
- (ARGeoTrackingData)initWithCoder:(id)coder;
- (__n128)initWithENUOrigin:(__n128)origin vioFromENU:(__n128)u;
- (id)anchorsForCameraWithTransform:(double)transform referenceOriginTransform:(double)originTransform existingAnchors:(double)anchors anchorsToRemove:(float32x4_t)remove;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARGeoTrackingData

- (__n128)initWithENUOrigin:(__n128)origin vioFromENU:(__n128)u
{
  v9 = a7;
  v17.receiver = self;
  v17.super_class = ARGeoTrackingData;
  v10 = [(ARGeoTrackingData *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_enuOrigin, a7);
    v11[1] = a2;
    v11[2] = origin;
    v11[3] = u;
    v11[4] = a5;
  }

  return v11;
}

- (id)anchorsForCameraWithTransform:(double)transform referenceOriginTransform:(double)originTransform existingAnchors:(double)anchors anchorsToRemove:(float32x4_t)remove
{
  v179 = *MEMORY[0x1E69E9840];
  v12 = a11;
  v13 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_63];
  v87 = v12;
  v14 = [v12 filteredArrayUsingPredicate:v13];

  v15 = _ARLogGeneral_17();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    LODWORD(buf[0].f64[0]) = 138543874;
    *(buf[0].f64 + 4) = v17;
    WORD2(buf[0].f64[1]) = 2048;
    *(&buf[0].f64[1] + 6) = self;
    HIWORD(buf[1].f64[0]) = 2048;
    *&buf[1].f64[1] = [v14 count];
    _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: VL geo anchors updated: %lu", buf, 0x20u);
  }

  v18 = _ARLogGeneral_17();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v181 = __invert_f4(*(self + 16));
    v21 = ARMatrix4x4Description(1, v181.columns[0], v181.columns[1], v181.columns[2], v181.columns[3]);
    LODWORD(buf[0].f64[0]) = 138543875;
    *(buf[0].f64 + 4) = v20;
    WORD2(buf[0].f64[1]) = 2048;
    *(&buf[0].f64[1] + 6) = self;
    HIWORD(buf[1].f64[0]) = 2113;
    *&buf[1].f64[1] = v21;
    _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: enuFromVIO: %{private}@", buf, 0x20u);
  }

  v169 = 0u;
  v168 = 0u;
  v167 = 0u;
  v166 = 0u;
  v22 = v14;
  v23 = [v22 countByEnumeratingWithState:&v166 objects:v171 count:16];
  if (v23)
  {
    v24 = v23;
    obj = v22;
    v93 = *v167;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v167 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v166 + 1) + 8 * i);
        if ([v26 isAltitudeAvailable])
        {
          v165 = 0u;
          v164 = 0u;
          v163 = 0u;
          v162 = 0u;
          v161 = 0u;
          v160 = 0u;
          v159 = 0u;
          v158 = 0u;
          ARMatrix4x4FloatToDouble(&v158, _PromotedConst_0, unk_1C25C90A0, xmmword_1C25C90B0, unk_1C25C90C0);
          v157 = 0u;
          v156 = 0u;
          v155 = 0u;
          v154 = 0u;
          v153 = 0u;
          v151 = 0u;
          v152 = 0u;
          v150 = 0u;
          *v27.i64 = ARVisionToRenderingCoordinateTransform();
          ARMatrix4x4FloatToDouble(&v150, v27, v28, v29, v30);
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v31 = *(self + 8);
          if (v31)
          {
            [v31 ecefFromlocation];
          }

          else
          {
            v140 = 0uLL;
            v141 = 0uLL;
            v138 = 0uLL;
            v139 = 0uLL;
            v136 = 0uLL;
            v137 = 0uLL;
            v134 = 0uLL;
            v135 = 0uLL;
          }

          v175 = v138;
          v176 = v139;
          v177 = v140;
          v178 = v141;
          buf[0] = v134;
          buf[1] = v135;
          v173 = v136;
          v174 = v137;
          __invert_d4();
          v177 = 0u;
          v178 = 0u;
          v175 = 0u;
          v176 = 0u;
          v173 = 0u;
          v174 = 0u;
          memset(buf, 0, sizeof(buf));
          ARMatrix4x4FloatToDouble(buf, *(self + 16), *(self + 32), *(self + 48), *(self + 64));
          v32 = 0uLL;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v33 = 0uLL;
          if (v26)
          {
            [v26 ecefFromAnchor];
            v33 = 0uLL;
            v34 = v134;
            v35 = v135;
            v36 = v136;
            v37 = v137;
            v38 = v138;
            v39 = v139;
            v32 = v140;
            v40 = v141;
          }

          else
          {
            v40 = 0uLL;
            v38 = 0uLL;
            v39 = 0uLL;
            v36 = 0uLL;
            v37 = 0uLL;
            v34 = 0uLL;
            v35 = 0uLL;
          }

          v41 = 0;
          v122 = v162;
          v123 = v163;
          v124 = v164;
          v125 = v165;
          v118 = v158;
          v119 = v159;
          v120 = v160;
          v121 = v161;
          v126 = v33;
          v127 = v33;
          v128 = v33;
          v129 = v33;
          v130 = v33;
          v131 = v33;
          v132 = v33;
          v133 = v33;
          do
          {
            v43 = *(&v118 + v41);
            v42 = *(&v118 + v41 + 16);
            v44 = (&v126 + v41);
            *v44 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v34, v43.f64[0]), v36, v43, 1), v38, v42.f64[0]), v32, v42, 1);
            v44[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v35, v43.f64[0]), v37, v43, 1), v39, v42.f64[0]), v40, v42, 1);
            v41 += 32;
          }

          while (v41 != 128);
          v45 = 0;
          v47 = v142;
          v46 = v143;
          v49 = v144;
          v48 = v145;
          v51 = v146;
          v50 = v147;
          v53 = v148;
          v52 = v149;
          v114 = v130;
          v115 = v131;
          v116 = v132;
          v117 = v133;
          v110 = v126;
          v111 = v127;
          v112 = v128;
          v113 = v129;
          v124 = v33;
          v125 = v33;
          v122 = v33;
          v123 = v33;
          v120 = v33;
          v121 = v33;
          v118 = v33;
          v119 = v33;
          do
          {
            v55 = *(&v110 + v45);
            v54 = *(&v110 + v45 + 16);
            v56 = (&v118 + v45);
            *v56 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v47, v55.f64[0]), v49, v55, 1), v51, v54.f64[0]), v53, v54, 1);
            v56[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v46, v55.f64[0]), v48, v55, 1), v50, v54.f64[0]), v52, v54, 1);
            v45 += 32;
          }

          while (v45 != 128);
          v57 = 0;
          v59 = buf[0];
          v58 = buf[1];
          v61 = v173;
          v60 = v174;
          v63 = v175;
          v62 = v176;
          v65 = v177;
          v64 = v178;
          v106 = v122;
          v107 = v123;
          v108 = v124;
          v109 = v125;
          v102 = v118;
          v103 = v119;
          v104 = v120;
          v105 = v121;
          v116 = v33;
          v117 = v33;
          v114 = v33;
          v115 = v33;
          v112 = v33;
          v113 = v33;
          v110 = v33;
          v111 = v33;
          do
          {
            v67 = *(&v102 + v57);
            v66 = *(&v102 + v57 + 16);
            v68 = (&v110 + v57);
            *v68 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v59, v67.f64[0]), v61, v67, 1), v63, v66.f64[0]), v65, v66, 1);
            v68[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v58, v67.f64[0]), v60, v67, 1), v62, v66.f64[0]), v64, v66, 1);
            v57 += 32;
          }

          while (v57 != 128);
          v69 = 0;
          v71 = v150;
          v70 = v151;
          v72 = v153;
          v73 = v152;
          v74 = v155;
          v75 = v154;
          v76 = v157;
          v77 = v156;
          v98 = v114;
          v99 = v115;
          v100 = v116;
          v101 = v117;
          v94 = v110;
          v95 = v111;
          v96 = v112;
          v97 = v113;
          v108 = v33;
          v109 = v33;
          v106 = v33;
          v107 = v33;
          v104 = v33;
          v105 = v33;
          v102 = v33;
          v103 = v33;
          do
          {
            v79 = *(&v94 + v69);
            v78 = *(&v94 + v69 + 16);
            v80 = (&v102 + v69);
            *v80 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v71, v79.f64[0]), v73, v79, 1), v75, v78.f64[0]), v77, v78, 1);
            v80[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v70, v79.f64[0]), v72, v79, 1), v74, v78.f64[0]), v76, v78, 1);
            v69 += 32;
          }

          while (v69 != 128);
          v98 = v106;
          v99 = v107;
          v100 = v108;
          v101 = v109;
          v94 = v102;
          v95 = v103;
          v96 = v104;
          v97 = v105;
          *&v81 = ARMatrix4x4DoubleToFloat(&v94);
          v82 = 0;
          v170[0] = v81;
          v170[1] = v83;
          v170[2] = v84;
          v170[3] = v85;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          do
          {
            *(&v94 + v82 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(remove, COERCE_FLOAT(v170[v82])), a7, *&v170[v82], 1), a8, v170[v82], 2), a9, v170[v82], 3);
            ++v82;
          }

          while (v82 != 4);
          [v26 setTransform:{v94.f64[0], v95.f64[0], v96.f64[0], v97.f64[0]}];
          [v26 setIsTracked:1];
        }
      }

      v22 = obj;
      v24 = [obj countByEnumeratingWithState:&v166 objects:v171 count:16];
    }

    while (v24);
  }

  return v22;
}

uint64_t __108__ARGeoTrackingData_anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (ARGeoTrackingData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ARGeoTrackingData;
  v5 = [(ARGeoTrackingData *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"enuOrigin"];
    enuOrigin = v5->_enuOrigin;
    v5->_enuOrigin = v6;

    [coderCopy ar_decodeMatrix4x4ForKey:@"vioFromENU"];
    v5[1] = v8;
    v5[2] = v9;
    v5[3] = v10;
    v5[4] = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  enuOrigin = self->_enuOrigin;
  coderCopy = coder;
  [coderCopy encodeObject:enuOrigin forKey:@"enuOrigin"];
  [coderCopy ar_encodeMatrix4x4:@"vioFromENU" forKey:{*&self[1].super.isa, *&self[2].super.isa, *&self[3].super.isa, *&self[4].super.isa}];
}

@end