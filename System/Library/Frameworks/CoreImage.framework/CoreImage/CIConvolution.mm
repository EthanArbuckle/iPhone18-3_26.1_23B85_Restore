@interface CIConvolution
- (id)doConvolutionPass:(id)a3 weights:(id)a4 sums:(id)a5;
- (id)outputImage;
@end

@implementation CIConvolution

- (id)doConvolutionPass:(id)a3 weights:(id)a4 sums:(id)a5
{
  v275[4] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = boundsForPointArray(a3);
  v276.origin.x = v10 - (v17 + v18);
  v276.size.width = v14 + v18;
  v276.origin.y = v12 - (v19 + v20);
  v276.size.height = v16 + v20;
  v277 = CGRectIntegral(v276);
  x = v277.origin.x;
  y = v277.origin.y;
  width = v277.size.width;
  height = v277.size.height;
  v25 = [a3 count];
  result = 0;
  if (v25 > 4)
  {
    if (v25 > 6)
    {
      if (v25 == 7)
      {
        [objc_msgSend(a3 objectAtIndex:{0), "X"}];
        v216 = v215;
        [objc_msgSend(a3 objectAtIndex:{0), "Y"}];
        v218 = v217;
        [objc_msgSend(a3 objectAtIndex:{1), "X"}];
        v220 = v219;
        [objc_msgSend(a3 objectAtIndex:{1), "Y"}];
        v222 = [CIVector vectorWithX:v216 Y:v218 Z:v220 W:v221];
        [objc_msgSend(a3 objectAtIndex:{2), "X"}];
        v224 = v223;
        [objc_msgSend(a3 objectAtIndex:{2), "Y"}];
        v226 = v225;
        [objc_msgSend(a3 objectAtIndex:{3), "X"}];
        v228 = v227;
        [objc_msgSend(a3 objectAtIndex:{3), "Y"}];
        v230 = [CIVector vectorWithX:v224 Y:v226 Z:v228 W:v229];
        [objc_msgSend(a3 objectAtIndex:{4), "X"}];
        v232 = v231;
        [objc_msgSend(a3 objectAtIndex:{4), "Y"}];
        v234 = v233;
        [objc_msgSend(a3 objectAtIndex:{5), "X"}];
        v236 = v235;
        [objc_msgSend(a3 objectAtIndex:{5), "Y"}];
        v238 = [CIVector vectorWithX:v232 Y:v234 Z:v236 W:v237];
        [objc_msgSend(a4 objectAtIndex:{0), "floatValue"}];
        v240 = v239;
        [objc_msgSend(a4 objectAtIndex:{1), "floatValue"}];
        v242 = v241;
        [objc_msgSend(a4 objectAtIndex:{2), "floatValue"}];
        v244 = v243;
        [objc_msgSend(a4 objectAtIndex:{3), "floatValue"}];
        v246 = [CIVector vectorWithX:v240 Y:v242 Z:v244 W:v245];
        [objc_msgSend(a4 objectAtIndex:{4), "floatValue"}];
        v248 = v247;
        [objc_msgSend(a4 objectAtIndex:{5), "floatValue"}];
        v250 = v249;
        [objc_msgSend(a4 objectAtIndex:{6), "floatValue"}];
        v252 = [CIVector vectorWithX:v248 Y:v250 Z:v251];
        v31 = [(CIConvolution *)self _CIConvolutionAdd];
        [a5 extent];
        v301.origin.x = v253;
        v301.origin.y = v254;
        v301.size.width = v255;
        v301.size.height = v256;
        v292.origin.x = x;
        v292.origin.y = y;
        v292.size.width = width;
        v292.size.height = height;
        v293 = CGRectUnion(v292, v301);
        v36 = v293.origin.x;
        v37 = v293.origin.y;
        v38 = v293.size.width;
        v39 = v293.size.height;
        v261[0] = MEMORY[0x1E69E9820];
        v261[1] = 3221225472;
        v261[2] = __48__CIConvolution_doConvolutionPass_weights_sums___block_invoke_7;
        v261[3] = &unk_1E75C24D8;
        inputImage = self->inputImage;
        v261[4] = a3;
        v269[0] = inputImage;
        v269[1] = a5;
        v269[2] = v222;
        v269[3] = v230;
        v269[4] = v238;
        v269[5] = [a3 objectAtIndex:6];
        v269[6] = v246;
        v269[7] = v252;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v269 count:8];
        v41 = v261;
      }

      else
      {
        if (v25 != 8)
        {
          return result;
        }

        v259 = a5;
        [objc_msgSend(a3 objectAtIndex:{0), "X"}];
        v111 = v110;
        [objc_msgSend(a3 objectAtIndex:{0), "Y"}];
        v113 = v112;
        [objc_msgSend(a3 objectAtIndex:{1), "X"}];
        v115 = v114;
        [objc_msgSend(a3 objectAtIndex:{1), "Y"}];
        v258 = [CIVector vectorWithX:v111 Y:v113 Z:v115 W:v116];
        [objc_msgSend(a3 objectAtIndex:{2), "X"}];
        v118 = v117;
        [objc_msgSend(a3 objectAtIndex:{2), "Y"}];
        v120 = v119;
        [objc_msgSend(a3 objectAtIndex:{3), "X"}];
        v122 = v121;
        [objc_msgSend(a3 objectAtIndex:{3), "Y"}];
        v124 = [CIVector vectorWithX:v118 Y:v120 Z:v122 W:v123];
        [objc_msgSend(a3 objectAtIndex:{4), "X"}];
        v126 = v125;
        [objc_msgSend(a3 objectAtIndex:{4), "Y"}];
        v128 = v127;
        [objc_msgSend(a3 objectAtIndex:{5), "X"}];
        v130 = v129;
        [objc_msgSend(a3 objectAtIndex:{5), "Y"}];
        v132 = [CIVector vectorWithX:v126 Y:v128 Z:v130 W:v131];
        [objc_msgSend(a3 objectAtIndex:{6), "X"}];
        v134 = v133;
        [objc_msgSend(a3 objectAtIndex:{6), "Y"}];
        v136 = v135;
        [objc_msgSend(a3 objectAtIndex:{7), "X"}];
        v138 = v137;
        [objc_msgSend(a3 objectAtIndex:{7), "Y"}];
        v140 = [CIVector vectorWithX:v134 Y:v136 Z:v138 W:v139];
        [objc_msgSend(a4 objectAtIndex:{0), "floatValue"}];
        v142 = v141;
        [objc_msgSend(a4 objectAtIndex:{1), "floatValue"}];
        v144 = v143;
        [objc_msgSend(a4 objectAtIndex:{2), "floatValue"}];
        v146 = v145;
        [objc_msgSend(a4 objectAtIndex:{3), "floatValue"}];
        v148 = [CIVector vectorWithX:v142 Y:v144 Z:v146 W:v147];
        [objc_msgSend(a4 objectAtIndex:{4), "floatValue"}];
        v150 = v149;
        [objc_msgSend(a4 objectAtIndex:{5), "floatValue"}];
        v152 = v151;
        [objc_msgSend(a4 objectAtIndex:{6), "floatValue"}];
        v154 = v153;
        [objc_msgSend(a4 objectAtIndex:{7), "floatValue"}];
        v156 = [CIVector vectorWithX:v150 Y:v152 Z:v154 W:v155];
        v31 = [(CIConvolution *)self _CIConvolutionAdd];
        [v259 extent];
        v297.origin.x = v157;
        v297.origin.y = v158;
        v297.size.width = v159;
        v297.size.height = v160;
        v284.origin.x = x;
        v284.origin.y = y;
        v284.size.width = width;
        v284.size.height = height;
        v285 = CGRectUnion(v284, v297);
        v36 = v285.origin.x;
        v37 = v285.origin.y;
        v38 = v285.size.width;
        v39 = v285.size.height;
        v260[0] = MEMORY[0x1E69E9820];
        v260[1] = 3221225472;
        v260[2] = __48__CIConvolution_doConvolutionPass_weights_sums___block_invoke_8;
        v260[3] = &unk_1E75C24D8;
        v260[4] = a3;
        v268[0] = self->inputImage;
        v268[1] = v259;
        v268[2] = v258;
        v268[3] = v124;
        v268[4] = v132;
        v268[5] = v140;
        v268[6] = v148;
        v268[7] = v156;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v268 count:8];
        v41 = v260;
      }

      goto LABEL_19;
    }

    if (v25 != 5)
    {
      [objc_msgSend(a3 objectAtIndex:{0), "X"}];
      v43 = v42;
      [objc_msgSend(a3 objectAtIndex:{0), "Y"}];
      v45 = v44;
      [objc_msgSend(a3 objectAtIndex:{1), "X"}];
      v47 = v46;
      [objc_msgSend(a3 objectAtIndex:{1), "Y"}];
      v49 = [CIVector vectorWithX:v43 Y:v45 Z:v47 W:v48];
      [objc_msgSend(a3 objectAtIndex:{2), "X"}];
      v51 = v50;
      [objc_msgSend(a3 objectAtIndex:{2), "Y"}];
      v53 = v52;
      [objc_msgSend(a3 objectAtIndex:{3), "X"}];
      v55 = v54;
      [objc_msgSend(a3 objectAtIndex:{3), "Y"}];
      v57 = [CIVector vectorWithX:v51 Y:v53 Z:v55 W:v56];
      [objc_msgSend(a3 objectAtIndex:{4), "X"}];
      v59 = v58;
      [objc_msgSend(a3 objectAtIndex:{4), "Y"}];
      v61 = v60;
      [objc_msgSend(a3 objectAtIndex:{5), "X"}];
      v63 = v62;
      [objc_msgSend(a3 objectAtIndex:{5), "Y"}];
      v65 = [CIVector vectorWithX:v59 Y:v61 Z:v63 W:v64];
      [objc_msgSend(a4 objectAtIndex:{0), "floatValue"}];
      v67 = v66;
      [objc_msgSend(a4 objectAtIndex:{1), "floatValue"}];
      v69 = v68;
      [objc_msgSend(a4 objectAtIndex:{2), "floatValue"}];
      v71 = v70;
      [objc_msgSend(a4 objectAtIndex:{3), "floatValue"}];
      v73 = [CIVector vectorWithX:v67 Y:v69 Z:v71 W:v72];
      [objc_msgSend(a4 objectAtIndex:{4), "floatValue"}];
      v75 = v74;
      [objc_msgSend(a4 objectAtIndex:{5), "floatValue"}];
      v77 = [CIVector vectorWithX:v75 Y:v76];
      v31 = [(CIConvolution *)self _CIConvolutionAdd];
      [a5 extent];
      v295.origin.x = v78;
      v295.origin.y = v79;
      v295.size.width = v80;
      v295.size.height = v81;
      v280.origin.x = x;
      v280.origin.y = y;
      v280.size.width = width;
      v280.size.height = height;
      v281 = CGRectUnion(v280, v295);
      v36 = v281.origin.x;
      v37 = v281.origin.y;
      v38 = v281.size.width;
      v39 = v281.size.height;
      v262[0] = MEMORY[0x1E69E9820];
      v262[1] = 3221225472;
      v262[2] = __48__CIConvolution_doConvolutionPass_weights_sums___block_invoke_6;
      v262[3] = &unk_1E75C24D8;
      v262[4] = a3;
      v270[0] = self->inputImage;
      v270[1] = a5;
      v270[2] = v49;
      v270[3] = v57;
      v270[4] = v65;
      v270[5] = v73;
      v270[6] = v77;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v270 count:7];
      v41 = v262;
      goto LABEL_19;
    }

    [objc_msgSend(a3 objectAtIndex:{0), "X"}];
    v168 = v167;
    [objc_msgSend(a3 objectAtIndex:{0), "Y"}];
    v170 = v169;
    [objc_msgSend(a3 objectAtIndex:{1), "X"}];
    v172 = v171;
    [objc_msgSend(a3 objectAtIndex:{1), "Y"}];
    v174 = [CIVector vectorWithX:v168 Y:v170 Z:v172 W:v173];
    [objc_msgSend(a3 objectAtIndex:{2), "X"}];
    v176 = v175;
    [objc_msgSend(a3 objectAtIndex:{2), "Y"}];
    v178 = v177;
    [objc_msgSend(a3 objectAtIndex:{3), "X"}];
    v180 = v179;
    [objc_msgSend(a3 objectAtIndex:{3), "Y"}];
    v182 = [CIVector vectorWithX:v176 Y:v178 Z:v180 W:v181];
    [objc_msgSend(a4 objectAtIndex:{0), "floatValue"}];
    v184 = v183;
    [objc_msgSend(a4 objectAtIndex:{1), "floatValue"}];
    v186 = v185;
    [objc_msgSend(a4 objectAtIndex:{2), "floatValue"}];
    v188 = v187;
    [objc_msgSend(a4 objectAtIndex:{3), "floatValue"}];
    v190 = [CIVector vectorWithX:v184 Y:v186 Z:v188 W:v189];
    v191 = [(CIConvolution *)self _CIConvolutionAdd];
    [a5 extent];
    v299.origin.x = v192;
    v299.origin.y = v193;
    v299.size.width = v194;
    v299.size.height = v195;
    v288.origin.x = x;
    v288.origin.y = y;
    v288.size.width = width;
    v288.size.height = height;
    v289 = CGRectUnion(v288, v299);
    v196 = v289.origin.x;
    v197 = v289.origin.y;
    v198 = v289.size.width;
    v199 = v289.size.height;
    v263[0] = MEMORY[0x1E69E9820];
    v263[1] = 3221225472;
    v263[2] = __48__CIConvolution_doConvolutionPass_weights_sums___block_invoke_5;
    v263[3] = &unk_1E75C24D8;
    v263[4] = a3;
    v271[0] = self->inputImage;
    v271[1] = a5;
    v271[2] = v174;
    v271[3] = v182;
    v271[4] = [a3 objectAtIndex:4];
    v271[5] = v190;
    v271[6] = [a4 objectAtIndex:4];
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v271 count:7];
    v41 = v263;
    v166 = v191;
  }

  else
  {
    if (v25 <= 2)
    {
      if (v25 == 1)
      {
        v161 = [(CIConvolution *)self _CIConvolutionAdd];
        [a5 extent];
        v298.origin.x = v162;
        v298.origin.y = v163;
        v298.size.width = v164;
        v298.size.height = v165;
        v286.origin.x = x;
        v286.origin.y = y;
        v286.size.width = width;
        v286.size.height = height;
        v287 = CGRectUnion(v286, v298);
        v36 = v287.origin.x;
        v37 = v287.origin.y;
        v38 = v287.size.width;
        v39 = v287.size.height;
        v267[0] = MEMORY[0x1E69E9820];
        v267[1] = 3221225472;
        v267[2] = __48__CIConvolution_doConvolutionPass_weights_sums___block_invoke;
        v267[3] = &unk_1E75C24D8;
        v267[4] = a3;
        v275[0] = self->inputImage;
        v275[1] = a5;
        v275[2] = [a3 objectAtIndex:0];
        v275[3] = [a4 objectAtIndex:0];
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v275 count:4];
        v41 = v267;
        v166 = v161;
LABEL_20:
        v211 = v36;
        v212 = v37;
        v213 = v38;
        v214 = v39;
        return [v166 applyWithExtent:v41 roiCallback:v40 arguments:{v211, v212, v213, v214}];
      }

      if (v25 != 2)
      {
        return result;
      }

      [objc_msgSend(a4 objectAtIndex:{0), "floatValue"}];
      v28 = v27;
      [objc_msgSend(a4 objectAtIndex:{1), "floatValue"}];
      v30 = [CIVector vectorWithX:v28 Y:v29];
      v31 = [(CIConvolution *)self _CIConvolutionAdd];
      [a5 extent];
      v294.origin.x = v32;
      v294.origin.y = v33;
      v294.size.width = v34;
      v294.size.height = v35;
      v278.origin.x = x;
      v278.origin.y = y;
      v278.size.width = width;
      v278.size.height = height;
      v279 = CGRectUnion(v278, v294);
      v36 = v279.origin.x;
      v37 = v279.origin.y;
      v38 = v279.size.width;
      v39 = v279.size.height;
      v266[0] = MEMORY[0x1E69E9820];
      v266[1] = 3221225472;
      v266[2] = __48__CIConvolution_doConvolutionPass_weights_sums___block_invoke_2;
      v266[3] = &unk_1E75C24D8;
      v266[4] = a3;
      v274[0] = self->inputImage;
      v274[1] = a5;
      v274[2] = [a3 objectAtIndex:0];
      v274[3] = [a3 objectAtIndex:1];
      v274[4] = v30;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v274 count:5];
      v41 = v266;
