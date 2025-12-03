@interface CIRAWGamutMapping
- (id)outputImage;
@end

@implementation CIRAWGamutMapping

- (id)outputImage
{
  v128[3] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  inputRAWDictionary = self->inputRAWDictionary;
  if (inputRAWDictionary)
  {
    v5 = [(NSDictionary *)inputRAWDictionary valueForKey:@"version"];
    if (v5)
    {
      v123 = [v5 intValue] == 0;
    }

    else
    {
      v123 = 0;
    }

    v8 = [(NSDictionary *)self->inputRAWDictionary valueForKey:@"mc00"];
    if (v8)
    {
      [v8 floatValue];
      v121 = v9;
      [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"mc01", "floatValue"}];
      v11 = v10;
      [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"mc02", "floatValue"}];
      v13 = v12;
      [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"mc10", "floatValue"}];
      v15 = v14;
      [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"mc11", "floatValue"}];
      v17 = v16;
      [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"mc12", "floatValue"}];
      v19 = v18;
      [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"mc20", "floatValue"}];
      v21 = v20;
      [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"mc21", "floatValue"}];
      v23 = v22;
      [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"mc22", "floatValue"}];
      v25 = v24;
      v26 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_convertUsingColorMatrix];
      v128[0] = [CIVector vectorWithX:v121 Y:v15 Z:v21];
      v128[1] = [CIVector vectorWithX:v11 Y:v17 Z:v23];
      v128[2] = [CIVector vectorWithX:v13 Y:v19 Z:v25];
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:3];
      if (GetLinearAdobeRGB(void)::onceToken != -1)
      {
        [CIRAWGamutMapping outputImage];
      }

      inputImage = [(CIFilter *)self apply:v26 image:inputImage arguments:v27 inoutSpace:GetLinearAdobeRGB(void)::space];
    }

    v28 = [(NSDictionary *)self->inputRAWDictionary valueForKey:@"bknd"];
    if (v28)
    {
      intValue = [v28 intValue];
    }

    else
    {
      NSLog(&cfstr_Cirawgamutmapp.isa, @"bknd");
      intValue = 0;
    }

    v30 = [(NSDictionary *)self->inputRAWDictionary valueForKey:@"btpnt"];
    if (v30)
    {
      [v30 floatValue];
      v32 = v31;
    }

    else
    {
      NSLog(&cfstr_Cirawgamutmapp.isa, @"btpnt");
      v32 = 0.25;
    }

    v33 = [(NSDictionary *)self->inputRAWDictionary valueForKey:@"btwid"];
    if (v33)
    {
      [v33 floatValue];
      v35 = v34;
    }

    else
    {
      NSLog(&cfstr_Cirawgamutmapp.isa, @"btwid");
      v35 = 0.25;
    }

    v36 = [(NSDictionary *)self->inputRAWDictionary valueForKey:@"blamt"];
    if (v36)
    {
      [v36 floatValue];
    }

    else
    {
      NSLog(&cfstr_Cirawgamutmapp.isa, @"blamt");
      v37 = 1.0;
    }

    v111 = v37;
    v38 = [(NSDictionary *)self->inputRAWDictionary valueForKey:@"bamt"];
    v112 = v35;
    v113 = v32;
    if (v38)
    {
      [v38 floatValue];
      v40 = v39;
    }

    else
    {
      NSLog(&cfstr_Cirawgamutmapp.isa, @"bamt");
      v40 = 1.0;
    }

    [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"otrcS0", "floatValue"}];
    v42 = v41;
    [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"otrcS1", "floatValue"}];
    v44 = v43;
    [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"otrcS2", "floatValue"}];
    v46 = v45;
    [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"otrcS3", "floatValue"}];
    v48 = v47;
    [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"otrcS4", "floatValue"}];
    v50 = v49;
    [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"otrcY1", "floatValue"}];
    v52 = v51;
    [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"otrcY2", "floatValue"}];
    v54 = v53;
    [-[NSDictionary valueForKey:](self->inputRAWDictionary valueForKey:{@"otrcY3", "floatValue"}];
    v55 = 1.0 - v40;
    v56 = v55 + (v40 * v42);
    v57 = v55 + (v40 * v44);
    v58 = v55 + (v40 * v46);
    v59 = (v40 * v52) + v55 * 0.1;
    v60 = v55 + (v40 * v48);
    v61 = v55 + (v40 * v50);
    v62 = (v40 * v54) + v55 * 0.2;
    v64 = (v40 * v63) + v55 * 0.5;
    v65 = v56 * 0.1 / v59;
    v66 = v57 * 0.1;
    v67 = v65;
    v68 = v66 / v59 + v65 + -2.0;
    v69 = v59 * 1000.0 * v68;
    v70 = v59 * 100.0 * (1.0 - (v65 + v68));
    v120 = v70;
    v122 = v69;
    v71 = v59 * 10.0 * v67;
    v72 = (v62 - v59);
    *&v66 = v66 / v72;
    v73 = v58;
    v74 = v73 * 0.1 / v72 + *&v66 + -2.0;
    v75 = 1.0 - (*&v66 + v74);
    v118 = ((v62 - v59) * v74) * 1000.0;
    v119 = v71;
    v76 = (v75 * 100.0 + v74 * -300.0) * v72;
    *&v72 = (v75 * -20.0 + v74 * 30.0 + *&v66 * 10.0) * v72;
    v116 = *&v72;
    v117 = v76;
    v115 = v59 + ((v62 - v59) * ((v75 - v74) - *&v66));
    v77 = (v64 - v62);
    *&v73 = v73 * 0.3 / v77;
    v78 = v60;
    v79 = *&v73;
    v80 = v78 * 0.3 / v77 + *&v73 + -2.0;
    v81 = ((v64 - v62) * v80) * 1000.0 / 27.0;
    v114 = v81;
    v82 = -v80;
    v83 = (1.0 - (*&v73 + v80));
    v84 = (v82 * 200.0 / 9.0 + v83 * 100.0 / 9.0) * v77;
    v85 = (v79 * 10.0 / 3.0 + v80 * 40.0 / 9.0 - v83 * 40.0 / 9.0) * v77;
    v86 = v62 + v77 * (v82 * 8.0 / 27.0 + v83 * 4.0 / 9.0 - (v79 + v79) / 3.0);
    v87 = v64;
    v88 = v78 * 0.5 / (1.0 - v87);
    v89 = v61 * 0.5 / (1.0 - v87) + v88 + -2.0;
    *&v55 = 1.0 - (v88 + v89);
    v90 = (1.0 - v87) * v89 * 8.0;
    v91 = *&v55 * 4.0;
    v92 = (1.0 - v87) * (v91 + v89 * -12.0);
    v93 = (1.0 - v87) * (v88 * 2.0 - (v91 - v89 * 6.0));
    v94 = v87 + (1.0 - v87) * ((*&v55 - v89) - v88);
    v95 = [CIVector vectorWithX:"vectorWithX:Y:Z:W:" Y:? Z:? W:?];
    v96 = [CIVector vectorWithX:v122 Y:v120 Z:v119 W:0.0];
    v97 = [CIVector vectorWithX:v118 Y:v117 Z:v116 W:v115];
    v98 = [CIVector vectorWithX:v114 Y:v84 Z:v85 W:v86];
    v99 = [CIVector vectorWithX:v90 Y:v92 Z:v93 W:v94];
    *&v100 = v61;
    v101 = [MEMORY[0x1E696AD98] numberWithFloat:v100];
    if (v123)
    {
      v102 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_localBoost];
      v127[0] = v95;
      v127[1] = v96;
      v127[2] = v97;
      v127[3] = v98;
      v127[4] = v99;
      v127[5] = v101;
      v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:6];
      if (GetLinearAdobeRGB(void)::onceToken != -1)
      {
        [CIRAWGamutMapping outputImage];
      }

