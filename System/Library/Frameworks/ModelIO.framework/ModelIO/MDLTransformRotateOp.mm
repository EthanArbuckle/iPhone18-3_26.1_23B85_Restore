@interface MDLTransformRotateOp
- (MDLTransformRotateOp)initWithName:(id)name inverse:(BOOL)inverse order:(unint64_t)order data:(id)data;
- (void)double4x4AtTime:(uint64_t)time@<X2>;
- (void)float4x4AtTime:(uint64_t)time;
@end

@implementation MDLTransformRotateOp

- (MDLTransformRotateOp)initWithName:(id)name inverse:(BOOL)inverse order:(unint64_t)order data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = MDLTransformRotateOp;
  v13 = [(MDLTransformRotateOp *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_animatedValue, data);
    objc_storeStrong(&v14->_name, name);
    v14->_order = order;
    v14->_inverse = inverse;
    v15 = v14;
  }

  return v14;
}

- (void)float4x4AtTime:(uint64_t)time
{
  objc_msgSend_float3AtTime_(*(self + 24), a2, time);
  v248 = v42;
  *&STACK[0x5F0] = 0u;
  *&STACK[0x600] = 0u;
  *&STACK[0x5D0] = 0u;
  *&STACK[0x5E0] = 0u;
  *&STACK[0x5B0] = 0u;
  *&STACK[0x5C0] = 0u;
  *&STACK[0x590] = 0u;
  *&STACK[0x5A0] = 0u;
  v43.f64[0] = 0.0;
  sub_239ED2C10(&STACK[0x590], *&v42 * 0.0174532925, COERCE_UNSIGNED_INT64(1.0), 0.0, v43);
  a41 = 0u;
  *&STACK[0x580] = 0u;
  a39 = 0u;
  a40 = 0u;
  a37 = 0u;
  a38 = 0u;
  a35 = 0u;
  a36 = 0u;
  v44.f64[0] = 0.0;
  v45.f64[0] = 0.0;
  sub_239ED2C10(&a35, *(&v248 + 1) * 0.0174532925, v44, 1.0, v45);
  a33 = 0u;
  a34 = 0u;
  a31 = 0u;
  a32 = 0u;
  a29 = 0u;
  a30 = 0u;
  a27 = 0u;
  a28 = 0u;
  v46.f64[0] = 0.0;
  v47.f64[0] = 1.0;
  sub_239ED2C10(&a27, *(&v248 + 2) * 0.0174532925, v46, 0.0, v47);
  a25 = 0u;
  a26 = 0u;
  a23 = 0u;
  a24 = 0u;
  a21 = 0u;
  a22 = 0u;
  a19 = 0u;
  a20 = 0u;
  v48 = *(self + 32);
  if (v48 > 3)
  {
    switch(v48)
    {
      case 4:
        v145 = 0;
        v147 = *&STACK[0x590];
        v146 = *&STACK[0x5A0];
        v149 = *&STACK[0x5B0];
        v148 = *&STACK[0x5C0];
        v151 = *&STACK[0x5D0];
        v150 = *&STACK[0x5E0];
        v153 = *&STACK[0x5F0];
        v152 = *&STACK[0x600];
        v154 = a32;
        *&STACK[0x650] = a31;
        *&STACK[0x660] = v154;
        v155 = a34;
        *&STACK[0x670] = a33;
        *&STACK[0x680] = v155;
        v156 = a28;
        *&STACK[0x610] = a27;
        *&STACK[0x620] = v156;
        v157 = a30;
        *&STACK[0x630] = a29;
        *&STACK[0x640] = v157;
        a17 = 0u;
        a18 = 0u;
        a15 = 0u;
        a16 = 0u;
        a13 = 0u;
        a14 = 0u;
        a11 = 0u;
        a12 = 0u;
        do
        {
          v159 = *(&STACK[0x610] + v145);
          v158 = *(&STACK[0x610] + v145 + 16);
          v160 = (&a11 + v145);
          *v160 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v147, v159.f64[0]), v149, v159, 1), v151, v158.f64[0]), v153, v158, 1);
          v160[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v146, v159.f64[0]), v148, v159, 1), v150, v158.f64[0]), v152, v158, 1);
          v145 += 32;
        }

        while (v145 != 128);
        v161 = 0;
        a23 = a15;
        a24 = a16;
        a25 = a17;
        a26 = a18;
        a19 = a11;
        a20 = a12;
        a21 = a13;
        a22 = a14;
        v163 = a11;
        v162 = a12;
        v165 = a13;
        v164 = a14;
        v167 = a15;
        v166 = a16;
        v169 = a17;
        v168 = a18;
        v170 = a40;
        *&STACK[0x650] = a39;
        *&STACK[0x660] = v170;
        v171 = *&STACK[0x580];
        *&STACK[0x670] = a41;
        *&STACK[0x680] = v171;
        v172 = a36;
        *&STACK[0x610] = a35;
        *&STACK[0x620] = v172;
        v173 = a38;
        *&STACK[0x630] = a37;
        *&STACK[0x640] = v173;
        a17 = 0u;
        a18 = 0u;
        a15 = 0u;
        a16 = 0u;
        a13 = 0u;
        a14 = 0u;
        a11 = 0u;
        a12 = 0u;
        do
        {
          v175 = *(&STACK[0x610] + v161);
          v174 = *(&STACK[0x610] + v161 + 16);
          v176 = (&a11 + v161);
          *v176 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v163, v175.f64[0]), v165, v175, 1), v167, v174.f64[0]), v169, v174, 1);
          v176[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v162, v175.f64[0]), v164, v175, 1), v166, v174.f64[0]), v168, v174, 1);
          v161 += 32;
        }

        while (v161 != 128);
        goto LABEL_37;
      case 5:
        v209 = 0;
        v211 = a35;
        v210 = a36;
        v213 = a37;
        v212 = a38;
        v215 = a39;
        v214 = a40;
        v217 = a41;
        v216 = *&STACK[0x580];
        v218 = *&STACK[0x5E0];
        *&STACK[0x650] = *&STACK[0x5D0];
        *&STACK[0x660] = v218;
        v219 = *&STACK[0x600];
        *&STACK[0x670] = *&STACK[0x5F0];
        *&STACK[0x680] = v219;
        v220 = *&STACK[0x5A0];
        *&STACK[0x610] = *&STACK[0x590];
        *&STACK[0x620] = v220;
        v221 = *&STACK[0x5C0];
        *&STACK[0x630] = *&STACK[0x5B0];
        *&STACK[0x640] = v221;
        a17 = 0u;
        a18 = 0u;
        a15 = 0u;
        a16 = 0u;
        a13 = 0u;
        a14 = 0u;
        a11 = 0u;
        a12 = 0u;
        do
        {
          v223 = *(&STACK[0x610] + v209);
          v222 = *(&STACK[0x610] + v209 + 16);
          v224 = (&a11 + v209);
          *v224 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v211, v223.f64[0]), v213, v223, 1), v215, v222.f64[0]), v217, v222, 1);
          v224[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v210, v223.f64[0]), v212, v223, 1), v214, v222.f64[0]), v216, v222, 1);
          v209 += 32;
        }

        while (v209 != 128);
        v225 = 0;
        a23 = a15;
        a24 = a16;
        a25 = a17;
        a26 = a18;
        a19 = a11;
        a20 = a12;
        a21 = a13;
        a22 = a14;
        v227 = a11;
        v226 = a12;
        v229 = a13;
        v228 = a14;
        v231 = a15;
        v230 = a16;
        v233 = a17;
        v232 = a18;
        v234 = a32;
        *&STACK[0x650] = a31;
        *&STACK[0x660] = v234;
        v235 = a34;
        *&STACK[0x670] = a33;
        *&STACK[0x680] = v235;
        v236 = a28;
        *&STACK[0x610] = a27;
        *&STACK[0x620] = v236;
        v237 = a30;
        *&STACK[0x630] = a29;
        *&STACK[0x640] = v237;
        a17 = 0u;
        a18 = 0u;
        a15 = 0u;
        a16 = 0u;
        a13 = 0u;
        a14 = 0u;
        a11 = 0u;
        a12 = 0u;
        do
        {
          v239 = *(&STACK[0x610] + v225);
          v238 = *(&STACK[0x610] + v225 + 16);
          v240 = (&a11 + v225);
          *v240 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v227, v239.f64[0]), v229, v239, 1), v231, v238.f64[0]), v233, v238, 1);
          v240[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v226, v239.f64[0]), v228, v239, 1), v230, v238.f64[0]), v232, v238, 1);
          v225 += 32;
        }

        while (v225 != 128);
        goto LABEL_37;
      case 6:
        v81 = 0;
        v83 = *&STACK[0x590];
        v82 = *&STACK[0x5A0];
        v85 = *&STACK[0x5B0];
        v84 = *&STACK[0x5C0];
        v87 = *&STACK[0x5D0];
        v86 = *&STACK[0x5E0];
        v89 = *&STACK[0x5F0];
        v88 = *&STACK[0x600];
        v90 = a40;
        *&STACK[0x650] = a39;
        *&STACK[0x660] = v90;
        v91 = *&STACK[0x580];
        *&STACK[0x670] = a41;
        *&STACK[0x680] = v91;
        v92 = a36;
        *&STACK[0x610] = a35;
        *&STACK[0x620] = v92;
        v93 = a38;
        *&STACK[0x630] = a37;
        *&STACK[0x640] = v93;
        a17 = 0u;
        a18 = 0u;
        a15 = 0u;
        a16 = 0u;
        a13 = 0u;
        a14 = 0u;
        a11 = 0u;
        a12 = 0u;
        do
        {
          v95 = *(&STACK[0x610] + v81);
          v94 = *(&STACK[0x610] + v81 + 16);
          v96 = (&a11 + v81);
          *v96 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v83, v95.f64[0]), v85, v95, 1), v87, v94.f64[0]), v89, v94, 1);
          v96[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v82, v95.f64[0]), v84, v95, 1), v86, v94.f64[0]), v88, v94, 1);
          v81 += 32;
        }

        while (v81 != 128);
        v97 = 0;
        a23 = a15;
        a24 = a16;
        a25 = a17;
        a26 = a18;
        a19 = a11;
        a20 = a12;
        a21 = a13;
        a22 = a14;
        v99 = a11;
        v98 = a12;
        v101 = a13;
        v100 = a14;
        v103 = a15;
        v102 = a16;
        v105 = a17;
        v104 = a18;
        v106 = a32;
        *&STACK[0x650] = a31;
        *&STACK[0x660] = v106;
        v107 = a34;
        *&STACK[0x670] = a33;
        *&STACK[0x680] = v107;
        v108 = a28;
        *&STACK[0x610] = a27;
        *&STACK[0x620] = v108;
        v109 = a30;
        *&STACK[0x630] = a29;
        *&STACK[0x640] = v109;
        a17 = 0u;
        a18 = 0u;
        a15 = 0u;
        a16 = 0u;
        a13 = 0u;
        a14 = 0u;
        a11 = 0u;
        a12 = 0u;
        do
        {
          v111 = *(&STACK[0x610] + v97);
          v110 = *(&STACK[0x610] + v97 + 16);
          v112 = (&a11 + v97);
          *v112 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v99, v111.f64[0]), v101, v111, 1), v103, v110.f64[0]), v105, v110, 1);
          v112[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v98, v111.f64[0]), v100, v111, 1), v102, v110.f64[0]), v104, v110, 1);
          v97 += 32;
        }

        while (v97 != 128);
        goto LABEL_37;
    }
  }

  else
  {
    switch(v48)
    {
      case 1:
        v113 = 0;
        v115 = a27;
        v114 = a28;
        v117 = a29;
        v116 = a30;
        v119 = a31;
        v118 = a32;
        v121 = a33;
        v120 = a34;
        v122 = a40;
        *&STACK[0x650] = a39;
        *&STACK[0x660] = v122;
        v123 = *&STACK[0x580];
        *&STACK[0x670] = a41;
        *&STACK[0x680] = v123;
        v124 = a36;
        *&STACK[0x610] = a35;
        *&STACK[0x620] = v124;
        v125 = a38;
        *&STACK[0x630] = a37;
        *&STACK[0x640] = v125;
        a17 = 0u;
        a18 = 0u;
        a15 = 0u;
        a16 = 0u;
        a13 = 0u;
        a14 = 0u;
        a11 = 0u;
        a12 = 0u;
        do
        {
          v127 = *(&STACK[0x610] + v113);
          v126 = *(&STACK[0x610] + v113 + 16);
          v128 = (&a11 + v113);
          *v128 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v115, v127.f64[0]), v117, v127, 1), v119, v126.f64[0]), v121, v126, 1);
          v128[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v114, v127.f64[0]), v116, v127, 1), v118, v126.f64[0]), v120, v126, 1);
          v113 += 32;
        }

        while (v113 != 128);
        v129 = 0;
        a23 = a15;
        a24 = a16;
        a25 = a17;
        a26 = a18;
        a19 = a11;
        a20 = a12;
        a21 = a13;
        a22 = a14;
        v131 = a11;
        v130 = a12;
        v133 = a13;
        v132 = a14;
        v135 = a15;
        v134 = a16;
        v137 = a17;
        v136 = a18;
        v138 = *&STACK[0x5E0];
        *&STACK[0x650] = *&STACK[0x5D0];
        *&STACK[0x660] = v138;
        v139 = *&STACK[0x600];
        *&STACK[0x670] = *&STACK[0x5F0];
        *&STACK[0x680] = v139;
        v140 = *&STACK[0x5A0];
        *&STACK[0x610] = *&STACK[0x590];
        *&STACK[0x620] = v140;
        v141 = *&STACK[0x5C0];
        *&STACK[0x630] = *&STACK[0x5B0];
        *&STACK[0x640] = v141;
        a17 = 0u;
        a18 = 0u;
        a15 = 0u;
        a16 = 0u;
        a13 = 0u;
        a14 = 0u;
        a11 = 0u;
        a12 = 0u;
        do
        {
          v143 = *(&STACK[0x610] + v129);
          v142 = *(&STACK[0x610] + v129 + 16);
          v144 = (&a11 + v129);
          *v144 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v131, v143.f64[0]), v133, v143, 1), v135, v142.f64[0]), v137, v142, 1);
          v144[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v130, v143.f64[0]), v132, v143, 1), v134, v142.f64[0]), v136, v142, 1);
          v129 += 32;
        }

        while (v129 != 128);
        goto LABEL_37;
      case 2:
        v177 = 0;
        v179 = a35;
        v178 = a36;
        v181 = a37;
        v180 = a38;
        v183 = a39;
        v182 = a40;
        v185 = a41;
        v184 = *&STACK[0x580];
        v186 = a32;
        *&STACK[0x650] = a31;
        *&STACK[0x660] = v186;
        v187 = a34;
        *&STACK[0x670] = a33;
        *&STACK[0x680] = v187;
        v188 = a28;
        *&STACK[0x610] = a27;
        *&STACK[0x620] = v188;
        v189 = a30;
        *&STACK[0x630] = a29;
        *&STACK[0x640] = v189;
        a17 = 0u;
        a18 = 0u;
        a15 = 0u;
        a16 = 0u;
        a13 = 0u;
        a14 = 0u;
        a11 = 0u;
        a12 = 0u;
        do
        {
          v191 = *(&STACK[0x610] + v177);
          v190 = *(&STACK[0x610] + v177 + 16);
          v192 = (&a11 + v177);
          *v192 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v179, v191.f64[0]), v181, v191, 1), v183, v190.f64[0]), v185, v190, 1);
          v192[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v178, v191.f64[0]), v180, v191, 1), v182, v190.f64[0]), v184, v190, 1);
          v177 += 32;
        }

        while (v177 != 128);
        v193 = 0;
        a23 = a15;
        a24 = a16;
        a25 = a17;
        a26 = a18;
        a19 = a11;
        a20 = a12;
        a21 = a13;
        a22 = a14;
        v195 = a11;
        v194 = a12;
        v197 = a13;
        v196 = a14;
        v199 = a15;
        v198 = a16;
        v201 = a17;
        v200 = a18;
        v202 = *&STACK[0x5E0];
        *&STACK[0x650] = *&STACK[0x5D0];
        *&STACK[0x660] = v202;
        v203 = *&STACK[0x600];
        *&STACK[0x670] = *&STACK[0x5F0];
        *&STACK[0x680] = v203;
        v204 = *&STACK[0x5A0];
        *&STACK[0x610] = *&STACK[0x590];
        *&STACK[0x620] = v204;
        v205 = *&STACK[0x5C0];
        *&STACK[0x630] = *&STACK[0x5B0];
        *&STACK[0x640] = v205;
        a17 = 0u;
        a18 = 0u;
        a15 = 0u;
        a16 = 0u;
        a13 = 0u;
        a14 = 0u;
        a11 = 0u;
        a12 = 0u;
        do
        {
          v207 = *(&STACK[0x610] + v193);
          v206 = *(&STACK[0x610] + v193 + 16);
          v208 = (&a11 + v193);
          *v208 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v195, v207.f64[0]), v197, v207, 1), v199, v206.f64[0]), v201, v206, 1);
          v208[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v194, v207.f64[0]), v196, v207, 1), v198, v206.f64[0]), v200, v206, 1);
          v193 += 32;
        }

        while (v193 != 128);
        goto LABEL_37;
      case 3:
        v49 = 0;
        v51 = a27;
        v50 = a28;
        v53 = a29;
        v52 = a30;
        v55 = a31;
        v54 = a32;
        v57 = a33;
        v56 = a34;
        v58 = *&STACK[0x5E0];
        *&STACK[0x650] = *&STACK[0x5D0];
        *&STACK[0x660] = v58;
        v59 = *&STACK[0x600];
        *&STACK[0x670] = *&STACK[0x5F0];
        *&STACK[0x680] = v59;
        v60 = *&STACK[0x5A0];
        *&STACK[0x610] = *&STACK[0x590];
        *&STACK[0x620] = v60;
        v61 = *&STACK[0x5C0];
        *&STACK[0x630] = *&STACK[0x5B0];
        *&STACK[0x640] = v61;
        a17 = 0u;
        a18 = 0u;
        a15 = 0u;
        a16 = 0u;
        a13 = 0u;
        a14 = 0u;
        a11 = 0u;
        a12 = 0u;
        do
        {
          v63 = *(&STACK[0x610] + v49);
          v62 = *(&STACK[0x610] + v49 + 16);
          v64 = (&a11 + v49);
          *v64 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v51, v63.f64[0]), v53, v63, 1), v55, v62.f64[0]), v57, v62, 1);
          v64[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v50, v63.f64[0]), v52, v63, 1), v54, v62.f64[0]), v56, v62, 1);
          v49 += 32;
        }

        while (v49 != 128);
        v65 = 0;
        a23 = a15;
        a24 = a16;
        a25 = a17;
        a26 = a18;
        a19 = a11;
        a20 = a12;
        a21 = a13;
        a22 = a14;
        v67 = a11;
        v66 = a12;
        v69 = a13;
        v68 = a14;
        v71 = a15;
        v70 = a16;
        v73 = a17;
        v72 = a18;
        v74 = a40;
        *&STACK[0x650] = a39;
        *&STACK[0x660] = v74;
        v75 = *&STACK[0x580];
        *&STACK[0x670] = a41;
        *&STACK[0x680] = v75;
        v76 = a36;
        *&STACK[0x610] = a35;
        *&STACK[0x620] = v76;
        v77 = a38;
        *&STACK[0x630] = a37;
        *&STACK[0x640] = v77;
        a17 = 0u;
        a18 = 0u;
        a15 = 0u;
        a16 = 0u;
        a13 = 0u;
        a14 = 0u;
        a11 = 0u;
        a12 = 0u;
        do
        {
          v79 = *(&STACK[0x610] + v65);
          v78 = *(&STACK[0x610] + v65 + 16);
          v80 = (&a11 + v65);
          *v80 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v67, v79.f64[0]), v69, v79, 1), v71, v78.f64[0]), v73, v78, 1);
          v80[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v66, v79.f64[0]), v68, v79, 1), v70, v78.f64[0]), v72, v78, 1);
          v65 += 32;
        }

        while (v65 != 128);