LABEL_19:
      v166 = v31;
      goto LABEL_20;
    }

    if (v25 != 3)
    {
      [objc_msgSend(a3 objectAtIndex:{0), "X"}];
      v83 = v82;
      [objc_msgSend(a3 objectAtIndex:{0), "Y"}];
      v85 = v84;
      [objc_msgSend(a3 objectAtIndex:{1), "X"}];
      v87 = v86;
      [objc_msgSend(a3 objectAtIndex:{1), "Y"}];
      v89 = [CIVector vectorWithX:v83 Y:v85 Z:v87 W:v88];
      [objc_msgSend(a3 objectAtIndex:{2), "X"}];
      v91 = v90;
      [objc_msgSend(a3 objectAtIndex:{2), "Y"}];
      v93 = v92;
      [objc_msgSend(a3 objectAtIndex:{3), "X"}];
      v95 = v94;
      [objc_msgSend(a3 objectAtIndex:{3), "Y"}];
      v97 = [CIVector vectorWithX:v91 Y:v93 Z:v95 W:v96];
      [objc_msgSend(a4 objectAtIndex:{0), "floatValue"}];
      v99 = v98;
      [objc_msgSend(a4 objectAtIndex:{1), "floatValue"}];
      v101 = v100;
      [objc_msgSend(a4 objectAtIndex:{2), "floatValue"}];
      v103 = v102;
      [objc_msgSend(a4 objectAtIndex:{3), "floatValue"}];
      v105 = [CIVector vectorWithX:v99 Y:v101 Z:v103 W:v104];
      v31 = [(CIConvolution *)self _CIConvolutionAdd];
      [a5 extent];
      v296.origin.x = v106;
      v296.origin.y = v107;
      v296.size.width = v108;
      v296.size.height = v109;
      v282.origin.x = x;
      v282.origin.y = y;
      v282.size.width = width;
      v282.size.height = height;
      v283 = CGRectUnion(v282, v296);
      v36 = v283.origin.x;
      v37 = v283.origin.y;
      v38 = v283.size.width;
      v39 = v283.size.height;
      v264[0] = MEMORY[0x1E69E9820];
      v264[1] = 3221225472;
      v264[2] = __48__CIConvolution_doConvolutionPass_weights_sums___block_invoke_4;
      v264[3] = &unk_1E75C24D8;
      v264[4] = a3;
      v272[0] = self->inputImage;
      v272[1] = a5;
      v272[2] = v89;
      v272[3] = v97;
      v272[4] = v105;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v272 count:5];
      v41 = v264;
      goto LABEL_19;
    }

    [objc_msgSend(a4 objectAtIndex:{0), "floatValue"}];
    v201 = v200;
    [objc_msgSend(a4 objectAtIndex:{1), "floatValue"}];
    v203 = v202;
    [objc_msgSend(a4 objectAtIndex:{2), "floatValue"}];
    v205 = [CIVector vectorWithX:v201 Y:v203 Z:v204];
    v206 = [(CIConvolution *)self _CIConvolutionAdd];
    [a5 extent];
    v300.origin.x = v207;
    v300.origin.y = v208;
    v300.size.width = v209;
    v300.size.height = v210;
    v290.origin.x = x;
    v290.origin.y = y;
    v290.size.width = width;
    v290.size.height = height;
    v291 = CGRectUnion(v290, v300);
    v196 = v291.origin.x;
    v197 = v291.origin.y;
    v198 = v291.size.width;
    v199 = v291.size.height;
    v265[0] = MEMORY[0x1E69E9820];
    v265[1] = 3221225472;
    v265[2] = __48__CIConvolution_doConvolutionPass_weights_sums___block_invoke_3;
    v265[3] = &unk_1E75C24D8;
    v265[4] = a3;
    v273[0] = self->inputImage;
    v273[1] = a5;
    v273[2] = [a3 objectAtIndex:0];
    v273[3] = [a3 objectAtIndex:1];
    v273[4] = [a3 objectAtIndex:2];
    v273[5] = v205;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v273 count:6];
    v41 = v265;
    v166 = v206;
  }

  v211 = v196;
  v212 = v197;
  v213 = v198;
  v214 = v199;
  return [v166 applyWithExtent:v41 roiCallback:v40 arguments:{v211, v212, v213, v214}];
}

- (id)outputImage
{
  v3 = [(NSArray *)self->inputPoints count];
  v4 = [(NSArray *)self->inputWeights count];
  if (v3)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = +[CIImage emptyImage];
  if (v3 >= 1)
  {
    v7 = 0;
    v8 = v3;
    do
    {
      v9 = v8 - 8;
      if (v8 >= 8)
      {
        v8 = 8;
      }

      v6 = [(CIConvolution *)self doConvolutionPass:[(NSArray *)self->inputPoints subarrayWithRange:v7 weights:v8] sums:[(NSArray *)self->inputWeights subarrayWithRange:v7, v8], v6];
      v7 += 8;
      v8 = v9;
    }

    while (v7 < v3);
  }

  return v6;
}

@end