LABEL_34:
      v104 = GetLinearAdobeRGB(void)::space;
      return [(CIFilter *)self apply:v102 image:inputImage arguments:v103 inoutSpace:v104];
    }

    if (intValue == 1)
    {
      v105 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_boostRGBLNoGamma];
      v125[0] = v95;
      v125[1] = v96;
      v125[2] = v97;
      v125[3] = v98;
      v125[4] = v99;
      v125[5] = v101;
      v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:6];
      if (GetLinearAdobeRGB(void)::onceToken != -1)
      {
        [CIRAWGamutMapping outputImage];
      }

      v107 = [(CIFilter *)self apply:v105 image:inputImage arguments:v106 inSpace:GetLinearAdobeRGB(void)::space];
      v102 = [CIKernel kernelWithInternalRepresentation:&CI::_boostHybrid];
      v124[0] = v107;
      *&v108 = v113;
      v124[1] = [MEMORY[0x1E696AD98] numberWithFloat:v108];
      *&v109 = v112;
      v124[2] = [MEMORY[0x1E696AD98] numberWithFloat:v109];
      *&v110 = v111;
      v124[3] = [MEMORY[0x1E696AD98] numberWithFloat:v110];
      v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:4];
      if (GetLinearAdobeRGB(void)::onceToken != -1)
      {
        [CIRAWGamutMapping outputImage];
      }

      v104 = GetLinearAdobeRGB(void)::space;
      return [(CIFilter *)self apply:v102 image:inputImage arguments:v103 inoutSpace:v104];
    }

    if (!intValue)
    {
      v102 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_boostRGB];
      v126[0] = v95;
      v126[1] = v96;
      v126[2] = v97;
      v126[3] = v98;
      v126[4] = v99;
      v126[5] = v101;
      v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:6];
      if (GetLinearAdobeRGB(void)::onceToken != -1)
      {
        [CIRAWGamutMapping outputImage];
      }

      goto LABEL_34;
    }

    return 0;
  }

  else
  {
    v6 = inputImage;

    return v6;
  }
}

@end