LABEL_37:
        a23 = a15;
        a24 = a16;
        a25 = a17;
        a26 = a18;
        a19 = a11;
        a20 = a12;
        a21 = a13;
        a22 = a14;
        break;
    }
  }

  v241 = 0;
  *&STACK[0x630] = 0u;
  *&STACK[0x640] = 0u;
  *&STACK[0x610] = 0u;
  *&STACK[0x620] = 0u;
  do
  {
    v242 = 0;
    v243 = (&a19 + 2 * v241);
    v245 = *v243;
    v244 = v243[1];
    v246 = *(&STACK[0x610] + v241);
    do
    {
      vars0 = v245;
      v247 = *(&vars0 + (v242 & 3));
      v249 = v246;
      *(&v249 & 0xFFFFFFFFFFFFFFF3 | (4 * (v242 & 3))) = v247;
      v246 = v249;
      ++v242;
    }

    while (v242 != 4);
    *(&STACK[0x610] + v241++) = v249;
  }

  while (v241 != 4);
  if (*(self + 8))
  {
    v251.columns[0] = *&STACK[0x610];
    v251.columns[1] = *&STACK[0x620];
    v251.columns[2] = *&STACK[0x630];
    v251.columns[3] = *&STACK[0x640];
    __invert_f4(v251);
  }
}

