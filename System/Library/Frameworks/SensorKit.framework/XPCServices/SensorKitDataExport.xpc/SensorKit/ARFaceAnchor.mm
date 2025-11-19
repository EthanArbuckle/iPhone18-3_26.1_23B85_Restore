@interface ARFaceAnchor
- (id)sr_dictionaryRepresentation;
@end

@implementation ARFaceAnchor

- (id)sr_dictionaryRepresentation
{
  if ([(ARFaceAnchor *)self geometry])
  {
    if ([(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] vertexCount]< 1)
    {
      v5 = &stru_1000106F8;
    }

    else
    {
      v3 = 0;
      v4 = 0;
      v5 = &stru_1000106F8;
      do
      {
        v5 = [(__CFString *)v5 stringByAppendingFormat:@"%f %f %f ", *([(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] vertices]+ v3), *([(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] vertices]+ v3 + 4), *([(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] vertices]+ v3 + 8)];
        ++v4;
        v3 += 16;
      }

      while (v4 < [(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] vertexCount]);
    }

    if ([(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] textureCoordinateCount]< 1)
    {
      v8 = &stru_1000106F8;
    }

    else
    {
      v7 = 0;
      v8 = &stru_1000106F8;
      do
      {
        v8 = [(__CFString *)v8 stringByAppendingFormat:@"%f %f ", COERCE_FLOAT(*([(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] textureCoordinates]+ v7)), *([(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] textureCoordinates]+ 2 * v7 + 1)];
        ++v7;
      }

      while (v7 < [(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] textureCoordinateCount]);
    }

    if ([(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] triangleCount]< 1)
    {
      v10 = &stru_1000106F8;
    }

    else
    {
      v9 = 0;
      v10 = &stru_1000106F8;
      do
      {
        v10 = [(__CFString *)v10 stringByAppendingFormat:@"%i ", *([(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] triangleIndices]+ v9++)];
      }

      while (v9 < [(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] triangleCount]);
    }

    v6 = [NSString stringWithFormat:@"{ vertexCount:%lu, vertices:%@, textureCoordinateCount:%lu, textureCoordinates:%@, triangleCount:%lu, triangleIndices:%@}", [(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] vertexCount], v5, [(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] textureCoordinateCount], v8, [(ARFaceGeometry *)[(ARFaceAnchor *)self geometry] triangleCount], v10];
  }

  else
  {
    v6 = &stru_1000106F8;
  }

  [(ARFaceAnchor *)self transform];
  v117[0] = [NSNumber numberWithFloat:?];
  [(ARFaceAnchor *)self transform];
  LODWORD(v11) = HIDWORD(v11);
  v117[1] = [NSNumber numberWithFloat:v11];
  [(ARFaceAnchor *)self transform];
  LODWORD(v13) = v12;
  v117[2] = [NSNumber numberWithFloat:v13];
  [(ARFaceAnchor *)self transform];
  LODWORD(v15) = v14;
  v117[3] = [NSNumber numberWithFloat:v15];
  v118[0] = [NSArray arrayWithObjects:v117 count:4];
  [(ARFaceAnchor *)self transform];
  v116[0] = [NSNumber numberWithFloat:v16];
  [(ARFaceAnchor *)self transform];
  LODWORD(v18) = v17;
  v116[1] = [NSNumber numberWithFloat:v18];
  [(ARFaceAnchor *)self transform];
  LODWORD(v20) = v19;
  v116[2] = [NSNumber numberWithFloat:v20];
  [(ARFaceAnchor *)self transform];
  LODWORD(v22) = v21;
  v116[3] = [NSNumber numberWithFloat:v22];
  v118[1] = [NSArray arrayWithObjects:v116 count:4];
  [(ARFaceAnchor *)self transform];
  v115[0] = [NSNumber numberWithFloat:v23];
  [(ARFaceAnchor *)self transform];
  LODWORD(v25) = v24;
  v115[1] = [NSNumber numberWithFloat:v25];
  [(ARFaceAnchor *)self transform];
  LODWORD(v27) = v26;
  v115[2] = [NSNumber numberWithFloat:v27];
  [(ARFaceAnchor *)self transform];
  LODWORD(v29) = v28;
  v115[3] = [NSNumber numberWithFloat:v29];
  v118[2] = [NSArray arrayWithObjects:v115 count:4];
  [(ARFaceAnchor *)self transform];
  v114[0] = [NSNumber numberWithFloat:v30];
  [(ARFaceAnchor *)self transform];
  LODWORD(v32) = v31;
  v114[1] = [NSNumber numberWithFloat:v32];
  [(ARFaceAnchor *)self transform];
  LODWORD(v34) = v33;
  v114[2] = [NSNumber numberWithFloat:v34];
  [(ARFaceAnchor *)self transform];
  LODWORD(v36) = v35;
  v114[3] = [NSNumber numberWithFloat:v36];
  v118[3] = [NSArray arrayWithObjects:v114 count:4];
  v37 = [NSArray arrayWithObjects:v118 count:4];
  [(ARFaceAnchor *)self leftEyeTransform];
  v112[0] = [NSNumber numberWithFloat:?];
  [(ARFaceAnchor *)self leftEyeTransform];
  LODWORD(v38) = HIDWORD(v38);
  v112[1] = [NSNumber numberWithFloat:v38];
  [(ARFaceAnchor *)self leftEyeTransform];
  LODWORD(v40) = v39;
  v112[2] = [NSNumber numberWithFloat:v40];
  [(ARFaceAnchor *)self leftEyeTransform];
  LODWORD(v42) = v41;
  v112[3] = [NSNumber numberWithFloat:v42];
  v113[0] = [NSArray arrayWithObjects:v112 count:4];
  [(ARFaceAnchor *)self leftEyeTransform];
  v111[0] = [NSNumber numberWithFloat:v43];
  [(ARFaceAnchor *)self leftEyeTransform];
  LODWORD(v45) = v44;
  v111[1] = [NSNumber numberWithFloat:v45];
  [(ARFaceAnchor *)self leftEyeTransform];
  LODWORD(v47) = v46;
  v111[2] = [NSNumber numberWithFloat:v47];
  [(ARFaceAnchor *)self leftEyeTransform];
  LODWORD(v49) = v48;
  v111[3] = [NSNumber numberWithFloat:v49];
  v113[1] = [NSArray arrayWithObjects:v111 count:4];
  [(ARFaceAnchor *)self leftEyeTransform];
  v110[0] = [NSNumber numberWithFloat:v50];
  [(ARFaceAnchor *)self leftEyeTransform];
  LODWORD(v52) = v51;
  v110[1] = [NSNumber numberWithFloat:v52];
  [(ARFaceAnchor *)self leftEyeTransform];
  LODWORD(v54) = v53;
  v110[2] = [NSNumber numberWithFloat:v54];
  [(ARFaceAnchor *)self leftEyeTransform];
  LODWORD(v56) = v55;
  v110[3] = [NSNumber numberWithFloat:v56];
  v113[2] = [NSArray arrayWithObjects:v110 count:4];
  [(ARFaceAnchor *)self leftEyeTransform];
  v109[0] = [NSNumber numberWithFloat:v57];
  [(ARFaceAnchor *)self leftEyeTransform];
  LODWORD(v59) = v58;
  v109[1] = [NSNumber numberWithFloat:v59];
  [(ARFaceAnchor *)self leftEyeTransform];
  LODWORD(v61) = v60;
  v109[2] = [NSNumber numberWithFloat:v61];
  [(ARFaceAnchor *)self leftEyeTransform];
  LODWORD(v63) = v62;
  v109[3] = [NSNumber numberWithFloat:v63];
  v113[3] = [NSArray arrayWithObjects:v109 count:4];
  v64 = [NSArray arrayWithObjects:v113 count:4];
  [(ARFaceAnchor *)self rightEyeTransform];
  v107[0] = [NSNumber numberWithFloat:?];
  [(ARFaceAnchor *)self rightEyeTransform];
  LODWORD(v65) = HIDWORD(v65);
  v107[1] = [NSNumber numberWithFloat:v65];
  [(ARFaceAnchor *)self rightEyeTransform];
  LODWORD(v67) = v66;
  v107[2] = [NSNumber numberWithFloat:v67];
  [(ARFaceAnchor *)self rightEyeTransform];
  LODWORD(v69) = v68;
  v107[3] = [NSNumber numberWithFloat:v69];
  v108[0] = [NSArray arrayWithObjects:v107 count:4];
  [(ARFaceAnchor *)self rightEyeTransform];
  v106[0] = [NSNumber numberWithFloat:v70];
  [(ARFaceAnchor *)self rightEyeTransform];
  LODWORD(v72) = v71;
  v106[1] = [NSNumber numberWithFloat:v72];
  [(ARFaceAnchor *)self rightEyeTransform];
  LODWORD(v74) = v73;
  v106[2] = [NSNumber numberWithFloat:v74];
  [(ARFaceAnchor *)self rightEyeTransform];
  LODWORD(v76) = v75;
  v106[3] = [NSNumber numberWithFloat:v76];
  v108[1] = [NSArray arrayWithObjects:v106 count:4];
  [(ARFaceAnchor *)self rightEyeTransform];
  v105[0] = [NSNumber numberWithFloat:v77];
  [(ARFaceAnchor *)self rightEyeTransform];
  LODWORD(v79) = v78;
  v105[1] = [NSNumber numberWithFloat:v79];
  [(ARFaceAnchor *)self rightEyeTransform];
  LODWORD(v81) = v80;
  v105[2] = [NSNumber numberWithFloat:v81];
  [(ARFaceAnchor *)self rightEyeTransform];
  LODWORD(v83) = v82;
  v105[3] = [NSNumber numberWithFloat:v83];
  v108[2] = [NSArray arrayWithObjects:v105 count:4];
  [(ARFaceAnchor *)self rightEyeTransform];
  v104[0] = [NSNumber numberWithFloat:v84];
  [(ARFaceAnchor *)self rightEyeTransform];
  LODWORD(v86) = v85;
  v104[1] = [NSNumber numberWithFloat:v86];
  [(ARFaceAnchor *)self rightEyeTransform];
  LODWORD(v88) = v87;
  v104[2] = [NSNumber numberWithFloat:v88];
  [(ARFaceAnchor *)self rightEyeTransform];
  LODWORD(v90) = v89;
  v104[3] = [NSNumber numberWithFloat:v90];
  v108[3] = [NSArray arrayWithObjects:v104 count:4];
  v91 = [NSArray arrayWithObjects:v108 count:4];
  [(ARFaceAnchor *)self lookAtPoint];
  v103[0] = [NSNumber numberWithFloat:?];
  [(ARFaceAnchor *)self lookAtPoint];
  LODWORD(v92) = HIDWORD(v92);
  v103[1] = [NSNumber numberWithFloat:v92];
  [(ARFaceAnchor *)self lookAtPoint];
  LODWORD(v94) = v93;
  v103[2] = [NSNumber numberWithFloat:v94];
  v95 = [NSArray arrayWithObjects:v103 count:3];
  v101[0] = @"identifier";
  if ([(ARFaceAnchor *)self identifier])
  {
    v96 = [-[ARFaceAnchor identifier](self "identifier")];
  }

  else
  {
    v96 = &stru_1000106F8;
  }

  v102[0] = v96;
  v101[1] = @"sessionIdentifier";
  if ([(ARFaceAnchor *)self sessionIdentifier])
  {
    v97 = [-[ARFaceAnchor sessionIdentifier](self "sessionIdentifier")];
  }

  else
  {
    v97 = &stru_1000106F8;
  }

  v102[1] = v97;
  v102[2] = v6;
  v101[2] = @"geometry";
  v101[3] = @"transform";
  v102[3] = v37;
  v102[4] = v64;
  v101[4] = @"leftEyeTransform";
  v101[5] = @"rightEyeTransform";
  v102[5] = v91;
  v102[6] = v95;
  v101[6] = @"lookAtPoint";
  v101[7] = @"blendShapes";
  v98 = [(ARFaceAnchor *)self blendShapes];
  if (v98)
  {
    v99 = v98;
  }

  else
  {
    v99 = &stru_1000106F8;
  }

  v102[7] = v99;
  return [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:8];
}

@end