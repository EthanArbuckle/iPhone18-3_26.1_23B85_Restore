@interface RAWDefringeFilter
- (id)outputImage;
@end

@implementation RAWDefringeFilter

- (id)outputImage
{
  v231[3] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104();
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWDefringeFilter", &unk_233945DBE, buf, 2u);
    }

    v224[0] = MEMORY[0x277D85DD0];
    v224[1] = 3221225472;
    v224[2] = sub_2338A70E0;
    v224[3] = &unk_2789EE800;
    v224[4] = self;
    v202 = MEMORY[0x2383AC810](v224);
    v205 = objc_msgSend_kernelWithName_(DeFringeKernels, v5, @"deFringeNlimited", v6, v7);
    v203 = objc_msgSend_kernelWithName_(DeFringeKernels, v8, @"deFringeAxial", v9, v10);
    v213 = objc_msgSend_kernelWithName_(FringeDirectionsKernels, v11, @"boostAndGamma", v12, v13);
    v212 = objc_msgSend_kernelWithName_(FringeDirectionsKernels, v14, @"fringeDirections1_7", v15, v16);
    v211 = objc_msgSend_kernelWithName_(FringeDirectionsKernels, v17, @"fringeDirections2_7", v18, v19);
    v210 = objc_msgSend_kernelWithName_(FringeDirectionsKernels, v20, @"fringeDisplacementLimited", v21, v22);
    v208 = objc_msgSend_kernelWithName_(FringeDirectionsKernels, v23, @"filterDisplacements", v24, v25);
    v206 = objc_msgSend_kernelWithName_(FringeDirectionsKernels, v26, @"displace", v27, v28);
    v207 = objc_msgSend_kernelWithName_(FringeEdgesKernels, v29, @"fringeEdges", v30, v31);
    v215 = objc_msgSend_kernelWithName_(FringeEdgesKernels, v32, @"fringeEdgeThicken", v33, v34);
    objc_msgSend_floatValue(self->inputWidth, v35, v36, v37, v38);
    v40 = v39;
    objc_msgSend_floatValue(self->inputAxialWidth, v41, v42, v43, v44);
    v49 = v48;
    if (v48 > v40)
    {
      v40 = v48;
    }

    v50 = v40;
    if (v40 >= 4.5)
    {
      if (v50 >= 5.207)
      {
        if (v50 >= 5.707)
        {
          if (v50 >= 6.118)
          {
            if (v50 >= 6.532)
            {
              if (v50 >= 6.914)
              {
                if (v50 >= 7.082)
                {
                  if (v50 >= 7.384)
                  {
                    if (v50 >= 7.803)
                    {
                      if (v50 >= 8.062)
                      {
                        if (v50 >= 8.183)
                        {
                          if (v50 >= 8.357)
                          {
                            if (v50 >= 8.736)
                            {
                              v51 = 14;
                            }

                            else
                            {
                              v51 = 13;
                            }
                          }

                          else
                          {
                            v51 = 12;
                          }
                        }

                        else
                        {
                          v51 = 11;
                        }
                      }

                      else
                      {
                        v51 = 10;
                      }
                    }

                    else
                    {
                      v51 = 9;
                    }
                  }

                  else
                  {
                    v51 = 8;
                  }
                }

                else
                {
                  v51 = 7;
                }
              }

              else
              {
                v51 = 6;
              }
            }

            else
            {
              v51 = 5;
            }
          }

          else
          {
            v51 = 4;
          }
        }

        else
        {
          v51 = 3;
        }
      }

      else
      {
        v51 = 2;
      }
    }

    else
    {
      v51 = 1;
    }

    v52 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v45, @"thickenDirections%02d", v46, v47, v51);
    v204 = objc_msgSend_kernelWithName_(FringeDirectionsKernels, v53, v52, v54, v55);

    selfCopy = self;
    inputImage = self->inputImage;
    objc_msgSend_extent(inputImage, v57, v58, v59, v60);
    v62 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(selfCopy, v61, v213, inputImage, &unk_28492E790, 0, selfCopy->inputColorSpace);
    objc_msgSend_extent(v62, v63, v64, v65, v66);
    v234 = CGRectInset(v233, -3.0, -3.0);
    v68 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(selfCopy, v67, v212, v62, &unk_28492E7B0, 0, selfCopy->inputColorSpace, v234.origin.x, v234.origin.y, v234.size.width, v234.size.height);
    objc_msgSend_extent(v62, v69, v70, v71, v72);
    v236 = CGRectInset(v235, -3.0, -3.0);
    v74 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(selfCopy, v73, v211, v62, &unk_28492E7D0, 0, selfCopy->inputColorSpace, v236.origin.x, v236.origin.y, v236.size.width, v236.size.height);
    objc_msgSend_extent(v68, v75, v76, v77, v78);
    v238 = CGRectInset(v237, -4.0, -4.0);
    x = v238.origin.x;
    y = v238.origin.y;
    width = v238.size.width;
    height = v238.size.height;
    inputWidth = self->inputWidth;
    v231[0] = v74;
    v231[1] = inputWidth;
    v231[2] = &unk_28495DBA0;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v84, v231, 3, v85);
    v209 = v62;
    v216 = v74;
    v86 = v201 = v68;
    v88 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v87, v210, v68, &unk_28492E7F0, x, y, width, height);

    objc_msgSend_extent(v88, v89, v90, v91, v92);
    v240 = CGRectInset(v239, -1.0, -1.0);
    v214 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(selfCopy, v93, v208, v88, &unk_28492E810, 0, selfCopy->inputColorSpace, v240.origin.x, v240.origin.y, v240.size.width, v240.size.height);

    v94 = self->inputImage;
    v95 = v68;
    objc_msgSend_extent(v94, v96, v97, v98, v99);
    v242 = CGRectInset(v241, -1.0, -1.0);
    v101 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(selfCopy, v100, v207, v94, &unk_28492E830, 0, selfCopy->inputColorSpace, v242.origin.x, v242.origin.y, v242.size.width, v242.size.height);
    v102 = self->inputImage;
    objc_msgSend_extent(v102, v103, v104, v105, v106);
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v230[0] = v101;
    v230[1] = v95;
    v230[2] = v214;
    v117 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v115, v230, 3, v116);
    v118 = v101;
    v218 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(selfCopy, v119, v206, v102, &unk_28492E850, v117, selfCopy->inputColorSpace, v108, v110, v112, v114);

    v124 = -5.0;
    if (v50 < 8.736)
    {
      v124 = -4.0;
      if (v50 < 7.803)
      {
        v124 = -3.0;
        if (v50 < 6.914)
        {
          v124 = -2.0;
          if (v50 < 5.707)
          {
            v124 = 0.0;
            if (v40 >= 4.5)
            {
              v124 = -1.0;
            }
          }
        }
      }
    }

    objc_msgSend_extent(v201, v120, v121, v122, v123);
    v244 = CGRectInset(v243, v124, v124);
    v223[0] = MEMORY[0x277D85DD0];
    v223[1] = 3221225472;
    v223[2] = sub_2338A71AC;
    v223[3] = &unk_2789EF890;
    *&v223[4] = v124;
    v126 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v125, v204, v201, v223, 0, self->inputColorSpace, v244.origin.x, v244.origin.y, v244.size.width, v244.size.height);
    objc_msgSend_extent(v101, v127, v128, v129, v130);
    v246 = CGRectInset(v245, -5.0, -5.0);
    v131 = v246.origin.x;
    v132 = v246.origin.y;
    v133 = v246.size.width;
    v134 = v246.size.height;
    v229[0] = v126;
    *&v246.origin.x = v40 + -2.0;
    v139 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v135, v136, v137, v138, v246.origin.x);
    v229[1] = v139;
    v142 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v140, v229, 2, v141);
    v144 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v143, v215, v118, &unk_28492E870, v142, self->inputColorSpace, v131, v132, v133, v134);

    v145 = self->inputImage;
    objc_msgSend_extent(v145, v146, v147, v148, v149);
    v248 = CGRectInset(v247, -v40, -v40);
    v150 = v248.origin.x;
    v151 = v248.origin.y;
    v152 = v248.size.width;
    v153 = v248.size.height;
    v221[0] = MEMORY[0x277D85DD0];
    v221[1] = 3221225472;
    v221[2] = sub_2338A71E4;
    v221[3] = &unk_2789EE950;
    v222 = v40;
    v228[0] = v144;
    v228[1] = v126;
    v228[2] = v218;
    *&v248.origin.x = v40;
    v158 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v154, v155, v156, v157, v248.origin.x);
    v228[3] = v158;
    v161 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v159, v228, 4, v160);
    v163 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v162, v205, v145, v221, v161, self->inputColorSpace, v150, v151, v152, v153);

    if (v49 <= 0.0)
    {
      v181 = v144;
    }

    else
    {
      objc_msgSend_extent(v118, v164, v165, v166, v167);
      v250 = CGRectInset(v249, -5.0, -5.0);
      v168 = v250.origin.x;
      v169 = v250.origin.y;
      v170 = v250.size.width;
      v171 = v250.size.height;
      v227[0] = v126;
      *&v250.origin.x = v49 + -2.0;
      v176 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v172, v173, v174, v175, v250.origin.x);
      v227[1] = v176;
      v179 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v177, v227, 2, v178);
      v181 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v180, v215, v118, &unk_28492E890, v179, self->inputColorSpace, v168, v169, v170, v171);

      objc_msgSend_floatValue(self->inputAxialWidth, v182, v183, v184, v185);
      LODWORD(v171) = v186;
      objc_msgSend_extent(v163, v187, v188, v189, v190);
      v252 = CGRectInset(v251, -*&v171, -*&v171);
      v191 = v252.origin.x;
      v192 = v252.origin.y;
      v193 = v252.size.width;
      v194 = v252.size.height;
      v219[0] = MEMORY[0x277D85DD0];
      v219[1] = 3221225472;
      v219[2] = sub_2338A7248;
      v219[3] = &unk_2789EE950;
      v220 = LODWORD(v171);
      v226[0] = v181;
      v226[1] = v126;
      v226[2] = self->inputAxialWidth;
      v197 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v195, v226, 3, v196);
      v199 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_(self, v198, v203, v163, v219, v197, self->inputColorSpace, v191, v192, v193, v194);

      v163 = v199;
    }

    v202[2](v202);
  }

  else
  {
    v163 = 0;
  }

  return v163;
}

@end