- (void)double4x4AtTime:(uint64_t)time@<X2>
{
  v45 = *(self + 24);
  if (v45)
  {
    objc_msgSend_double3AtTime_(v45, a2, time);
    v46 = a42;
    *&v215 = vextq_s8(v46, v46, 8uLL).u64[0];
    v47 = a43;
  }

  else
  {
    v46.i64[0] = 0;
    v215 = 0.0;
    v47 = 0.0;
  }

  a40 = 0u;
  a41 = 0u;
  a38 = 0u;
  a39 = 0u;
  a36 = 0u;
  a37 = 0u;
  a34 = 0u;
  a35 = 0u;
  a5.f64[0] = 0.0;
  sub_239ED2C10(&a34, *v46.i64 * 0.0174532925, COERCE_UNSIGNED_INT64(1.0), 0.0, a5);
  a32 = 0u;
  a33 = 0u;
  a30 = 0u;
  a31 = 0u;
  a28 = 0u;
  a29 = 0u;
  a26 = 0u;
  a27 = 0u;
  v48.f64[0] = 0.0;
  sub_239ED2C10(&a26, v215 * 0.0174532925, 0, 1.0, v48);
  a24 = 0u;
  a25 = 0u;
  a22 = 0u;
  a23 = 0u;
  a20 = 0u;
  a21 = 0u;
  a18 = 0u;
  a19 = 0u;
  v49.f64[0] = 1.0;
  sub_239ED2C10(&a18, v47 * 0.0174532925, 0, 0.0, v49);
  v51 = *MEMORY[0x277D860A0];
  v50 = *(MEMORY[0x277D860A0] + 16);
  v53 = *(MEMORY[0x277D860A0] + 32);
  v52 = *(MEMORY[0x277D860A0] + 48);
  v55 = *(MEMORY[0x277D860A0] + 64);
  v54 = *(MEMORY[0x277D860A0] + 80);
  v57 = *(MEMORY[0x277D860A0] + 96);
  v56 = *(MEMORY[0x277D860A0] + 112);
  v58 = *(self + 32);
  if (v58 > 3)
  {
    switch(v58)
    {
      case 4:
        v137 = 0;
        v139 = a34;
        v138 = a35;
        v141 = a36;
        v140 = a37;
        v143 = a38;
        v142 = a39;
        v145 = a40;
        v144 = a41;
        v146 = a23;
        *&STACK[0x540] = a22;
        *&STACK[0x550] = v146;
        v147 = a25;
        *&STACK[0x560] = a24;
        *&STACK[0x570] = v147;
        v148 = a19;
        *&STACK[0x500] = a18;
        *&STACK[0x510] = v148;
        v149 = a21;
        *&STACK[0x520] = a20;
        *&STACK[0x530] = v149;
        v216 = 0u;
        vars0 = 0u;
        do
        {
          v151 = *(&STACK[0x500] + v137);
          v150 = *(&STACK[0x500] + v137 + 16);
          v152 = (&v216 + v137);
          *v152 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v139, v151.f64[0]), v141, v151, 1), v143, v150.f64[0]), v145, v150, 1);
          v152[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v138, v151.f64[0]), v140, v151, 1), v142, v150.f64[0]), v144, v150, 1);
          v137 += 32;
        }

        while (v137 != 128);
        v153 = 0;
        v155 = v216;
        v154 = vars0;
        v156 = a31;
        *&STACK[0x540] = a30;
        *&STACK[0x550] = v156;
        v157 = a33;
        *&STACK[0x560] = a32;
        *&STACK[0x570] = v157;
        v158 = a27;
        *&STACK[0x500] = a26;
        *&STACK[0x510] = v158;
        v159 = a29;
        *&STACK[0x520] = a28;
        *&STACK[0x530] = v159;
        v216 = 0u;
        vars0 = 0u;
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v223 = 0u;
        do
        {
          v161 = *(&STACK[0x500] + v153);
          v160 = *(&STACK[0x500] + v153 + 16);
          v162 = (&v216 + v153);
          *v162 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v155, v161.f64[0]), 0, v161, 1), 0, v160.f64[0]), 0, v160, 1);
          v162[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v154, v161.f64[0]), 0, v161, 1), 0, v160.f64[0]), 0, v160, 1);
          v153 += 32;
        }

        while (v153 != 128);
        break;
      case 5:
        v189 = 0;
        v191 = a26;
        v190 = a27;
        v193 = a28;
        v192 = a29;
        v195 = a30;
        v194 = a31;
        v197 = a32;
        v196 = a33;
        v198 = a39;
        *&STACK[0x540] = a38;
        *&STACK[0x550] = v198;
        v199 = a41;
        *&STACK[0x560] = a40;
        *&STACK[0x570] = v199;
        v200 = a35;
        *&STACK[0x500] = a34;
        *&STACK[0x510] = v200;
        v201 = a37;
        *&STACK[0x520] = a36;
        *&STACK[0x530] = v201;
        v216 = 0u;
        vars0 = 0u;
        do
        {
          v203 = *(&STACK[0x500] + v189);
          v202 = *(&STACK[0x500] + v189 + 16);
          v204 = (&v216 + v189);
          *v204 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v191, v203.f64[0]), v193, v203, 1), v195, v202.f64[0]), v197, v202, 1);
          v204[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v190, v203.f64[0]), v192, v203, 1), v194, v202.f64[0]), v196, v202, 1);
          v189 += 32;
        }

        while (v189 != 128);
        v205 = 0;
        v207 = v216;
        v206 = vars0;
        v208 = a23;
        *&STACK[0x540] = a22;
        *&STACK[0x550] = v208;
        v209 = a25;
        *&STACK[0x560] = a24;
        *&STACK[0x570] = v209;
        v210 = a19;
        *&STACK[0x500] = a18;
        *&STACK[0x510] = v210;
        v211 = a21;
        *&STACK[0x520] = a20;
        *&STACK[0x530] = v211;
        v216 = 0u;
        vars0 = 0u;
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v223 = 0u;
        do
        {
          v213 = *(&STACK[0x500] + v205);
          v212 = *(&STACK[0x500] + v205 + 16);
          v214 = (&v216 + v205);
          *v214 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v207, v213.f64[0]), 0, v213, 1), 0, v212.f64[0]), 0, v212, 1);
          v214[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v206, v213.f64[0]), 0, v213, 1), 0, v212.f64[0]), 0, v212, 1);
          v205 += 32;
        }

        while (v205 != 128);
        break;
      case 6:
        v85 = 0;
        v87 = a34;
        v86 = a35;
        v89 = a36;
        v88 = a37;
        v91 = a38;
        v90 = a39;
        v93 = a40;
        v92 = a41;
        v94 = a31;
        *&STACK[0x540] = a30;
        *&STACK[0x550] = v94;
        v95 = a33;
        *&STACK[0x560] = a32;
        *&STACK[0x570] = v95;
        v96 = a27;
        *&STACK[0x500] = a26;
        *&STACK[0x510] = v96;
        v97 = a29;
        *&STACK[0x520] = a28;
        *&STACK[0x530] = v97;
        v216 = 0u;
        vars0 = 0u;
        do
        {
          v99 = *(&STACK[0x500] + v85);
          v98 = *(&STACK[0x500] + v85 + 16);
          v100 = (&v216 + v85);
          *v100 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v87, v99.f64[0]), v89, v99, 1), v91, v98.f64[0]), v93, v98, 1);
          v100[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v86, v99.f64[0]), v88, v99, 1), v90, v98.f64[0]), v92, v98, 1);
          v85 += 32;
        }

        while (v85 != 128);
        v101 = 0;
        v103 = v216;
        v102 = vars0;
        v104 = a23;
        *&STACK[0x540] = a22;
        *&STACK[0x550] = v104;
        v105 = a25;
        *&STACK[0x560] = a24;
        *&STACK[0x570] = v105;
        v106 = a19;
        *&STACK[0x500] = a18;
        *&STACK[0x510] = v106;
        v107 = a21;
        *&STACK[0x520] = a20;
        *&STACK[0x530] = v107;
        v216 = 0u;
        vars0 = 0u;
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v223 = 0u;
        do
        {
          v109 = *(&STACK[0x500] + v101);
          v108 = *(&STACK[0x500] + v101 + 16);
          v110 = (&v216 + v101);
          *v110 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v103, v109.f64[0]), 0, v109, 1), 0, v108.f64[0]), 0, v108, 1);
          v110[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v102, v109.f64[0]), 0, v109, 1), 0, v108.f64[0]), 0, v108, 1);
          v101 += 32;
        }

        while (v101 != 128);
        break;
      default:
        goto LABEL_41;
    }
  }

  else
  {
    switch(v58)
    {
      case 1:
        v111 = 0;
        v113 = a18;
        v112 = a19;
        v115 = a20;
        v114 = a21;
        v117 = a22;
        v116 = a23;
        v119 = a24;
        v118 = a25;
        v120 = a31;
        *&STACK[0x540] = a30;
        *&STACK[0x550] = v120;
        v121 = a33;
        *&STACK[0x560] = a32;
        *&STACK[0x570] = v121;
        v122 = a27;
        *&STACK[0x500] = a26;
        *&STACK[0x510] = v122;
        v123 = a29;
        *&STACK[0x520] = a28;
        *&STACK[0x530] = v123;
        v216 = 0u;
        vars0 = 0u;
        do
        {
          v125 = *(&STACK[0x500] + v111);
          v124 = *(&STACK[0x500] + v111 + 16);
          v126 = (&v216 + v111);
          *v126 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v113, v125.f64[0]), v115, v125, 1), v117, v124.f64[0]), v119, v124, 1);
          v126[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v112, v125.f64[0]), v114, v125, 1), v116, v124.f64[0]), v118, v124, 1);
          v111 += 32;
        }

        while (v111 != 128);
        v127 = 0;
        v129 = v216;
        v128 = vars0;
        v130 = a39;
        *&STACK[0x540] = a38;
        *&STACK[0x550] = v130;
        v131 = a41;
        *&STACK[0x560] = a40;
        *&STACK[0x570] = v131;
        v132 = a35;
        *&STACK[0x500] = a34;
        *&STACK[0x510] = v132;
        v133 = a37;
        *&STACK[0x520] = a36;
        *&STACK[0x530] = v133;
        v216 = 0u;
        vars0 = 0u;
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v223 = 0u;
        do
        {
          v135 = *(&STACK[0x500] + v127);
          v134 = *(&STACK[0x500] + v127 + 16);
          v136 = (&v216 + v127);
          *v136 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v129, v135.f64[0]), 0, v135, 1), 0, v134.f64[0]), 0, v134, 1);
          v136[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v128, v135.f64[0]), 0, v135, 1), 0, v134.f64[0]), 0, v134, 1);
          v127 += 32;
        }

        while (v127 != 128);
        break;
      case 2:
        v163 = 0;
        v165 = a26;
        v164 = a27;
        v167 = a28;
        v166 = a29;
        v169 = a30;
        v168 = a31;
        v171 = a32;
        v170 = a33;
        v172 = a23;
        *&STACK[0x540] = a22;
        *&STACK[0x550] = v172;
        v173 = a25;
        *&STACK[0x560] = a24;
        *&STACK[0x570] = v173;
        v174 = a19;
        *&STACK[0x500] = a18;
        *&STACK[0x510] = v174;
        v175 = a21;
        *&STACK[0x520] = a20;
        *&STACK[0x530] = v175;
        v216 = 0u;
        vars0 = 0u;
        do
        {
          v177 = *(&STACK[0x500] + v163);
          v176 = *(&STACK[0x500] + v163 + 16);
          v178 = (&v216 + v163);
          *v178 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v165, v177.f64[0]), v167, v177, 1), v169, v176.f64[0]), v171, v176, 1);
          v178[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v164, v177.f64[0]), v166, v177, 1), v168, v176.f64[0]), v170, v176, 1);
          v163 += 32;
        }

        while (v163 != 128);
        v179 = 0;
        v181 = v216;
        v180 = vars0;
        v182 = a39;
        *&STACK[0x540] = a38;
        *&STACK[0x550] = v182;
        v183 = a41;
        *&STACK[0x560] = a40;
        *&STACK[0x570] = v183;
        v184 = a35;
        *&STACK[0x500] = a34;
        *&STACK[0x510] = v184;
        v185 = a37;
        *&STACK[0x520] = a36;
        *&STACK[0x530] = v185;
        v216 = 0u;
        vars0 = 0u;
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v223 = 0u;
        do
        {
          v187 = *(&STACK[0x500] + v179);
          v186 = *(&STACK[0x500] + v179 + 16);
          v188 = (&v216 + v179);
          *v188 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v181, v187.f64[0]), 0, v187, 1), 0, v186.f64[0]), 0, v186, 1);
          v188[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v180, v187.f64[0]), 0, v187, 1), 0, v186.f64[0]), 0, v186, 1);
          v179 += 32;
        }

        while (v179 != 128);
        break;
      case 3:
        v59 = 0;
        v61 = a18;
        v60 = a19;
        v63 = a20;
        v62 = a21;
        v65 = a22;
        v64 = a23;
        v67 = a24;
        v66 = a25;
        v68 = a39;
        *&STACK[0x540] = a38;
        *&STACK[0x550] = v68;
        v69 = a41;
        *&STACK[0x560] = a40;
        *&STACK[0x570] = v69;
        v70 = a35;
        *&STACK[0x500] = a34;
        *&STACK[0x510] = v70;
        v71 = a37;
        *&STACK[0x520] = a36;
        *&STACK[0x530] = v71;
        v216 = 0u;
        vars0 = 0u;
        do
        {
          v73 = *(&STACK[0x500] + v59);
          v72 = *(&STACK[0x500] + v59 + 16);
          v74 = (&v216 + v59);
          *v74 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v61, v73.f64[0]), v63, v73, 1), v65, v72.f64[0]), v67, v72, 1);
          v74[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v60, v73.f64[0]), v62, v73, 1), v64, v72.f64[0]), v66, v72, 1);
          v59 += 32;
        }

        while (v59 != 128);
        v75 = 0;
        v77 = v216;
        v76 = vars0;
        v78 = a31;
        *&STACK[0x540] = a30;
        *&STACK[0x550] = v78;
        v79 = a33;
        *&STACK[0x560] = a32;
        *&STACK[0x570] = v79;
        v80 = a27;
        *&STACK[0x500] = a26;
        *&STACK[0x510] = v80;
        v81 = a29;
        *&STACK[0x520] = a28;
        *&STACK[0x530] = v81;
        v216 = 0u;
        vars0 = 0u;
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v223 = 0u;
        do
        {
          v83 = *(&STACK[0x500] + v75);
          v82 = *(&STACK[0x500] + v75 + 16);
          v84 = (&v216 + v75);
          *v84 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v77, v83.f64[0]), 0, v83, 1), 0, v82.f64[0]), 0, v82, 1);
          v84[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v76, v83.f64[0]), 0, v83, 1), 0, v82.f64[0]), 0, v82, 1);
          v75 += 32;
        }

        while (v75 != 128);
        break;
      default:
        goto LABEL_41;
    }
  }

  v51 = v216;
  v50 = vars0;
  v53 = v218;
  v52 = v219;
  v55 = v220;
  v54 = v221;
  v57 = v222;
  v56 = v223;
LABEL_41:
  if (*(self + 8))
  {
    *&STACK[0x500] = v51;
    *&STACK[0x510] = v50;
    *&STACK[0x520] = v53;
    *&STACK[0x530] = v52;
    *&STACK[0x540] = v55;
    *&STACK[0x550] = v54;
    *&STACK[0x560] = v57;
    *&STACK[0x570] = v56;
    __invert_d4();
  }

  else
  {
    *a4 = v51;
    a4[1] = v50;
    a4[2] = v53;
    a4[3] = v52;
    a4[4] = v55;
    a4[5] = v54;
    a4[6] = v57;
    a4[7] = v56;
  }
}

@end