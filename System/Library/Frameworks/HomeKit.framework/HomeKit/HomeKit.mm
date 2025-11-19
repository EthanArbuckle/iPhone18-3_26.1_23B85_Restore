id HMDispatchQueueNameString(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = a1;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (v4)
  {
    v8 = @".";
  }

  else
  {
    v8 = &stru_1F0E92498;
  }

  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = &stru_1F0E92498;
  }

  v10 = [v5 hash];

  v11 = [v3 stringWithFormat:@"com.apple.HomeKit.%@%@%@.%tu", v7, v8, v9, v10];

  return v11;
}

void __HMIsCurrentProcessSPIEntitled_block_invoke()
{
  v8 = [MEMORY[0x1E69A2A50] processInfo];
  v0 = [v8 valueForEntitlement:@"com.apple.private.homekit"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;

  v3 = [v2 BOOLValue];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v8 valueForEntitlement:@"com.apple.homekit.private-spi-access"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v4 = [v7 BOOLValue];
  }

  HMIsCurrentProcessSPIEntitled_spiEntitled = v4;
}

void __initializeMappingsAndPaths_block_invoke()
{
  v314 = *MEMORY[0x1E69E9840];
  *&v32 = @"0000003E-0000-1000-8000-0026BB765291";
  *(&v32 + 1) = @"0000008D-0000-1000-8000-0026BB765291";
  v171 = @"ACCESSORY_INFORMATION_SVC";
  v172 = @"AIR_QUALITY_SENSOR_SVC";
  *&v33 = @"00000096-0000-1000-8000-0026BB765291";
  *(&v33 + 1) = @"00000097-0000-1000-8000-0026BB765291";
  v173 = @"BATTERY_SVC";
  v174 = @"CARBON_DIOXIDE_SENSOR_SVC";
  *&v34 = @"0000007F-0000-1000-8000-0026BB765291";
  *(&v34 + 1) = @"00000080-0000-1000-8000-0026BB765291";
  v175 = @"CARBON_MONOXIDE_SENSOR_SVC";
  v176 = @"CONTACT_SENSOR_SVC";
  *&v35 = @"00000081-0000-1000-8000-0026BB765291";
  *(&v35 + 1) = @"00000121-0000-1000-8000-0026BB765291";
  v177 = @"DOOR_SVC";
  v178 = @"DOORBELL_SVC";
  v36 = @"00000040-0000-1000-8000-0026BB765291";
  v37 = @"00000041-0000-1000-8000-0026BB765291";
  v179 = @"FAN_SVC";
  v180 = @"GARAGE_DOOR_OPENER_SVC";
  v38 = @"00000082-0000-1000-8000-0026BB765291";
  v39 = @"00000083-0000-1000-8000-0026BB765291";
  v181 = @"HUMIDITY_SENSOR_SVC";
  v182 = @"LEAK_SENSOR_SVC";
  v40 = @"00000084-0000-1000-8000-0026BB765291";
  v41 = @"00000043-0000-1000-8000-0026BB765291";
  v183 = @"LIGHT_SENSOR_SVC";
  v184 = @"LIGHTBULB_SVC";
  v42 = @"00000044-0000-1000-8000-0026BB765291";
  v43 = @"00000045-0000-1000-8000-0026BB765291";
  v185 = @"LOCK_MANAGEMENT_SVC";
  v186 = @"LOCK_MECHANISM_SVC";
  v44 = @"00000085-0000-1000-8000-0026BB765291";
  v45 = @"00000086-0000-1000-8000-0026BB765291";
  v187 = @"MOTION_SENSOR_SVC";
  v188 = @"OCCUPANCY_SENSOR_SVC";
  v46 = @"00000047-0000-1000-8000-0026BB765291";
  v47 = @"0000007E-0000-1000-8000-0026BB765291";
  v189 = @"OUTLET_SVC";
  v190 = @"SECURITY_SYSTEM_SVC";
  v48 = @"00000087-0000-1000-8000-0026BB765291";
  v49 = @"00000088-0000-1000-8000-0026BB765291";
  v191 = @"SMOKE_SENSOR_SVC";
  v192 = @"STATEFUL_PROGRAMMABLE_SWITCH_SVC";
  v50 = @"00000089-0000-1000-8000-0026BB765291";
  v51 = @"00000049-0000-1000-8000-0026BB765291";
  v193 = @"STATELESS_PROGRAMMABLE_SWITCH_SVC";
  v194 = @"SWITCH_SVC";
  v52 = @"0000008A-0000-1000-8000-0026BB765291";
  v53 = @"0000004A-0000-1000-8000-0026BB765291";
  v195 = @"TEMPERATURE_SENSOR_SVC";
  v196 = @"THERMOSTAT_SVC";
  v54 = @"0000008B-0000-1000-8000-0026BB765291";
  v55 = @"0000008C-0000-1000-8000-0026BB765291";
  v197 = @"WINDOW_SVC";
  v198 = @"WINDOW_COVERING_SVC";
  v56 = @"00000110-0000-1000-8000-0026BB765291";
  v57 = @"00000111-0000-1000-8000-0026BB765291";
  v199 = @"CAMERA_STREAM_SVC";
  v200 = @"CAMERA_CTRL_SVC";
  v58 = @"00000112-0000-1000-8000-0026BB765291";
  v59 = @"00000113-0000-1000-8000-0026BB765291";
  v201 = @"MICROPHONE_SVC";
  v202 = @"SPEAKER_SVC";
  v60 = @"000000BB-0000-1000-8000-0026BB765291";
  v61 = @"000000B7-0000-1000-8000-0026BB765291";
  v203 = @"AIR_PURIFIER_SVC";
  v204 = @"VENTILATION_FAN_SVC";
  v62 = @"000000BA-0000-1000-8000-0026BB765291";
  v63 = @"000000BC-0000-1000-8000-0026BB765291";
  v205 = @"FILTER_MAINTENANCE_SVC";
  v206 = @"HEATER_COOLER_SVC";
  v64 = @"000000B9-0000-1000-8000-0026BB765291";
  v65 = @"000000BD-0000-1000-8000-0026BB765291";
  v207 = @"SLATS_SVC";
  v208 = @"HUMIDIFIER_DEHUMIDIFIER_SVC";
  v66 = @"000000CC-0000-1000-8000-0026BB765291";
  v67 = @"000000CF-0000-1000-8000-0026BB765291";
  v209 = @"LABEL_SVC";
  v210 = @"IRRIGATION_SYSTEM_SVC";
  v68 = @"000000D0-0000-1000-8000-0026BB765291";
  v69 = @"000000D7-0000-1000-8000-0026BB765291";
  v211 = @"VALVE_SVC";
  v212 = @"FAUCET_SVC";
  v70 = @"0000021A-0000-1000-8000-0026BB765291";
  v71 = @"00000204-0000-1000-8000-0026BB765291";
  v213 = @"CAMERA_OPERATING_MODE_SVC";
  v214 = @"CAMERA_RECORDING_MGMT_SVC";
  v72 = @"00000122-0000-1000-8000-0026BB765291";
  v73 = @"00000125-0000-1000-8000-0026BB765291";
  v215 = @"TARGET_CONTROL_MANAGEMENT_SVC";
  v216 = @"TARGET_CONTROL_SVC";
  v74 = @"000000D8-0000-1000-8000-0026BB765291";
  v75 = @"000000D9-0000-1000-8000-0026BB765291";
  v217 = @"TELEVISION_SVC";
  v218 = @"INPUT_SOURCE_SVC";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v32 count:48];
  v1 = serviceTypeLocalizationKeyMapping;
  serviceTypeLocalizationKeyMapping = v0;

  *&v32 = @"00000001-0000-1000-8000-0026BB765291";
  *(&v32 + 1) = @"00000064-0000-1000-8000-0026BB765291";
  v171 = @"ADMIN_ONLY_ACCESS_CHR";
  v172 = @"AIR_PARTICULATE_DENSITY_CHR";
  *&v33 = @"00000065-0000-1000-8000-0026BB765291";
  *(&v33 + 1) = @"00000095-0000-1000-8000-0026BB765291";
  v173 = @"AIR_PARTICULATE_SIZE_CHR";
  v174 = @"AIR_QUALITY_CHR";
  *&v34 = @"00000005-0000-1000-8000-0026BB765291";
  *(&v34 + 1) = @"00000068-0000-1000-8000-0026BB765291";
  v175 = @"AUDIO_FEEDBACK_CHR";
  v176 = @"BATTERY_LEVEL_CHR";
  *&v35 = @"00000008-0000-1000-8000-0026BB765291";
  *(&v35 + 1) = @"00000092-0000-1000-8000-0026BB765291";
  v177 = @"BRIGHTNESS_CHR";
  v178 = @"CARBON_DIOXIDE_DETECTED_CHR";
  v36 = @"00000093-0000-1000-8000-0026BB765291";
  v37 = @"00000094-0000-1000-8000-0026BB765291";
  v179 = @"CARBON_DIOXIDE_LEVEL_CHR";
  v180 = @"CARBON_DIOXIDE_PEAK_LEVEL_CHR";
  v38 = @"00000069-0000-1000-8000-0026BB765291";
  v39 = @"00000090-0000-1000-8000-0026BB765291";
  v181 = @"CARBON_MONOXIDE_DETECTED_CHR";
  v182 = @"CARBON_MONOXIDE_LEVEL_CHR";
  v40 = @"00000091-0000-1000-8000-0026BB765291";
  v41 = @"0000008F-0000-1000-8000-0026BB765291";
  v183 = @"CARBON_MONOXIDE_PEAK_LEVEL_CHR";
  v184 = @"CHARGING_STATE_CHR";
  v42 = @"0000006A-0000-1000-8000-0026BB765291";
  v43 = @"0000000D-0000-1000-8000-0026BB765291";
  v185 = @"CONTACT_SENSOR_STATE_CHR";
  v186 = @"COOLING_THRESHOLD_TEMPERATURE_CHR";
  v44 = @"0000000E-0000-1000-8000-0026BB765291";
  v45 = @"0000000F-0000-1000-8000-0026BB765291";
  v187 = @"CURRENT_DOOR_STATE_CHR";
  v188 = @"CURRENT_HEATING_COOLING_STATE_CHR";
  v46 = @"0000006C-0000-1000-8000-0026BB765291";
  v47 = @"0000006B-0000-1000-8000-0026BB765291";
  v189 = @"CURRENT_HORIZONTAL_TILT_ANGLE_CHR";
  v190 = @"CURRENT_LIGHT_LEVEL_CHR";
  v48 = @"0000006D-0000-1000-8000-0026BB765291";
  v49 = @"00000010-0000-1000-8000-0026BB765291";
  v191 = @"CURRENT_POSITION_CHR";
  v192 = @"CURRENT_RELATIVE_HUMIDITY_CHR";
  v50 = @"00000066-0000-1000-8000-0026BB765291";
  v51 = @"00000011-0000-1000-8000-0026BB765291";
  v193 = @"CURRENT_SECURITY_SYSTEM_STATE_CHR";
  v194 = @"CURRENT_TEMPERATURE_CHR";
  v52 = @"0000006E-0000-1000-8000-0026BB765291";
  v53 = @"00000053-0000-1000-8000-0026BB765291";
  v195 = @"CURRENT_VERTICAL_TILT_ANGLE_CHR";
  v196 = @"HARDWARE_VERSION_CHR";
  v54 = @"00000012-0000-1000-8000-0026BB765291";
  v55 = @"0000006F-0000-1000-8000-0026BB765291";
  v197 = @"HEATING_THRESHOLD_TEMPERATURE_CHR";
  v198 = @"HOLD_POSITION_CHR";
  v56 = @"00000014-0000-1000-8000-0026BB765291";
  v57 = @"00000013-0000-1000-8000-0026BB765291";
  v199 = @"IDENTIFY_CHR";
  v200 = @"HUE_CHR";
  v58 = @"00000070-0000-1000-8000-0026BB765291";
  v59 = @"00000019-0000-1000-8000-0026BB765291";
  v201 = @"LEAK_DETECTED_CHR";
  v202 = @"LOCK_MANAGEMENT_CONTROLPOINT_CHR";
  v60 = @"0000001A-0000-1000-8000-0026BB765291";
  v61 = @"0000001D-0000-1000-8000-0026BB765291";
  v203 = @"LOCK_MANAGEMENT_AUTO_SECURITY_TIMEOUT_CHR";
  v204 = @"CURRENT_LOCK_MECHANISM_STATE_CHR";
  v62 = @"0000001C-0000-1000-8000-0026BB765291";
  v63 = @"0000001E-0000-1000-8000-0026BB765291";
  v205 = @"LOCK_MECHANISM_LAST_KNOWN_ACTION_CHR";
  v206 = @"TARGET_LOCK_MECHANISM_STATE_CHR";
  v64 = @"0000001F-0000-1000-8000-0026BB765291";
  v65 = @"00000022-0000-1000-8000-0026BB765291";
  v207 = @"LOGS_CHR";
  v208 = @"MOTION_DETECTED_CHR";
  v66 = @"00000023-0000-1000-8000-0026BB765291";
  v67 = @"00000024-0000-1000-8000-0026BB765291";
  v209 = @"NAME_CHR";
  v210 = @"OBSTRUCTION_DETECTED_CHR";
  v68 = @"00000071-0000-1000-8000-0026BB765291";
  v69 = @"00000026-0000-1000-8000-0026BB765291";
  v211 = @"OCCUPANCY_DETECTED_CHR";
  v212 = @"OUTLET_IN_USE_CHR";
  v70 = @"00000072-0000-1000-8000-0026BB765291";
  v71 = @"00000025-0000-1000-8000-0026BB765291";
  v213 = @"POSITION_STATE_CHR";
  v214 = @"POWER_STATE_CHR";
  v72 = @"00000073-0000-1000-8000-0026BB765291";
  v73 = @"00000074-0000-1000-8000-0026BB765291";
  v215 = @"PROGRAMMABLE_SWITCH_EVENT_CHR";
  v216 = @"PROGRAMMABLE_SWITCH_OUTPUT_STATE_CHR";
  v74 = @"00000028-0000-1000-8000-0026BB765291";
  v75 = @"00000029-0000-1000-8000-0026BB765291";
  v217 = @"ROTATION_DIRECTION_CHR";
  v218 = @"ROTATION_SPEED_CHR";
  v76 = @"0000002F-0000-1000-8000-0026BB765291";
  v77 = @"0000008E-0000-1000-8000-0026BB765291";
  v219 = @"SATURATION_CHR";
  v220 = @"SECURITY_SYSTEM_ALARM_TYPE_CHR";
  v78 = @"00000076-0000-1000-8000-0026BB765291";
  v79 = @"00000075-0000-1000-8000-0026BB765291";
  v221 = @"SMOKE_DETECTED_CHR";
  v222 = @"STATUS_ACTIVE_CHR";
  v80 = @"00000077-0000-1000-8000-0026BB765291";
  v81 = @"00000078-0000-1000-8000-0026BB765291";
  v223 = @"STATUS_FAULT_CHR";
  v224 = @"STATUS_JAMMED_CHR";
  v82 = @"00000079-0000-1000-8000-0026BB765291";
  v83 = @"0000007A-0000-1000-8000-0026BB765291";
  v225 = @"STATUS_LOW_BATTERY_CHR";
  v226 = @"STATUS_TAMPERED_CHR";
  v84 = @"00000032-0000-1000-8000-0026BB765291";
  v85 = @"00000033-0000-1000-8000-0026BB765291";
  v227 = @"TARGET_DOOR_STATE_CHR";
  v228 = @"TARGET_HEATING_COOLING_STATE_CHR";
  v86 = @"0000007B-0000-1000-8000-0026BB765291";
  v87 = @"0000007C-0000-1000-8000-0026BB765291";
  v229 = @"TARGET_HORIZONTAL_TILT_ANGLE_CHR";
  v230 = @"TARGET_POSITION_CHR";
  v88 = @"00000034-0000-1000-8000-0026BB765291";
  v89 = @"00000067-0000-1000-8000-0026BB765291";
  v231 = @"TARGET_RELATIVE_HUMIDITY_CHR";
  v232 = @"TARGET_SECURITY_SYSTEM_STATE_CHR";
  v90 = @"00000035-0000-1000-8000-0026BB765291";
  v91 = @"0000007D-0000-1000-8000-0026BB765291";
  v233 = @"TARGET_TEMPERATURE_CHR";
  v234 = @"TARGET_VERTICAL_TILT_ANGLE_CHR";
  v92 = @"00000036-0000-1000-8000-0026BB765291";
  v235 = @"TEMPERATURE_UNITS_CHR";
  v93 = @"00000037-0000-1000-8000-0026BB765291";
  v236 = @"VERSION_CHR";
  v94 = @"00000054-0000-1000-8000-0026BB765291";
  v237 = @"SOFTWARE_VERSION_CHR";
  v95 = @"00000120-0000-1000-8000-0026BB765291";
  v238 = @"STREAMING_STATUS";
  v96 = @"00000118-0000-1000-8000-0026BB765291";
  v239 = @"SETUP_STREAM_ENDPOINT";
  v97 = @"00000114-0000-1000-8000-0026BB765291";
  v240 = @"SUPP_VIDEO_CONFIG";
  v98 = @"00000115-0000-1000-8000-0026BB765291";
  v241 = @"SUPP_AUDIO_CONFIG";
  v99 = @"00000116-0000-1000-8000-0026BB765291";
  v242 = @"SUPP_RTP_CONFIG";
  v100 = @"00000117-0000-1000-8000-0026BB765291";
  v243 = @"SELECT_STREAM_CONFIG";
  v101 = @"00000119-0000-1000-8000-0026BB765291";
  v244 = @"VOLUME";
  v102 = @"0000011A-0000-1000-8000-0026BB765291";
  v245 = @"MUTE";
  v103 = @"0000011B-0000-1000-8000-0026BB765291";
  v246 = @"NIGHT_VISION";
  v104 = @"0000011C-0000-1000-8000-0026BB765291";
  v247 = @"OPTICAL_ZOOM";
  v105 = @"0000011D-0000-1000-8000-0026BB765291";
  v248 = @"DIGITAL_ZOOM";
  v106 = @"0000011E-0000-1000-8000-0026BB765291";
  v249 = @"IMAGE_ROTATION";
  v107 = @"0000011F-0000-1000-8000-0026BB765291";
  v250 = @"IMAGE_MIRRORING";
  v108 = @"000000B0-0000-1000-8000-0026BB765291";
  v251 = @"ACTIVE";
  v109 = @"000000A9-0000-1000-8000-0026BB765291";
  v252 = @"CURRENT_AIR_PURIFIER_STATE";
  v110 = @"000000AF-0000-1000-8000-0026BB765291";
  v253 = @"CURRENT_FAN_STATE";
  v111 = @"000000B1-0000-1000-8000-0026BB765291";
  v254 = @"CURRENT_HEATER_COOLER_STATE";
  v112 = @"000000B3-0000-1000-8000-0026BB765291";
  v255 = @"CURRENT_HUMIDIFIER_DEHUMIDIFIER_STATE";
  v113 = @"000000AA-0000-1000-8000-0026BB765291";
  v256 = @"CURRENT_SLAT_STATE";
  v114 = @"000000C1-0000-1000-8000-0026BB765291";
  v257 = @"CURRENT_TILT_ANGLE";
  v115 = @"000000C9-0000-1000-8000-0026BB765291";
  v258 = @"DEHUMIDIFIER_THRESHOLD";
  v116 = @"000000AC-0000-1000-8000-0026BB765291";
  v259 = @"FILTER_CHANGE_INDICATION";
  v117 = @"000000AB-0000-1000-8000-0026BB765291";
  v260 = @"FILTER_LIFE_LEVEL";
  v118 = @"000000AD-0000-1000-8000-0026BB765291";
  v261 = @"FILTER_RESET_CHANGE_INDICATION";
  v119 = @"000000CA-0000-1000-8000-0026BB765291";
  v262 = @"HUMIDIFIER_THRESHOLD";
  v120 = @"000000A7-0000-1000-8000-0026BB765291";
  v263 = @"LOCK_PHYSICAL_CONTROLS";
  v121 = @"000000C4-0000-1000-8000-0026BB765291";
  v264 = @"NITROGENDIOXIDE_DENSITY";
  v122 = @"000000C3-0000-1000-8000-0026BB765291";
  v265 = @"OZONE_DENSITY";
  v123 = @"000000C6-0000-1000-8000-0026BB765291";
  v266 = @"PM2_5_DENSITY";
  v124 = @"000000C7-0000-1000-8000-0026BB765291";
  v267 = @"PM10_DENSITY";
  v125 = @"000000C0-0000-1000-8000-0026BB765291";
  v268 = @"SLAT_TYPE";
  v126 = @"000000C5-0000-1000-8000-0026BB765291";
  v269 = @"SULPHURDIOXIDE_DENSITY";
  v127 = @"000000B6-0000-1000-8000-0026BB765291";
  v270 = @"SWING_MODE";
  v128 = @"000000A8-0000-1000-8000-0026BB765291";
  v271 = @"TARGET_AIR_PURIFIER_STATE";
  v129 = @"000000BF-0000-1000-8000-0026BB765291";
  v272 = @"TARGET_FAN_STATE";
  v130 = @"000000B2-0000-1000-8000-0026BB765291";
  v273 = @"TARGET_HEATER_COOLER_STATE";
  v131 = @"000000B4-0000-1000-8000-0026BB765291";
  v274 = @"TARGET_HUMIDIFIER_DEHUMIDIFIER_STATE";
  v132 = @"000000C2-0000-1000-8000-0026BB765291";
  v275 = @"TARGET_TILT_ANGLE";
  v133 = @"000000C8-0000-1000-8000-0026BB765291";
  v276 = @"VOC_DENSITY";
  v134 = @"000000B5-0000-1000-8000-0026BB765291";
  v277 = @"WATER_LEVEL";
  v135 = @"000000CB-0000-1000-8000-0026BB765291";
  v278 = @"LABEL_INDEX";
  v136 = @"000000CD-0000-1000-8000-0026BB765291";
  v279 = @"LABEL_NAMESPACE";
  v137 = @"000000CE-0000-1000-8000-0026BB765291";
  v280 = @"COLOR_TEMPERATURE";
  v138 = @"000000D1-0000-1000-8000-0026BB765291";
  v281 = @"PROGRAM_MODE";
  v139 = @"000000D2-0000-1000-8000-0026BB765291";
  v282 = @"IN_USE";
  v140 = @"000000D3-0000-1000-8000-0026BB765291";
  v283 = @"SET_DURATION";
  v141 = @"000000D4-0000-1000-8000-0026BB765291";
  v284 = @"REMAINING_DURATION";
  v142 = @"000000D5-0000-1000-8000-0026BB765291";
  v285 = @"VALVE_TYPE";
  v143 = @"000000D6-0000-1000-8000-0026BB765291";
  v286 = @"IS_CONFIGURED";
  v144 = @"00000126-0000-1000-8000-0026BB765291";
  v287 = @"BUTTON_EVENT";
  v145 = @"00000124-0000-1000-8000-0026BB765291";
  v288 = @"TARGET_LIST";
  v146 = @"00000123-0000-1000-8000-0026BB765291";
  v289 = @"SUPPORTED_TARGET_CONFIGURATION";
  v147 = @"00000128-0000-1000-8000-0026BB765291";
  v290 = @"SELECT_AUDIO_STREAM_CONFIG";
  v148 = @"000000E7-0000-1000-8000-0026BB765291";
  v291 = @"ACTIVE_IDENTIFIER";
  v149 = @"0000021D-0000-1000-8000-0026BB765291";
  v292 = @"CAMERA_OPERATING_MODE_INDICATOR";
  v150 = @"00000223-0000-1000-8000-0026BB765291";
  v293 = @"EVENT_SNAPSHOTS_ACTIVE";
  v151 = @"00000226-0000-1000-8000-0026BB765291";
  v294 = @"RECORDING_AUDIO_ACTIVE";
  v152 = @"000000DB-0000-1000-8000-0026BB765291";
  v295 = @"INPUT_SOURCE_TYPE";
  v153 = @"000000DC-0000-1000-8000-0026BB765291";
  v296 = @"INPUT_DEVICE_TYPE";
  v154 = @"000000DD-0000-1000-8000-0026BB765291";
  v297 = @"CLOSED_CAPTIONS";
  v155 = @"000000E8-0000-1000-8000-0026BB765291";
  v298 = @"SLEEP_DISCOVERY_MODE";
  v156 = @"000000E0-0000-1000-8000-0026BB765291";
  v299 = @"CURRENT_MEDIA_STATE";
  v157 = @"00000137-0000-1000-8000-0026BB765291";
  v300 = @"TARGET_MEDIA_STATE";
  v158 = @"000000E1-0000-1000-8000-0026BB765291";
  v301 = @"REMOTE_KEY";
  v159 = @"000000E2-0000-1000-8000-0026BB765291";
  v302 = @"PICTURE_MODE";
  v160 = @"000000DF-0000-1000-8000-0026BB765291";
  v303 = @"POWER_MODE_SELECTION";
  v161 = @"000000E6-0000-1000-8000-0026BB765291";
  v304 = @"IDENTIFIER";
  v162 = @"000000E3-0000-1000-8000-0026BB765291";
  v305 = @"CONFIGURED_NAME";
  v163 = @"000000E9-0000-1000-8000-0026BB765291";
  v306 = @"VOLUME_CONTROL_TYPE";
  v164 = @"000000EA-0000-1000-8000-0026BB765291";
  v307 = @"VOLUME_SELECTOR";
  v165 = @"00000135-0000-1000-8000-0026BB765291";
  v308 = @"CURRENT_VISIBILITY_STATE";
  v166 = @"00000134-0000-1000-8000-0026BB765291";
  v309 = @"TARGET_VISIBILITY_STATE";
  v167 = @"00000052-0000-1000-8000-0026BB765291";
  v310 = @"FIRMWARE_VERSION_CHR";
  v168 = @"00000020-0000-1000-8000-0026BB765291";
  v311 = @"MANUFACTURER_CHR";
  v169 = @"00000021-0000-1000-8000-0026BB765291";
  v312 = @"MODEL_CHR";
  v170 = @"00000030-0000-1000-8000-0026BB765291";
  v313 = @"SERIAL_NUMBER_CHR";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v32 count:143];
  v3 = characteristicTypeLocalizationKeyMapping;
  characteristicTypeLocalizationKeyMapping = v2;

  context = objc_autoreleasePoolPush();
  v4 = _getAccessoryCategoryTypeMappings();
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v32 objects:&v171 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v4 hmf_stringForKey:v11];
        v13 = [v12 stringByAppendingString:@"_SINGULAR"];

        v14 = [v13 hmf_stringWithSmallestEncoding];
        [v5 setObject:v14 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:&v171 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  v16 = accessoryCategoryLocalizationSingularKeyMapping;
  accessoryCategoryLocalizationSingularKeyMapping = v15;

  v17 = _getAccessoryCategoryTypeMappings();
  v18 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v17, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = [v17 allKeys];
  v20 = [v19 countByEnumeratingWithState:&v32 objects:&v171 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * j);
        v25 = [v17 hmf_stringForKey:v24];
        v26 = [v25 stringByAppendingString:@"_MULTIPLE"];

        v27 = [v26 hmf_stringWithSmallestEncoding];
        [v18 setObject:v27 forKeyedSubscript:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:&v171 count:16];
    }

    while (v21);
  }

  v28 = [v18 copy];
  v29 = accessoryCategoryLocalizationPluralKeyMapping;
  accessoryCategoryLocalizationPluralKeyMapping = v28;

  objc_autoreleasePoolPop(context);
  v30 = *MEMORY[0x1E69E9840];
}

id _getAccessoryCategoryTypeMappings()
{
  v5[36] = *MEMORY[0x1E69E9840];
  v4[0] = @"61102194-9993-48BF-A1EF-6C7DC50F0C01";
  v4[1] = @"DD4DE411-8F01-44EE-866A-1F96144DC1B6";
  v5[0] = @"BRIDGE_CATEGORY";
  v5[1] = @"DOOR_CATEGORY";
  v4[2] = @"C25D5FCE-52EC-4599-A815-1192C5F08C7F";
  v4[3] = @"151CB559-0DF9-40AA-8A67-12AF06C4449D";
  v5[2] = @"DOOR_LOCK_CATEGORY";
  v5[3] = @"FAN_CATEGORY";
  v4[4] = @"604B6E52-2C87-4596-B4C9-D15077C0C07F";
  v4[5] = @"C9EE63DB-2FF7-4514-826A-2FC2F0D4C9F0";
  v5[4] = @"GARAGE_DOOR_OPENER_CATEGORY";
  v5[5] = @"IP_CAMERA_CATEGORY";
  v4[6] = @"57D56F4D-3302-41F7-AB34-5365AA180E81";
  v4[7] = @"0FBA259B-05AC-46F2-875F-204ABB6D9FE7";
  v5[6] = @"LIGHTBULB_CATEGORY";
  v5[7] = @"OTHER_CATEGORY";
  v4[8] = @"730F40D4-6D0E-4903-B09E-520A08AFB78C";
  v4[9] = @"3F9B944B-B8DF-4570-BAF5-CD31A8B321A7";
  v5[8] = @"OUTLET_CATEGORY";
  v5[9] = @"PROGRAMMABLE_SWITCH_CATEGORY";
  v4[10] = @"8E33483E-2102-4BFE-9295-0A187D114188";
  v4[11] = @"14D8FE28-2998-49E3-AC95-E3969BE2957C";
  v5[10] = @"RANGE_EXTENDER_CATEGORY";
  v5[11] = @"SECURITY_SYSTEM_CATEGORY";
  v4[12] = @"772AFB8E-8D2F-455E-90E5-9852E6C4DD31";
  v4[13] = @"2F4C3164-8DE4-4A4F-93BA-DD1D5068DF0B";
  v5[12] = @"SENSOR_CATEGORY";
  v5[13] = @"SWITCH_CATEGORY";
  v4[14] = @"79668DCF-89FB-450D-94B5-AEE70B7B09F1";
  v4[15] = @"957A52E0-BE03-490C-8305-7B20C1CC17BA";
  v5[14] = @"THERMOSTAT_CATEGORY";
  v5[15] = @"VIDEO_DOORBELL_CATEGORY";
  v4[16] = @"1C501511-408E-4C1E-816B-3FC011FFD5B1";
  v4[17] = @"2FB9EE1F-1C21-4D0B-9383-9B65F64DBF0E";
  v5[16] = @"WINDOW_CATEGORY";
  v5[17] = @"WINDOW_COVERING_CATEGORY";
  v4[18] = @"5510B997-D711-4636-870F-82BB61092B15";
  v4[19] = @"BF7036FD-93CF-49B5-954F-CD2B760D11DA";
  v5[18] = @"AIR_PURIFIER_CATEGORY";
  v5[19] = @"AIR_HEATER_CATEGORY";
  v4[20] = @"18DDD63A-27F9-4341-B59B-759D3D114586";
  v4[21] = @"3FEB9075-C9AF-4629-ADBC-A853259C645A";
  v5[20] = @"AIR_CONDITIONER_CATEGORY";
  v5[21] = @"AIR_HUMIDIFIER_CATEGORY";
  v4[22] = @"1E15B639-DC98-41D4-A394-2E4A1D54AA3A";
  v4[23] = @"C0F5EDC5-4003-464A-9E5D-0DB36677BC35";
  v5[22] = @"AIR_DEHUMIDIFIER_CATEGORY";
  v5[23] = @"SPEAKER_CATEGORY";
  v4[24] = @"94D3FBD5-0A74-4EE4-BE1A-C97E82ADFA33";
  v4[25] = @"43CE6F7E-F7E8-44B4-80CE-5786F6E6CD47";
  v5[24] = @"SPRINKLER_CATEGORY";
  v5[25] = @"FAUCET_CATEGORY";
  v4[26] = @"39D2A5B4-F9A6-43F6-90E7-0019F0C0E99F";
  v4[27] = @"F6D2A2AC-3A6E-4E6F-8196-678ABE909D8E";
  v5[26] = @"SHOWER_HEAD_CATEGORY";
  v5[27] = @"APPLE_TV_CATEGORY";
  v4[28] = @"1D8FD40E-7CAE-4AD5-9973-977D18890DE2";
  v4[29] = @"8BFB739C-1E09-4F7B-ABB8-DD7BADD0E8A9";
  v5[28] = @"HOMEPOD_CATEGORY";
  v5[29] = @"AIRPORT_CATEGORY";
  v4[30] = @"770ADB51-8848-491A-BFA3-C34EA096CC92";
  v4[31] = @"830C0952-7CD8-44FB-B0C0-DA4EDB0F32A9";
  v5[30] = @"TARGET_CONTROLLER_CATEGORY";
  v5[31] = @"TELEVISION_CATEGORY";
  v4[32] = @"337635B4-552A-48AD-A38D-DD2D5E826C9A";
  v0 = localizedWiFiStringKey(@"ROUTER_CATEGORY");
  v5[32] = v0;
  v5[33] = @"AUDIO_RECEIVER_CATEGORY";
  v4[33] = @"BE15659C-3CE6-4FD0-B152-BCDB488446C6";
  v4[34] = @"FB953A08-6CDD-44E0-B011-CFAC559A3CFB";
  v4[35] = @"B0C866C4-3E25-4F6A-8476-A8A3B579A86E";
  v5[34] = @"TELEVISION_SET_TOP_BOX_CATEGORY";
  v5[35] = @"TELEVISION_STREAMING_STICK_CATEGORY";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:36];

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

id localizedWiFiStringKey(void *a1)
{
  v1 = a1;
  v2 = MGGetBoolAnswer();
  v3 = @"WIFI";
  if (v2)
  {
    v3 = @"WLAN";
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v1, v3];

  return v4;
}

BOOL isInternalBuild()
{
  v0 = [MEMORY[0x1E69A2A58] productInfo];
  v1 = [v0 productVariant] == 3;

  return v1;
}

void sub_19BB3F63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMPrivacyGetAuthorizationStatusForHomeKit()
{
  v0 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"HMPrivacyGetAuthorizationStatusForHomeKit"];
  v1 = *MEMORY[0x1E69D5620];
  v2 = TCCAccessPreflight();
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 5;
  }

  [v0 invalidate];

  return v3;
}

void __HMPrivacyRequestAccessForService(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v7 = v6;
  if (a1)
  {
    v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"HMPrivacyRequestAccessForService"];
    v9 = TCCAccessPreflight();
    if ((v9 - 1) >= 2)
    {
      if (!v9)
      {
        v7[2](v7, 1);
      }
    }

    else
    {
      v14 = v5;
      v16 = v7;
      v15 = v8;
      TCCAccessRequest();
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot request TCC access with unknown service", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v7[2](v7, 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_19BB3FFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location, id a11)
{
  objc_destroyWeak((v12 + 32));
  objc_destroyWeak(&location);
  os_unfair_lock_unlock(v11 + 2);
  _Unwind_Resume(a1);
}

void sub_19BB40608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BB40A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v11 + 32));
  objc_destroyWeak(&location);
  os_unfair_lock_unlock(v10 + 2);
  _Unwind_Resume(a1);
}

void sub_19BB40F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_19BB41580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location, char a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a35);
  objc_destroyWeak((v38 - 152));
  os_unfair_lock_unlock((v35 + v37));
  _Unwind_Resume(a1);
}

__CFString *HMXPCClientEntitlementsShortDescription(unint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:64];
  if (a1)
  {
    for (i = 1; i - 1 < a1; i *= 2)
    {
      if ((i & a1) != 0)
      {
        if (i <= 2047)
        {
          if (i <= 31)
          {
            if (i <= 3)
            {
              v4 = @"API";
              if (i == 1)
              {
                goto LABEL_56;
              }

              if (i == 2)
              {
                v4 = @"BG";
                goto LABEL_56;
              }
            }

            else
            {
              switch(i)
              {
                case 4:
                  v4 = @"SPI";
                  goto LABEL_56;
                case 8:
                  v4 = @"PI";
                  goto LABEL_56;
                case 16:
                  v4 = @"PIP";
                  goto LABEL_56;
              }
            }
          }

          else if (i > 255)
          {
            switch(i)
            {
              case 256:
                v4 = @"CI";
                goto LABEL_56;
              case 512:
                v4 = @"MUS";
                goto LABEL_56;
              case 1024:
                v4 = @"LOC";
                goto LABEL_56;
            }
          }

          else
          {
            switch(i)
            {
              case 32:
                v4 = @"RLP";
                goto LABEL_56;
              case 64:
                v4 = @"SP";
                goto LABEL_56;
              case 128:
                v4 = @"CC";
                goto LABEL_56;
            }
          }
        }

        else if (i >= 0x20000)
        {
          if (i >= 0x100000)
          {
            switch(i)
            {
              case 0x100000:
                v4 = @"LCF";
                goto LABEL_56;
              case 0x200000:
                v4 = @"MSP";
                goto LABEL_56;
              case 0x400000:
                v4 = @"HMMM";
                goto LABEL_56;
            }
          }

          else
          {
            switch(i)
            {
              case 0x20000:
                v4 = @"WK";
                goto LABEL_56;
              case 0x40000:
                v4 = @"AI";
                goto LABEL_56;
              case 0x80000:
                v4 = @"HML";
                goto LABEL_56;
            }
          }
        }

        else if (i >= 0x4000)
        {
          switch(i)
          {
            case 0x4000:
              v4 = @"ASA";
              goto LABEL_56;
            case 0x8000:
              v4 = @"DIA";
              goto LABEL_56;
            case 0x10000:
              v4 = @"SD";
              goto LABEL_56;
          }
        }

        else
        {
          switch(i)
          {
            case 0x800:
              v4 = @"SA";
              goto LABEL_56;
            case 0x1000:
              v4 = @"MSG";
              goto LABEL_56;
            case 0x2000:
              v4 = @"PM";
LABEL_56:
              [v2 addObject:v4];
              break;
          }
        }
      }
    }
  }

  if ([v2 count])
  {
    v5 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"None";
  }

  return v5;
}

__CFString *HMHomeManagerOptionsToString(unint64_t a1)
{
  if (!a1)
  {
    v2 = @"None";
    goto LABEL_56;
  }

  if (a1 == -1)
  {
    v2 = @"All";
    goto LABEL_56;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v4 = 1;
  do
  {
    if ((v4 & a1) == 0)
    {
      goto LABEL_54;
    }

    if (v4 > 255)
    {
      if (v4 > 4095)
      {
        if (v4 >= 0x8000)
        {
          if (v4 == 0x8000)
          {
            goto LABEL_52;
          }

          if (v4 == 0x10000)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v4 == 4096)
          {
            goto LABEL_50;
          }

          if (v4 == 0x4000)
          {
            goto LABEL_51;
          }
        }
      }

      else if (v4 > 1023)
      {
        if (v4 == 1024)
        {
          goto LABEL_48;
        }

        if (v4 == 2048)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v4 == 256)
        {
          goto LABEL_46;
        }

        if (v4 == 512)
        {
          goto LABEL_47;
        }
      }
    }

    else if (v4 > 15)
    {
      if (v4 > 63)
      {
        if (v4 == 64)
        {
          goto LABEL_44;
        }

        if (v4 == 128)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v4 == 16)
        {
          goto LABEL_42;
        }

        if (v4 == 32)
        {
          goto LABEL_43;
        }
      }
    }

    else if (v4 > 3)
    {
      if (v4 == 4)
      {
        goto LABEL_40;
      }

      if (v4 == 8)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v4 == 1)
      {
        [v3 addObject:@"Homes"];
LABEL_39:
        [v3 addObject:@"Pairing Identities"];
LABEL_40:
        [v3 addObject:@"Rooms"];
LABEL_41:
        [v3 addObject:@"Users"];
LABEL_42:
        [v3 addObject:@"Current Accessory"];
LABEL_43:
        [v3 addObject:@"Settings"];
LABEL_44:
        [v3 addObject:@"Apple Media Accessories"];
LABEL_45:
        [v3 addObject:@"Media Systems"];
LABEL_46:
        [v3 addObject:@"AirPlay Accessories"];
LABEL_47:
        [v3 addObject:@"HAP Accessories"];
LABEL_48:
        [v3 addObject:@"Television Accessories"];
LABEL_49:
        [v3 addObject:@"Devices"];
LABEL_50:
        [v3 addObject:@"Wi-Fi Router Accessories"];
LABEL_51:
        [v3 addObject:@"User Action Predictions"];
LABEL_52:
        [v3 addObject:@"Siri Endpoint Accessories"];
LABEL_53:
        [v3 addObject:@"Homes Only"];
        goto LABEL_54;
      }

      if (v4 == 2)
      {
        goto LABEL_39;
      }
    }

LABEL_54:
    v4 *= 2;
  }

  while (v4 - 1 < a1);
  v2 = [v3 componentsJoinedByString:{@", "}];

LABEL_56:

  return v2;
}

void *sub_19BB42D68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_19BB42DCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19BB42E04()
{
  v1 = sub_19BE0DF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8168, &unk_19BE357F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t _s7HomeKit29HMAccessoryMatterCapabilitiesV8VendorIDVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7HomeKit29HMAccessoryMatterCapabilitiesV8VendorIDVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

_OWORD *sub_19BB42FFC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_19BB43014()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19BB4304C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19BB430B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_19BE0DE8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19BB43120(uint64_t a1, uint64_t a2)
{
  v4 = sub_19BE0DE8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19BB43190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19BE0DE8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19BB43250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19BE0DE8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19BB4330C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_19BB433E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_19BB43BF8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

char *sub_19BB43C84()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7HomeKit32HMMediaSourceDisplayOrderProfile_televisionProfile) mediaSourceDisplayOrder];
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = v1;
  sub_19BB43E00();
  v4 = sub_19BE0E0DC();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_14:

    return v2;
  }

  v5 = sub_19BE0E32C();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  result = sub_19BB45090(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19EAEAE90](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_19BB45090((v11 > 1), v12 + 1, 1);
      }

      *(v2 + 16) = v12 + 1;
      *(v2 + 8 * v12 + 32) = v10;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t sub_19BB43E00()
{
  result = qword_1EAFE8158;
  if (!qword_1EAFE8158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAFE8158);
  }

  return result;
}

uint64_t sub_19BB43E4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7HomeKit32HMMediaSourceDisplayOrderProfile_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_19BB43EA8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC7HomeKit32HMMediaSourceDisplayOrderProfile_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_19BB43F0C()
{
  v1 = v0 + OBJC_IVAR____TtC7HomeKit32HMMediaSourceDisplayOrderProfile_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_19BB43F5C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7HomeKit32HMMediaSourceDisplayOrderProfile_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_19BB43FC8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7HomeKit32HMMediaSourceDisplayOrderProfile_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_19BB44068;
}

void sub_19BB44068(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

uint64_t sub_19BB440F0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8168, &unk_19BE357F0);
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19BB441BC, 0, 0);
}

uint64_t sub_19BB441BC()
{
  v1 = v0[18];
  v12 = *(v0[19] + OBJC_IVAR____TtC7HomeKit32HMMediaSourceDisplayOrderProfile_televisionProfile);
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_19BE0E2DC();
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_19BE0E2BC();
      v5 = *(v13 + 16);
      sub_19BE0E2EC();
      sub_19BE0E2FC();
      sub_19BE0E2CC();
      --v2;
    }

    while (v2);
  }

  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  sub_19BB43E00();
  v9 = sub_19BE0E0CC();
  v0[23] = v9;

  v0[2] = v0;
  v0[3] = sub_19BB44428;
  swift_continuation_init();
  v0[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8170, &qword_19BE352A0);
  sub_19BE0E11C();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19BB44620;
  v0[13] = &block_descriptor;
  [v12 updateMediaSourceDisplayOrder:v9 completionHandler:v0 + 10];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19BB44428()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_19BB445A4;
  }

  else
  {
    v3 = sub_19BB44538;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19BB44538()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19BB445A4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

void sub_19BB44620(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8168, &unk_19BE357F0);
    sub_19BE0E12C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8168, &unk_19BE357F0);
    sub_19BE0E13C();
  }
}

char *sub_19BB446B0(void *a1)
{
  *&v1[OBJC_IVAR____TtC7HomeKit32HMMediaSourceDisplayOrderProfile_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7HomeKit32HMMediaSourceDisplayOrderProfile_televisionProfile] = a1;
  v3 = a1;
  v4 = [v3 mediaSourceDisplayOrderModifiable];
  v1[OBJC_IVAR____TtC7HomeKit32HMMediaSourceDisplayOrderProfile_canModifyOrder] = v4;
  v5 = type metadata accessor for HMMediaSourceDisplayOrderProfile.HMTelevisionProfileDelegateAdaptor();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtCC7HomeKit32HMMediaSourceDisplayOrderProfileP33_9553D125375AA03A444888892644919534HMTelevisionProfileDelegateAdaptor_televisionProfile] = v3;
  v12.receiver = v6;
  v12.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v12, sel_init);
  [*&v8[OBJC_IVAR____TtCC7HomeKit32HMMediaSourceDisplayOrderProfileP33_9553D125375AA03A444888892644919534HMTelevisionProfileDelegateAdaptor_televisionProfile] setDelegate_];
  *&v1[OBJC_IVAR____TtC7HomeKit32HMMediaSourceDisplayOrderProfile_displayOrderProfileDelegateAdaptor] = v8;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for HMMediaSourceDisplayOrderProfile();
  v9 = objc_msgSendSuper2(&v11, sel_initWithAccessoryProfile_, v7);

  if (*&v9[OBJC_IVAR____TtC7HomeKit32HMMediaSourceDisplayOrderProfile_displayOrderProfileDelegateAdaptor])
  {
    swift_unknownObjectWeakAssign();
  }

  return v9;
}

void sub_19BB44888(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 context];
    v5 = [v4 delegateCaller];

    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v9[4] = sub_19BB4588C;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_19BB44A4C;
    v9[3] = &block_descriptor_21;
    v7 = _Block_copy(v9);
    v8 = v3;

    [v5 invokeBlock_];
    _Block_release(v7);
  }
}

uint64_t sub_19BB449BC(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC7HomeKit32HMMediaSourceDisplayOrderProfile_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_19BB44A4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_19BB44BA8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_19BB44C4C(uint64_t a1)
{
  v2 = sub_19BB455E0(&qword_1EAFE8218, type metadata accessor for HMError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_19BB44CB8(uint64_t a1)
{
  v2 = sub_19BB455E0(&qword_1EAFE8218, type metadata accessor for HMError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_19BB44D28(uint64_t a1)
{
  v2 = sub_19BB455E0(&qword_1EAFE8250, type metadata accessor for HMError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_19BB44DA4(uint64_t a1)
{
  v2 = sub_19BB455E0(&qword_1EAFE8250, type metadata accessor for HMError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_19BB44E10(uint64_t a1)
{
  v2 = sub_19BB455E0(&qword_1EAFE8250, type metadata accessor for HMError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_19BB44E7C(void *a1, uint64_t a2)
{
  v4 = sub_19BB455E0(&qword_1EAFE8250, type metadata accessor for HMError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_19BB44F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_19BB455E0(&qword_1EAFE8250, type metadata accessor for HMError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_19BB44FAC()
{
  v2 = *v0;
  sub_19BE0E4DC();
  sub_19BE0DF7C();
  return sub_19BE0E4FC();
}

uint64_t sub_19BB4500C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19BB455E0(&qword_1EAFE8250, type metadata accessor for HMError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

char *sub_19BB45090(char *a1, int64_t a2, char a3)
{
  result = sub_19BB45A04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_19BB4516C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t dispatch thunk of HMMediaSourceDisplayOrderProfile.writeOrder(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19BB45458;

  return v8(a1);
}

uint64_t sub_19BB45458()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_19BB455E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19BB457A8()
{
  result = qword_1EAFE8240;
  if (!qword_1EAFE8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8240);
  }

  return result;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_19BB458D4(void *a1, int64_t a2, char a3)
{
  result = sub_19BB45B08(a1, a2, a3, *v3, &qword_1EAFE82F0, &qword_19BE35600, &qword_1EAFE82F8, &qword_19BE35608);
  *v3 = result;
  return result;
}

void *sub_19BB45914(void *a1, int64_t a2, char a3)
{
  result = sub_19BB45B08(a1, a2, a3, *v3, &qword_1EAFE82E0, &qword_19BE355F0, &qword_1EAFE82E8, &qword_19BE355F8);
  *v3 = result;
  return result;
}

char *sub_19BB45954(char *a1, int64_t a2, char a3)
{
  result = sub_19BB45C3C(a1, a2, a3, *v3, &qword_1EAFE82D8, &qword_19BE355E8);
  *v3 = result;
  return result;
}

char *sub_19BB4598C(char *a1, int64_t a2, char a3)
{
  result = sub_19BB45C3C(a1, a2, a3, *v3, &qword_1EAFE82D0, &qword_19BE355E0);
  *v3 = result;
  return result;
}

char *sub_19BB459C4(char *a1, int64_t a2, char a3)
{
  result = sub_19BB45D48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19BB459E4(void *a1, int64_t a2, char a3)
{
  result = sub_19BB45E54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19BB45A04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8300, &qword_19BE35610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_19BB45B08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_19BB45C3C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_19BB45D48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE82C8, &qword_19BE355D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19BB45E54(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8258, &qword_19BE355C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8260, &qword_19BE355D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_19BB45FF4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19BB46014(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_19BB46064(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t AccessoryInfoFetchSettingItem.keyPath.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AccessoryInfoFetchSettingItem.__allocating_init(keyPath:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AccessoryInfoFetchSettingItem.init(keyPath:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_19BB46138()
{
  v1 = v0;
  v2 = sub_19BE0DE5C();
  v3 = sub_19BE0DE5C();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_19BE0DF9C();
  v7 = HMImmutableSettingChangeEventTopicFromComponents(v2, v3, v6);

  v8 = sub_19BE0DFAC();
  return v8;
}

uint64_t AccessoryInfoFetchSettingItem.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AccessoryInfoFetchSettingItem.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id sub_19BB462BC(uint64_t a1)
{
  v3 = *MEMORY[0x1E69A2980];
  sub_19BE0DFAC();
  sub_19BE0DF0C();
  *&v1[OBJC_IVAR___HMAccessoryInfoFetchController_dataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___HMAccessoryInfoFetchController_messageDispatcher] = 0;
  v4 = OBJC_IVAR___HMAccessoryInfoFetchController_accessoryFetchHistory;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83A0, &qword_19BE357E8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = MEMORY[0x1E69E7CC8];
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR___HMAccessoryInfoFetchController_minimumFetchThrottleSeconds] = 0x403E000000000000;
  v6 = OBJC_IVAR___HMAccessoryInfoFetchController_homeUUID;
  v7 = sub_19BE0DE8C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v1[v6], a1, v7);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for AccessoryInfoFetchController();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

uint64_t sub_19BB46434(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19BB46454, 0, 0);
}

uint64_t sub_19BB46454()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + 32) + OBJC_IVAR___HMAccessoryInfoFetchController_dataSource;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 40) = Strong;
  v3 = *(v0 + 32);
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v1 + 8);
    v6 = *(v3 + OBJC_IVAR___HMAccessoryInfoFetchController_accessoryFetchHistory);

    os_unfair_lock_lock((v6 + 24));
    sub_19BB47E1C((v6 + 16), v3, v4, v5);
    os_unfair_lock_unlock((v6 + 24));
    v10 = *(v0 + 24);
    v11 = *(v0 + 32);

    swift_unknownObjectRetain();
    sub_19BB494B4(v10, v4, v5, v11, v0 + 16);

    swift_unknownObjectRelease();
    v15 = *(v0 + 32);
    if (*(*(v0 + 16) + 16))
    {
      v16 = swift_task_alloc();
      *(v0 + 48) = v16;
      *(v16 + 16) = v15;
      *(v16 + 24) = v0 + 16;
      v17 = *(MEMORY[0x1E69E8920] + 4);
      v18 = swift_task_alloc();
      *(v0 + 56) = v18;
      *v18 = v0;
      v18[1] = sub_19BB467D8;

      return MEMORY[0x1EEE6DE38]();
    }

    v19 = sub_19BE0DEFC();
    v20 = sub_19BE0E16C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_19BB39000, v19, v20, "Nothing left to fetch", v21, 2u);
      MEMORY[0x19EAEC200](v21, -1, -1);
    }

    swift_unknownObjectRelease();

    v13 = *(v0 + 8);
  }

  else
  {
    v7 = sub_19BE0DEFC();
    v8 = sub_19BE0E18C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_19BB39000, v7, v8, "Nil data source", v9, 2u);
      MEMORY[0x19EAEC200](v9, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    v12 = *(v0 + 16);

    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_19BB467D8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_19BB46960;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_19BB468F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19BB468F4()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_19BB46960()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_unknownObjectRelease();

  v3 = v0[8];
  v4 = v0[2];

  v5 = v0[1];

  return v5();
}

uint64_t sub_19BB469D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v94 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83C8, &unk_19BE35820);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v85 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v85 - v16;
  v18 = sub_19BE0DE8C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v87 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v93 = &v85 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v89 = &v85 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v85 - v27;
  v29 = *a1;
  ObjectType = swift_getObjectType();
  v31 = *(a3 + 8);
  v91 = a2;
  v92 = a3;
  v88 = ObjectType;
  v31(a4, v29 + OBJC_IVAR____TtC7HomeKit32AccessoryInfoFetchItemCollection_accessoryUniqueIdentifier);
  v32 = *(v19 + 48);
  v99 = v18;
  if (v32(v17, 1, v18) == 1)
  {
    sub_19BB49974(v17, &qword_1EAFE83D0, &unk_19BE37520);

    v33 = sub_19BE0DEFC();
    v34 = sub_19BE0E18C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v100 = v36;
      *v35 = 136315138;
      sub_19BB499F4(&qword_1EAFE8820);
      v37 = sub_19BE0E43C();
      v39 = sub_19BB50188(v37, v38, &v100);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_19BB39000, v33, v34, "Accessory %s not found in home", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x19EAEC200](v36, -1, -1);
      MEMORY[0x19EAEC200](v35, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    return swift_willThrow();
  }

  else
  {
    v86 = v29;
    v96 = v19;
    (*(v19 + 32))(v28, v17, v99);
    v95 = a4;
    v41 = *(a4 + OBJC_IVAR___HMAccessoryInfoFetchController_accessoryFetchHistory);

    os_unfair_lock_lock((v41 + 24));
    v42 = *(v41 + 16);
    if (*(v42 + 16) && (v43 = sub_19BB506BC(v28), (v44 & 1) != 0))
    {
      v45 = v43;
      v46 = *(v42 + 56);
      v47 = sub_19BE0DE2C();
      v48 = *(v47 - 8);
      v49 = v48;
      v50 = v46 + *(v48 + 72) * v45;
      v51 = v98;
      (*(v48 + 16))(v98, v50, v47);
      (*(v49 + 56))(v51, 0, 1, v47);
      sub_19BB49974(v51, &qword_1EAFE83C8, &unk_19BE35820);
      os_unfair_lock_unlock((v41 + 24));

      v52 = v96;
      v53 = v87;
      (*(v96 + 16))(v87, v28, v99);
      v54 = sub_19BE0DEFC();
      v55 = sub_19BE0E16C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v100 = v57;
        *v56 = 136315138;
        sub_19BB499F4(&qword_1EAFE8820);
        v58 = sub_19BE0E43C();
        v97 = v28;
        v60 = v59;
        v61 = *(v52 + 8);
        v61(v53, v99);
        v62 = sub_19BB50188(v58, v60, &v100);
        v63 = v97;

        *(v56 + 4) = v62;
        _os_log_impl(&dword_19BB39000, v54, v55, "%s will not be queried due to fetch throttle", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x19EAEC200](v57, -1, -1);
        MEMORY[0x19EAEC200](v56, -1, -1);

        return (v61)(v63, v99);
      }

      v78 = *(v52 + 8);
      v78(v53, v99);
    }

    else
    {
      v64 = sub_19BE0DE2C();
      v97 = v28;
      v65 = v64;
      v87 = *(*(v64 - 8) + 56);
      v66 = v98;
      (v87)(v98, 1, 1, v64);
      sub_19BB49974(v66, &qword_1EAFE83C8, &unk_19BE35820);
      v98 = *(v96 + 16);
      v67 = v89;
      (v98)(v89, v97, v99);
      v68 = v90;
      (*(v92 + 16))(v95, v88);
      v69 = v65;
      v28 = v97;
      (v87)(v68, 0, 1, v69);
      sub_19BB4733C(v68, v67);
      os_unfair_lock_unlock((v41 + 24));

      v70 = v93;
      (v98)(v93, v28, v99);
      v71 = sub_19BE0DEFC();
      v72 = sub_19BE0E16C();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v100 = v74;
        *v73 = 136315138;
        sub_19BB499F4(&qword_1EAFE8820);
        v75 = sub_19BE0E43C();
        v77 = v76;
        v78 = *(v96 + 8);
        v78(v70, v99);
        v79 = sub_19BB50188(v75, v77, &v100);
        v28 = v97;

        *(v73 + 4) = v79;
        _os_log_impl(&dword_19BB39000, v71, v72, "%s will be queried", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x19EAEC200](v74, -1, -1);
        MEMORY[0x19EAEC200](v73, -1, -1);
      }

      else
      {

        v78 = *(v96 + 8);
        v80 = (v78)(v70, v99);
      }

      v81 = *(v86 + 16);
      MEMORY[0x1EEE9AC00](v80);
      v82 = v94;
      v83 = v95;
      *(&v85 - 4) = v28;
      *(&v85 - 3) = v83;
      *(&v85 - 2) = v82;
      sub_19BB47668(sub_19BB499D4, (&v85 - 6), v84);
    }

    return (v78)(v28, v99);
  }
}

uint64_t sub_19BB4733C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83C8, &unk_19BE35820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_19BE0DE2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_19BB49974(a1, &qword_1EAFE83C8, &unk_19BE35820);
    sub_19BB48CEC(a2, v8);
    v14 = sub_19BE0DE8C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_19BB49974(v8, &qword_1EAFE83C8, &unk_19BE35820);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_19BB491BC(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_19BE0DE8C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_19BB47568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = (*(**a1 + 88))(a2, a3 + OBJC_IVAR___HMAccessoryInfoFetchController_homeUUID);
  if (v6)
  {
    v7 = result;
    v8 = v6;
    v9 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v9;
    if ((result & 1) == 0)
    {
      result = sub_19BB4FD00(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
      *a4 = result;
    }

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_19BB4FD00((v10 > 1), v11 + 1, 1, v9);
      v9 = result;
      *a4 = result;
    }

    *(v9 + 16) = v11 + 1;
    v12 = v9 + 16 * v11;
    *(v12 + 32) = v7;
    *(v12 + 40) = v8;
  }

  return result;
}

uint64_t sub_19BB47668(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x19EAEAE90](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_19BE0E32C();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_19BB4777C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v33 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8168, &unk_19BE357F0);
  v5 = *(v31 - 8);
  v32 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v29 - v6;
  v7 = sub_19BE0DF1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = @"HMAccessoryInfoFetchMessageName";
  v11 = objc_allocWithZone(MEMORY[0x1E69A2A00]);
  v12 = sub_19BE0DE5C();
  v13 = [v11 initWithTarget_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83A8, &qword_19BE366B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19BE35710;
  *(inited + 32) = sub_19BE0DFAC();
  *(inited + 40) = v15;
  v16 = *a3;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83B0, &unk_19BE35800);
  *(inited + 48) = v16;

  sub_19BB51184(inited);
  swift_setDeallocating();
  sub_19BB49974(inited + 32, &qword_1EAFE83B8, &qword_19BE366C0);
  v17 = objc_allocWithZone(MEMORY[0x1E69A2A10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
  v18 = sub_19BE0DF2C();

  v29 = [v17 initWithName:v29 destination:v13 payload:v18];

  (*(v8 + 16))(v10, a2 + OBJC_IVAR___HMAccessoryInfoFetchController_log, v7);
  v19 = v30;
  v20 = v31;
  (*(v5 + 16))(v30, v33, v31);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v21, v10, v7);
  v24 = v19;
  v25 = v29;
  (*(v5 + 32))(v23 + v22, v24, v20);
  aBlock[4] = sub_19BB4986C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19BB47D6C;
  aBlock[3] = &block_descriptor_0;
  v26 = _Block_copy(aBlock);

  [(__CFString *)v25 setResponseHandler:v26];
  _Block_release(v26);
  v27 = *(a2 + OBJC_IVAR___HMAccessoryInfoFetchController_messageDispatcher);
  if (v27)
  {
    v28 = v27;
    [v28 sendMessage_];
  }
}

uint64_t sub_19BB47BA8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_19BE0DEFC();
    v4 = sub_19BE0E18C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = a1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_19BB39000, v3, v4, "Fetch failed %@", v5, 0xCu);
      sub_19BB49974(v6, &qword_1EAFE83C0, &qword_19BE35818);
      MEMORY[0x19EAEC200](v6, -1, -1);
      MEMORY[0x19EAEC200](v5, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8168, &unk_19BE357F0);
    return sub_19BE0E12C();
  }

  else
  {
    v10 = sub_19BE0DEFC();
    v11 = sub_19BE0E16C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_19BB39000, v10, v11, "Fetch succeeded", v12, 2u);
      MEMORY[0x19EAEC200](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8168, &unk_19BE357F0);
    return sub_19BE0E13C();
  }
}

uint64_t sub_19BB47D6C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
    v3 = sub_19BE0DF3C();
  }

  v7 = a2;
  v6(a2, v3);
}

uint64_t sub_19BB47E1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v118 = a3;
  v120 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83C8, &unk_19BE35820) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v103 = &v93 - v7;
  v8 = sub_19BE0DE2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v93 - v14;
  v15 = sub_19BE0DE8C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v101 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v93 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v93 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83E0, &qword_19BE35830);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v121 = &v93 - v28;
  v29 = *a1;
  v30 = *(*a1 + 64);
  v104 = *a1 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v100 = OBJC_IVAR___HMAccessoryInfoFetchController_log;
  v34 = (v31 + 63) >> 6;
  v113 = (v16 + 16);
  v105 = v9 + 16;
  v124 = (v16 + 32);
  v126 = (v9 + 32);
  v119 = a4;
  v35 = a4 + 24;
  v36 = v8;
  v37 = v22;
  v38 = a1;
  v115 = (v9 + 8);
  v116 = v35;
  v109 = v16;
  v122 = (v16 + 8);
  v39 = v27;
  v111 = v9;
  v99 = (v9 + 56);
  v40 = v13;

  v42 = 0;
  *&v43 = 136315138;
  v97 = v43;
  v114 = result;
  v102 = result;
  v112 = v38;
  v110 = v13;
  v125 = v15;
  v123 = v37;
  v106 = v39;
  v117 = v34;
  v127 = v36;
  while (1)
  {
    v44 = v42;
    if (!v33)
    {
      break;
    }

    while (1)
    {
      v45 = v44;
LABEL_12:
      v47 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v48 = v47 | (v45 << 6);
      v49 = v114;
      v50 = v109;
      (*(v109 + 16))(v107, *(v114 + 48) + *(v109 + 72) * v48, v15);
      v51 = *(v49 + 56);
      v52 = v111;
      v53 = v108;
      v54 = v127;
      (*(v111 + 16))(v108, v51 + *(v111 + 72) * v48, v127);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83E8, &qword_19BE35838);
      v56 = *(v55 + 48);
      v39 = v106;
      (*(v50 + 32))();
      (*(v52 + 32))(v39 + v56, v53, v54);
      (*(*(v55 - 8) + 56))(v39, 0, 1, v55);
      v128 = v45;
      v38 = v112;
      v40 = v110;
LABEL_13:
      v57 = v121;
      sub_19BB49A38(v39, v121);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83E8, &qword_19BE35838);
      if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
      {
      }

      v59 = *(v58 + 48);
      v60 = v123;
      v15 = v125;
      (*v124)(v123, v57, v125);
      v61 = *v126;
      v62 = v57 + v59;
      v63 = v127;
      (*v126)(v40, v62, v127);
      ObjectType = swift_getObjectType();
      if (fabs((*(v119 + 24))(v120, v40, ObjectType)) >= 30.0)
      {
        break;
      }

      (*v115)(v40, v63);
      result = (*v122)(v60, v15);
      v44 = v128;
      v34 = v117;
      if (!v33)
      {
        goto LABEL_6;
      }
    }

    v66 = v101;
    (*v113)(v101, v60, v15);
    v67 = sub_19BE0DEFC();
    v68 = sub_19BE0E16C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v95 = v67;
      v70 = v69;
      v96 = swift_slowAlloc();
      v129 = v96;
      *v70 = v97;
      sub_19BB499F4(&qword_1EAFE8820);
      v94 = v68;
      v93 = sub_19BE0E43C();
      v72 = v71;
      v98 = *v122;
      v98(v66, v15);
      v73 = sub_19BB50188(v93, v72, &v129);

      v74 = v70;
      *(v70 + 4) = v73;
      v75 = v95;
      v76 = v74;
      _os_log_impl(&dword_19BB39000, v95, v94, "Clearing fetch history for %s", v74, 0xCu);
      v77 = v96;
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x19EAEC200](v77, -1, -1);
      MEMORY[0x19EAEC200](v76, -1, -1);
    }

    else
    {

      v98 = *v122;
      v98(v66, v15);
    }

    v78 = v123;
    v79 = sub_19BB506BC(v123);
    if (v80)
    {
      v81 = v79;
      v82 = *v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = *v38;
      v129 = *v38;
      v85 = v103;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_19BB5F5D4();
        v85 = v103;
        v84 = v129;
      }

      v86 = v98;
      v98(*(v84 + 48) + *(v109 + 72) * v81, v15);
      v87 = v111;
      v88 = v85;
      v89 = v127;
      v61(v88, *(v84 + 56) + *(v111 + 72) * v81, v127);
      sub_19BB48E8C(v81, v84);
      v90 = *(v87 + 8);
      v40 = v110;
      v90(v110, v89);
      v86(v123, v15);
      v91 = 0;
      v102 = v84;
      v38 = v112;
      *v112 = v84;
    }

    else
    {
      v89 = v127;
      (*v115)(v40, v127);
      v98(v78, v15);
      v91 = 1;
    }

    v92 = v103;
    (*v99)(v103, v91, 1, v89);
    result = sub_19BB49974(v92, &qword_1EAFE83C8, &unk_19BE35820);
    v34 = v117;
    v42 = v128;
  }

LABEL_6:
  if (v34 <= v44 + 1)
  {
    v46 = v44 + 1;
  }

  else
  {
    v46 = v34;
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v45 >= v34)
    {
      v128 = v46 - 1;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83E8, &qword_19BE35838);
      (*(*(v65 - 8) + 56))(v39, 1, 1, v65);
      v33 = 0;
      goto LABEL_13;
    }

    v33 = *(v104 + 8 * v45);
    ++v44;
    if (v33)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

id AccessoryInfoFetchController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccessoryInfoFetchController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryInfoFetchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19BB489B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19BE0DE5C();
  v4 = [v1 accessoryWithUniqueIdentifier_];

  if (v4)
  {
    v5 = [v4 internalUUID];

    sub_19BE0DE6C();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_19BE0DE8C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

char *HMHome.accessoryInfoFetchController.getter()
{
  v1 = v0;
  v2 = sub_19BE0DE8C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 accessoryInfoFetch])
  {
    sub_19BE0E1EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    type metadata accessor for AccessoryInfoFetchController();
    if (swift_dynamicCast())
    {
      return v15[1];
    }
  }

  else
  {
    sub_19BB49974(v18, &qword_1EAFE8388, &qword_19BE364A0);
  }

  v7 = [v1 uuid];
  sub_19BE0DE6C();

  v8 = objc_allocWithZone(type metadata accessor for AccessoryInfoFetchController());
  v6 = sub_19BB462BC(v5);
  v9 = [v1 context];
  if (!v9)
  {
    v10 = objc_allocWithZone(_HMContext);
    v11 = sub_19BE0DF9C();
    v9 = [v10 initWithName_];
  }

  v12 = [v9 messageDispatcher];
  v13 = *&v6[OBJC_IVAR___HMAccessoryInfoFetchController_messageDispatcher];
  *&v6[OBJC_IVAR___HMAccessoryInfoFetchController_messageDispatcher] = v12;

  *&v6[OBJC_IVAR___HMAccessoryInfoFetchController_dataSource + 8] = &off_1F0E8E1D8;
  swift_unknownObjectWeakAssign();

  [v1 setAccessoryInfoFetch_];
  return v6;
}

uint64_t sub_19BB48CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_19BB506BC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19BB5F5D4();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_19BE0DE8C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_19BE0DE2C();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_19BB48E8C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_19BE0DE2C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_19BB48E8C(int64_t a1, uint64_t a2)
{
  v4 = sub_19BE0DE8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00]();
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_19BE0E20C();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_19BB499F4(&qword_1EAFE83D8);
      v24 = sub_19BE0DF6C();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_19BE0DE2C() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_19BB491BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_19BE0DE8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_19BB506BC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_19BB5F5D4();
      goto LABEL_7;
    }

    sub_19BB5E7CC(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_19BB506BC(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_19BB493C0(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_19BE0E46C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_19BE0DE2C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_19BB493C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_19BE0DE8C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_19BE0DE2C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_19BB494B4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    do
    {
      v9 = 0;
      while ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19EAEAE90](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v15 = v10;
        sub_19BB469D4(&v15, a2, a3, a4, a5);

        if (!v5)
        {
          ++v9;
          if (v11 != v8)
          {
            continue;
          }
        }

        return result;
      }

      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v10 = *(v7 + 8 * v9 + 32);

      v11 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_19BE0E32C();
      v8 = result;
    }

    while (result);
  }

  return result;
}

uint64_t type metadata accessor for AccessoryInfoFetchController()
{
  result = qword_1EAFE8390;
  if (!qword_1EAFE8390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19BB4962C()
{
  result = sub_19BE0DF1C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_19BE0DE8C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of AccessoryInfoFetchController.fetchUpdates(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19BB45458;

  return v8(a1);
}

uint64_t sub_19BB4986C(void *a1)
{
  v2 = *(sub_19BE0DF1C() - 8);
  v3 = ((*(v2 + 80) + 16) & ~*(v2 + 80)) + *(v2 + 64);
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8168, &unk_19BE357F0) - 8) + 80);

  return sub_19BB47BA8(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19BB49974(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_19BB499F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19BE0DE8C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19BB49A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83E0, &qword_19BE35830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19BB49AA8()
{
  v0 = objc_opt_self();
  v1 = sub_19BE0DE5C();
  v2 = sub_19BE0DE5C();
  v3 = [v0 topicFromSuffixID:506 homeUUID:v1 accessoryUUID:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_19BE0DFAC();

  return v4;
}

uint64_t _sSo11HMAccessoryC7HomeKitE18televisionProfiles3for13isSPIEntitledSaySo0A7ProfileCGSaySo9HMServiceCG_SbtFZ_0(unint64_t a1, char a2)
{
  v58 = MEMORY[0x1E69E7CC0];
  v52 = a1;
  if (a1 >> 62)
  {
    goto LABEL_60;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v53 = v2;
    v54 = a1 & 0xC000000000000001;
    v48 = MEMORY[0x1E69E7CC0];
    v50 = a1 + 32;
    v51 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v54)
      {
        v5 = MEMORY[0x19EAEAE90](v4, a1);
      }

      else
      {
        if (v4 >= *(v51 + 16))
        {
          goto LABEL_59;
        }

        v5 = *(v50 + 8 * v4);
      }

      v55 = v5;
      v6 = __OFADD__(v4, 1);
      v7 = v4 + 1;
      if (v6)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v2 = sub_19BE0E32C();
        a1 = v52;
        goto LABEL_3;
      }

      v49 = v7;
      v8 = [v5 serviceType];
      v9 = sub_19BE0DFAC();
      v11 = v10;

      if (v9 == sub_19BE0DFAC() && v11 == v12)
      {
      }

      else
      {
        v14 = sub_19BE0E44C();

        if ((v14 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      v15 = 0;
      v57 = v3;
      do
      {
        while (1)
        {
          if (v54)
          {
            v16 = MEMORY[0x19EAEAE90](v15, v52);
          }

          else
          {
            if (v15 >= *(v51 + 16))
            {
              goto LABEL_57;
            }

            v16 = *(v50 + 8 * v15);
          }

          v17 = v16;
          v6 = __OFADD__(v15, 1);
          v18 = v15 + 1;
          if (v6)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v19 = [v55 linkedServiceInstanceIDs];
          sub_19BB4A270(0, &qword_1EAFE8158, 0x1E696AD98);
          v20 = sub_19BE0E0DC();

          v56 = v18;
          if (!(v20 >> 62))
          {
            break;
          }

          v21 = sub_19BE0E32C();
          if (v21)
          {
            goto LABEL_28;
          }

LABEL_20:

          v2 = v53;
          v3 = MEMORY[0x1E69E7CC0];
          v15 = v56;
          if (v56 == v53)
          {
            goto LABEL_43;
          }
        }

        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_20;
        }

LABEL_28:
        v22 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x19EAEAE90](v22, v20);
          }

          else
          {
            if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v23 = *(v20 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          sub_19BB4A270(0, &qword_1EAFE83F0, 0x1E69E58C0);
          v26 = [v17 instanceID];
          v27 = sub_19BE0E1AC();

          if (v27)
          {
            break;
          }

          ++v22;
          if (v25 == v21)
          {
            goto LABEL_20;
          }
        }

        v28 = v17;
        MEMORY[0x19EAEACD0]();
        v15 = v56;
        v2 = v53;
        v3 = MEMORY[0x1E69E7CC0];
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v29 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_19BE0E0FC();
        }

        sub_19BE0E10C();
      }

      while (v56 != v53);
LABEL_43:
      if (a2)
      {
        v30 = objc_allocWithZone(HMTelevisionProfile);
        sub_19BB4A270(0, &qword_1ED8FCBA0, off_1E7545B48);
        v31 = v55;
        v32 = sub_19BE0E0CC();
        v33 = [v30 initWithTelevisionService:v31 linkedServices:v32];

        v34 = v33;
        MEMORY[0x19EAEACD0]();
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v45 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_19BE0E0FC();
        }

        sub_19BE0E10C();

        v48 = v58;
      }

      v35 = objc_allocWithZone(HMTelevisionProfile);
      sub_19BB4A270(0, &qword_1ED8FCBA0, off_1E7545B48);
      v36 = v55;
      v37 = sub_19BE0E0CC();

      v38 = [v35 initWithTelevisionService:v36 linkedServices:v37];

      v39 = [v38 accessoryProfile];
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        objc_allocWithZone(type metadata accessor for HMMediaSourceDisplayOrderProfile());
        v42 = v39;
        v43 = sub_19BB446B0(v41);
        MEMORY[0x19EAEACD0]();
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v44 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_19BE0E0FC();
        }

        sub_19BE0E10C();

        v48 = v58;
      }

      else
      {
      }

LABEL_6:
      v4 = v49;
      a1 = v52;
      if (v49 == v2)
      {
        return v48;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_19BB4A270(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_19BB4A2B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_19BB45954(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_19BE0E1FC();
  v7 = result;
  v8 = 0;
  v26 = *(a1 + 36);
  v24 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v25 = *(*(a1 + 48) + 8 * v7);
    v11 = *(*(a1 + 56) + 8 * v7);

    v13 = sub_19BB4A528(v12);

    v15 = *(v27 + 16);
    v14 = *(v27 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_19BB45954((v14 > 1), v15 + 1, 1);
    }

    *(v27 + 16) = v15 + 1;
    v16 = v27 + 16 * v15;
    *(v16 + 32) = v25;
    *(v16 + 40) = v13;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v10);
    if ((v17 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v7 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_19BB533A8(v7, v26, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_19BB533A8(v7, v26, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v24)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_19BB4A528(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_19BB4598C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_19BE0E1FC();
  v7 = result;
  v8 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v23 = *(*(a1 + 48) + 8 * v7);
    v11 = *(*(a1 + 56) + 8 * v7);
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_19BB4598C((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v23;
    *(v14 + 40) = v11;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v10);
    if ((v15 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v7 & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v19 = (a1 + 72 + 8 * v10);
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_19BB533A8(v7, v24, 0);
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_19BB533A8(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v22)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_19BB4A76C()
{
  v0 = sub_19BE0DF1C();
  __swift_allocate_value_buffer(v0, qword_1EAFE83F8);
  __swift_project_value_buffer(v0, qword_1EAFE83F8);
  v1 = *MEMORY[0x1E69A2980];
  sub_19BE0DFAC();
  return sub_19BE0DF0C();
}

uint64_t AccessoryMFiCapability.matchesCase(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v1 + 8) >> 6;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if ((v2 & 0xC0) == 0x80)
      {
        return 1;
      }
    }

    else if (v2 > 0xBF)
    {
      return 1;
    }
  }

  else if (v3)
  {
    if ((v2 & 0xC0) == 0x40)
    {
      return 1;
    }
  }

  else if (v2 < 0x40)
  {
    return 1;
  }

  return 0;
}

HomeKit::AccessoryMFiCapability::Name_optional __swiftcall AccessoryMFiCapability.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19BE0E36C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AccessoryMFiCapability.Name.rawValue.getter()
{
  v1 = 1735877473;
  v2 = 6382947;
  if (*v0 != 2)
  {
    v2 = 7106157;
  }

  if (*v0)
  {
    v1 = 6386785;
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

uint64_t sub_19BB4A930(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1735877473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 6382947;
    }

    else
    {
      v4 = 7106157;
    }

    v5 = 0xE300000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 6386785;
    }

    else
    {
      v4 = 1735877473;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 6382947;
  if (a2 != 2)
  {
    v7 = 7106157;
  }

  if (a2)
  {
    v2 = 6386785;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_19BE0E44C();
  }

  return v10 & 1;
}

uint64_t sub_19BB4AA44()
{
  v1 = *v0;
  sub_19BE0E4DC();
  sub_19BE0E00C();

  return sub_19BE0E4FC();
}

uint64_t sub_19BB4AAEC()
{
  *v0;
  *v0;
  *v0;
  sub_19BE0E00C();
}

uint64_t sub_19BB4AB80()
{
  v1 = *v0;
  sub_19BE0E4DC();
  sub_19BE0E00C();

  return sub_19BE0E4FC();
}

void sub_19BB4AC30(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1735877473;
  v4 = 6382947;
  if (*v1 != 2)
  {
    v4 = 7106157;
  }

  if (*v1)
  {
    v3 = 6386785;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_19BB4AC94(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7567206;
  }

  else
  {
    v2 = 7364963;
  }

  if (*a2)
  {
    v3 = 7567206;
  }

  else
  {
    v3 = 7364963;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_19BE0E44C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_19BB4AD0C()
{
  v1 = *v0;
  sub_19BE0E4DC();
  sub_19BE0E00C();

  return sub_19BE0E4FC();
}

uint64_t sub_19BB4AD74()
{
  *v0;
  sub_19BE0E00C();
}

uint64_t sub_19BB4ADC0()
{
  v1 = *v0;
  sub_19BE0E4DC();
  sub_19BE0E00C();

  return sub_19BE0E4FC();
}

void sub_19BB4AE30(uint64_t *a1@<X8>)
{
  v2 = 7364963;
  if (*v1)
  {
    v2 = 7567206;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_19BB4AE58()
{
  if (*v0)
  {
    return 7567206;
  }

  else
  {
    return 7364963;
  }
}

uint64_t sub_19BB4AE94(uint64_t a1)
{
  v2 = sub_19BB52FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BB4AED0(uint64_t a1)
{
  v2 = sub_19BB52FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_19BB4AF0C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = a1 == 1735877473 && a2 == 0xE400000000000000;
  if (v8 || (sub_19BE0E44C() & 1) != 0)
  {
    v11 = a4 & 1 | 0x40;
    *a5 = a3;
LABEL_7:
    *(a5 + 8) = v11;
    return;
  }

  if (a1 == 6386785 && a2 == 0xE300000000000000 || (sub_19BE0E44C() & 1) != 0)
  {
    if ((a4 & 1) == 0)
    {
      *a5 = a3;
      *(a5 + 8) = 0;
      return;
    }
  }

  else if (a1 == 6382947 && a2 == 0xE300000000000000 || (sub_19BE0E44C() & 1) != 0)
  {
    if ((a4 & 1) == 0)
    {
      *a5 = a3;
      v11 = 0x80;
      goto LABEL_7;
    }
  }

  else
  {
    if ((a1 != 7106157 || a2 != 0xE300000000000000) && (sub_19BE0E44C() & 1) == 0)
    {
      if (qword_1EAFE8130 != -1)
      {
        swift_once();
      }

      v20 = sub_19BE0DF1C();
      __swift_project_value_buffer(v20, qword_1EAFE83F8);

      v21 = sub_19BE0DEFC();
      v22 = sub_19BE0E16C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_19BB50188(a1, a2, &v25);
        _os_log_impl(&dword_19BB39000, v21, v22, "Ignoring unknown capability %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x19EAEC200](v24, -1, -1);
        MEMORY[0x19EAEC200](v23, -1, -1);
      }

      *a5 = 0;
      v11 = -2;
      goto LABEL_7;
    }

    if ((a4 & 1) == 0)
    {
      *a5 = a3;
      v11 = -64;
      goto LABEL_7;
    }
  }

  if (qword_1EAFE8130 != -1)
  {
    swift_once();
  }

  v12 = sub_19BE0DF1C();
  __swift_project_value_buffer(v12, qword_1EAFE83F8);

  v13 = sub_19BE0DEFC();
  v14 = sub_19BE0E18C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_19BB50188(a1, a2, &v25);
    _os_log_impl(&dword_19BB39000, v13, v14, "Missing firmwareStart for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x19EAEC200](v16, -1, -1);
    MEMORY[0x19EAEC200](v15, -1, -1);
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_19BE0E25C();

  v25 = 0xD00000000000001ALL;
  v26 = 0x800000019BE381A0;
  MEMORY[0x19EAEAC30](a1, a2);
  v17 = v25;
  v18 = v26;
  sub_19BB53174();
  swift_allocError();
  *v19 = v17;
  *(v19 + 8) = v18;
  *(v19 + 16) = 1;
  swift_willThrow();
}

uint64_t sub_19BB4B32C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a5;
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8590, &qword_19BE36458);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB52FA8();
  sub_19BE0E51C();
  v17 = 0;
  sub_19BE0E40C();
  if (!v5)
  {
    v16 = 1;
    sub_19BE0E3FC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_19BB4B4CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_19BB517A8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t AccessoryMFiCapabilitiesList.accessoriesByVendorID.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

HomeKit::AccessoryMFiCapabilitiesList __swiftcall AccessoryMFiCapabilitiesList.init()()
{
  v1 = v0;
  result.accessoriesByVendorID._rawValue = sub_19BB512B4(MEMORY[0x1E69E7CC0]);
  v1->accessoriesByVendorID._rawValue = result.accessoriesByVendorID._rawValue;
  return result;
}

uint64_t AccessoryMFiCapabilitiesList.init(capabilities:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);

  result = sub_19BB513BC(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_19BB4B5FC()
{
  sub_19BE0E4DC();
  sub_19BE0E00C();
  return sub_19BE0E4FC();
}

uint64_t sub_19BB4B668()
{
  sub_19BE0E4DC();
  sub_19BE0E00C();
  return sub_19BE0E4FC();
}

uint64_t sub_19BB4B6B8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_19BE0E36C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_19BB4B740@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_19BE0E36C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_19BB4B798(uint64_t a1)
{
  v2 = sub_19BB513EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BB4B7D4(uint64_t a1)
{
  v2 = sub_19BB513EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessoryMFiCapabilitiesList.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8410, &qword_19BE35890);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB513EC();
  sub_19BE0E50C();
  v10 = v2;
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = v5;
  v12 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8420, &qword_19BE35898);
  sub_19BB51440();
  sub_19BE0E3CC();
  v42 = v8;
  v13 = v52;
  v14 = *(v52 + 16);
  if (!v14)
  {

    v33 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v34 = v33;
    if (*(v33 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8440, &qword_19BE358A8);
      v35 = sub_19BE0E35C();
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC8];
    }

    v36 = v42;
    v52 = v35;
    sub_19BB50BFC(v34, 1, &v52);
    (*(v11 + 8))(v36, v4);
    *v12 = v52;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v39 = v11;
  v40 = v4;
  v41 = a1;
  v52 = MEMORY[0x1E69E7CC0];
  sub_19BB458D4(0, v14, 0);
  v15 = 0;
  v16 = v52;
  v44 = v13;
  v45 = v13 + 32;
  v17 = v13;
  v46 = v14;
  while (v15 < *(v17 + 16))
  {
    v18 = (v45 + 16 * v15);
    v19 = v18[1];
    v50 = *v18;
    v20 = *(v19 + 16);
    if (v20)
    {
      v48 = v16;
      v49 = 0;
      v51 = MEMORY[0x1E69E7CC0];
      swift_bridgeObjectRetain_n();
      sub_19BB45914(0, v20, 0);
      v21 = v51;
      v47 = v19;
      v22 = (v19 + 40);
      do
      {
        v24 = *(v22 - 1);
        v23 = *v22;
        v51 = v21;
        v26 = *(v21 + 16);
        v25 = *(v21 + 24);

        if (v26 >= v25 >> 1)
        {
          sub_19BB45914((v25 > 1), v26 + 1, 1);
          v21 = v51;
        }

        *(v21 + 16) = v26 + 1;
        v27 = v21 + 16 * v26;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        v22 += 2;
        --v20;
      }

      while (v20);

      v16 = v48;
      v10 = v49;
      v17 = v44;
      if (*(v21 + 16))
      {
LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8438, &qword_19BE358A0);
        v28 = sub_19BE0E35C();
        goto LABEL_14;
      }
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_11;
      }
    }

    v28 = MEMORY[0x1E69E7CC8];
LABEL_14:
    v51 = v28;
    sub_19BB5198C(v21, 1, &v51);
    if (v10)
    {
      goto LABEL_26;
    }

    v29 = v51;
    v52 = v16;
    v31 = *(v16 + 16);
    v30 = *(v16 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_19BB458D4((v30 > 1), v31 + 1, 1);
      v16 = v52;
    }

    ++v15;
    *(v16 + 16) = v31 + 1;
    v32 = v16 + 16 * v31;
    *(v32 + 32) = v50;
    *(v32 + 40) = v29;
    if (v15 == v46)
    {

      v33 = v16;
      v4 = v40;
      a1 = v41;
      v12 = v43;
      v11 = v39;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_26:

  __break(1u);

  __break(1u);
  return result;
}

char *sub_19BB4BC6C(uint64_t a1, char *a2)
{
  v2 = a2;
  v10 = a2;
  v4 = *(a1 + 16);

  if (v4)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *v5;
      v8 = *(v5 - 1);
      v9 = v6;
      sub_19BB4FABC(&v10, &v8);
      v5 += 16;
      --v4;
    }

    while (v4);
    return v10;
  }

  return v2;
}

uint64_t sub_19BB4BD04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = *a1;
  v7 = *a2;
  if (qword_1EAFE8130 != -1)
  {
    swift_once();
  }

  v8 = sub_19BE0DF1C();
  __swift_project_value_buffer(v8, qword_1EAFE83F8);

  v9 = sub_19BE0DEFC();
  v10 = sub_19BE0E18C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v11 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8618, &qword_19BE364D8);
    v22 = a3;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_19BE35710;
    *(v12 + 32) = v6;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19BE35710;
    *(inited + 32) = v7;

    sub_19BB50FE4(inited);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8620, &qword_19BE364E0);
    v15 = MEMORY[0x19EAEAD00](v12, v14);
    v17 = v16;

    v18 = sub_19BB50188(v15, v17, &v23);

    *(v11 + 4) = v18;
    a3 = v22;
    _os_log_impl(&dword_19BB39000, v9, v10, "Unexpected duplicate vendors, pids: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x19EAEC200](v21, -1, -1);
    MEMORY[0x19EAEC200](v11, -1, -1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v7;
  sub_19BB533B4(v6, sub_19BB510E8, 0, isUniquelyReferenced_nonNull_native, &v23);
  if (v4)
  {

    __break(1u);
  }

  else
  {

    *a3 = v23;
  }

  return result;
}

uint64_t AccessoryMFiCapabilitiesList.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8448, &qword_19BE358B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB513EC();
  sub_19BE0E51C();
  v11[1] = sub_19BB4A2B8(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8420, &qword_19BE35898);
  sub_19BB51CC0();
  sub_19BE0E42C();
  (*(v4 + 8))(v7, v3);
}

uint64_t sub_19BB4C15C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1936744803;
  }

  else
  {
    v4 = 6580592;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1936744803;
  }

  else
  {
    v6 = 6580592;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_19BE0E44C();
  }

  return v9 & 1;
}

uint64_t sub_19BB4C1F4()
{
  v1 = *v0;
  sub_19BE0E4DC();
  sub_19BE0E00C();

  return sub_19BE0E4FC();
}

uint64_t sub_19BB4C268()
{
  *v0;
  sub_19BE0E00C();
}

uint64_t sub_19BB4C2C8()
{
  v1 = *v0;
  sub_19BE0E4DC();
  sub_19BE0E00C();

  return sub_19BE0E4FC();
}

void sub_19BB4C344(uint64_t *a1@<X8>)
{
  v2 = 6580592;
  if (*v1)
  {
    v2 = 1936744803;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_19BB4C374()
{
  if (*v0)
  {
    result = 1936744803;
  }

  else
  {
    result = 6580592;
  }

  *v0;
  return result;
}

uint64_t sub_19BB4C3AC@<X0>(char *a1@<X8>)
{
  v2 = sub_19BE0E36C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_19BB4C40C(uint64_t a1)
{
  v2 = sub_19BB51D98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BB4C448(uint64_t a1)
{
  v2 = sub_19BB51D98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessoryMFiCapabilitiesList.Product.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8460, &qword_19BE358B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB51D98();
  sub_19BE0E50C();
  if (!v2)
  {
    v41 = 0;
    sub_19BB51DEC();
    sub_19BE0E3CC();
    v11 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8478, &qword_19BE358C0);
    v41 = 1;
    sub_19BB51E40();
    sub_19BE0E3CC();
    result = v39;
    v13 = *(v39 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = v39 + 56;
      v35 = *(v39 + 16);
      v31 = v13 - 1;
      v33 = v6;
      v34 = MEMORY[0x1E69E7CC0];
      v37 = v39;
      v38 = a1;
      v36 = v11;
      v32 = v39 + 56;
      do
      {
        v16 = (v15 + 32 * v14);
        v17 = v14;
        while (1)
        {
          if (v17 >= *(result + 16))
          {
            __break(1u);
            return result;
          }

          v18 = v5;
          v19 = a2;
          v20 = *v16;
          v21 = *(v16 - 2);
          v22 = *(v16 - 1);
          v23 = *(v16 - 3);

          sub_19BB4AF0C(v23, v21, v22, v20, &v39);

          v24 = v40;
          if (v40 <= 0xFDu)
          {
            break;
          }

          a2 = v19;
          ++v17;
          v16 += 32;
          v11 = v36;
          v5 = v18;
          result = v37;
          a1 = v38;
          if (v35 == v17)
          {
            v6 = v33;
            goto LABEL_18;
          }
        }

        v25 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_19BB4FE0C(0, *(v34 + 2) + 1, 1, v34);
        }

        v27 = *(v34 + 2);
        v26 = *(v34 + 3);
        if (v27 >= v26 >> 1)
        {
          v34 = sub_19BB4FE0C((v26 > 1), v27 + 1, 1, v34);
        }

        v14 = v17 + 1;
        v28 = v34;
        *(v34 + 2) = v27 + 1;
        v29 = &v28[16 * v27];
        *(v29 + 4) = v25;
        v29[40] = v24;
        v15 = v32;
        v6 = v33;
        a2 = v19;
        v5 = v18;
        result = v37;
        a1 = v38;
        v11 = v36;
      }

      while (v31 != v17);
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

LABEL_18:

    (*(v6 + 8))(v9, v5);
    v30 = v34;
    *a2 = v11;
    a2[1] = v30;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AccessoryMFiCapabilitiesList.Product.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8490, &qword_19BE358C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  v9 = *v1;
  v34 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB51D98();
  sub_19BE0E51C();
  v36 = v9;
  v11 = v8;
  v35 = 0;
  sub_19BB51F18();
  sub_19BE0E42C();
  if (!v2)
  {
    v12 = v34;
    v13 = *(v34 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v30 = 0;
      v31 = v11;
      v32 = v5;
      v33 = v4;
      v36 = MEMORY[0x1E69E7CC0];
      sub_19BB459C4(0, v13, 0);
      v15 = (v12 + 40);
      v14 = v36;
      do
      {
        v16 = *v15;
        v17 = v16 >> 6;
        v18 = *(v15 - 1);
        v15 += 16;
        v19 = 6386785;
        if (v16 >> 6 == 2)
        {
          v20 = 6382947;
        }

        else
        {
          v20 = 7106157;
        }

        if (v17)
        {
          v19 = 1735877473;
          v21 = 0xE400000000000000;
        }

        else
        {
          LOBYTE(v16) = 0;
          v21 = 0xE300000000000000;
        }

        if (v17 <= 1)
        {
          v22 = v16;
        }

        else
        {
          v22 = 0;
        }

        if (v17 <= 1)
        {
          v23 = v19;
        }

        else
        {
          v23 = v20;
        }

        if (v17 <= 1)
        {
          v24 = v21;
        }

        else
        {
          v24 = 0xE300000000000000;
        }

        v36 = v14;
        v26 = *(v14 + 16);
        v25 = *(v14 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = v18;
          sub_19BB459C4((v25 > 1), v26 + 1, 1);
          v18 = v28;
          v14 = v36;
        }

        *(v14 + 16) = v26 + 1;
        v27 = v14 + 32 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v24;
        *(v27 + 48) = v18;
        *(v27 + 56) = v22 & 1;
        --v13;
      }

      while (v13);
      v5 = v32;
      v4 = v33;
      v11 = v31;
    }

    v36 = v14;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8478, &qword_19BE358C0);
    sub_19BB51F6C();
    sub_19BE0E42C();
  }

  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_19BB4CB30()
{
  v1 = *v0;
  sub_19BE0E4DC();
  MEMORY[0x19EAEB100](v1);
  return sub_19BE0E4FC();
}

uint64_t sub_19BB4CB78()
{
  v1 = *v0;
  sub_19BE0E4DC();
  MEMORY[0x19EAEB100](v1);
  return sub_19BE0E4FC();
}

uint64_t sub_19BB4CBBC()
{
  if (*v0)
  {
    result = 0x73746375646F7270;
  }

  else
  {
    result = 6580598;
  }

  *v0;
  return result;
}

uint64_t sub_19BB4CBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6580598 && a2 == 0xE300000000000000;
  if (v5 || (sub_19BE0E44C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746375646F7270 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19BE0E44C();

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

uint64_t sub_19BB4CCCC(uint64_t a1)
{
  v2 = sub_19BB52044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BB4CD08(uint64_t a1)
{
  v2 = sub_19BB52044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessoryMFiCapabilitiesList.Vendor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE84B0, &qword_19BE358D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB52044();
  sub_19BE0E51C();
  v14 = v9;
  v13 = 0;
  sub_19BB52098();
  sub_19BE0E42C();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE84C8, &qword_19BE358D8);
    sub_19BB520EC();
    sub_19BE0E42C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t AccessoryMFiCapabilitiesList.Vendor.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE84E0, &qword_19BE358E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB52044();
  sub_19BE0E50C();
  if (!v2)
  {
    v15 = 0;
    sub_19BB521C4();
    sub_19BE0E3CC();
    v11 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE84C8, &qword_19BE358D8);
    v15 = 1;
    sub_19BB52218();
    sub_19BE0E3CC();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_19BB4D10C()
{
  v1 = [*v0 attributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_19BE0DF3C();

  return v3;
}

uint64_t sub_19BB4D17C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 getLocalFileUrl];
  if (v3)
  {
    v4 = v3;
    sub_19BE0DD8C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_19BE0DD9C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void *sub_19BB4D220(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_19BE0E32C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_19BB459E4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x19EAEAE90](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_19BB459E4((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_19BB4A270(0, &qword_1EAFE85A8, 0x1E69B18D8);
        v16 = &off_1F0E8E248;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_19BB530A4(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_19BB459E4((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_19BB4A270(0, &qword_1EAFE85A8, 0x1E69B18D8);
        v16 = &off_1F0E8E248;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_19BB530A4(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_19BB4D400()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE85B0, &unk_19BE36460);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v0;
  v1[21] = v5;
  v1[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19BB4D4CC, 0, 0);
}

uint64_t sub_19BB4D4CC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v10 = v0 + 19;
  v8 = v0[19];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_19BB4D670;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for MAQueryResult(0);
  sub_19BE0E11C();
  (*(v9 + 32))(boxed_opaque_existential_0, v7, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_19BB4D780;
  v1[13] = &block_descriptor_1;
  [v6 queryMetaData_];
  (*(v9 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_19BB4D670()
{
  v1 = *(*v0 + 168);
  v5 = *v0;
  v2 = *(*v0 + 144);

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_19BB4D780(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE85B0, &unk_19BE36460);
  return sub_19BE0E13C();
}

void *sub_19BB4D7DC()
{
  v1 = [*v0 results];
  if (v1)
  {
    sub_19BB4A270(0, &qword_1EAFE85A8, 0x1E69B18D8);
    v2 = sub_19BE0E0DC();

    v1 = sub_19BB4D220(v2);
  }

  return v1;
}

HomeKit::HMAccessoryMatterCapabilities::AssetFilename_optional __swiftcall HMAccessoryMatterCapabilities.AssetFilename.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19BE0E36C();

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

  *v2 = v5;
  return result;
}

unint64_t HMAccessoryMatterCapabilities.AssetFilename.rawValue.getter()
{
  if (*v0)
  {
    result = 0x2D6465776F6C6C61;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_19BB4D914(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x2D6465776F6C6C61;
  }

  else
  {
    v4 = 0xD000000000000019;
  }

  if (v3)
  {
    v5 = 0x800000019BE37CA0;
  }

  else
  {
    v5 = 0xEF6E6F736A2E6C6ELL;
  }

  if (*a2)
  {
    v6 = 0x2D6465776F6C6C61;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = 0xEF6E6F736A2E6C6ELL;
  }

  else
  {
    v7 = 0x800000019BE37CA0;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_19BE0E44C();
  }

  return v9 & 1;
}

uint64_t sub_19BB4D9CC()
{
  v1 = *v0;
  sub_19BE0E4DC();
  sub_19BE0E00C();

  return sub_19BE0E4FC();
}

uint64_t sub_19BB4DA60()
{
  *v0;
  sub_19BE0E00C();
}

uint64_t sub_19BB4DAE0()
{
  v1 = *v0;
  sub_19BE0E4DC();
  sub_19BE0E00C();

  return sub_19BE0E4FC();
}

uint64_t sub_19BB4DB7C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_19BE0E36C();

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

void sub_19BB4DBD8(unint64_t *a1@<X8>)
{
  v2 = 0x800000019BE37CA0;
  v3 = 0xD000000000000019;
  if (*v1)
  {
    v3 = 0x2D6465776F6C6C61;
    v2 = 0xEF6E6F736A2E6C6ELL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t HMAccessoryMatterCapabilities.init(type:)(uint64_t a1, _BYTE *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 81) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_19BB4DC50, 0, 0);
}

uint64_t sub_19BB4DC50()
{
  *(v0 + 80) = *(v0 + 81);
  *(v0 + 40) = &type metadata for DefaultMobileAssetDataSource;
  *(v0 + 48) = &off_1F0E8EA18;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_19BB4DD0C;
  v2 = *(v0 + 56);

  return sub_19BB4DE58(v2, (v0 + 80), v0 + 16);
}

uint64_t sub_19BB4DD0C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19BB4DE40, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_19BB4DE58(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 144) = a1;
  *(v3 + 152) = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE85D8, &unk_19BE36490) - 8) + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v6 = sub_19BE0DD9C();
  *(v3 + 168) = v6;
  v7 = *(v6 - 8);
  *(v3 + 176) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 216) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_19BB4DF68, 0, 0);
}

void sub_19BB4DF68()
{
  sub_19BB532DC(v0[19], v0[18]);
  v1 = objc_allocWithZone(MEMORY[0x1E69B18E8]);
  v2 = sub_19BE0DF9C();
  v3 = [v1 initWithType_];

  if (v3)
  {
    v4 = sub_19BB4A270(0, &qword_1EAFE85E0, 0x1E69B18E8);
    v0[15] = v4;
    v0[16] = &off_1F0E8E260;
    v0[12] = v3;
    [v3 returnTypes_];
    v5 = swift_task_alloc();
    v0[25] = v5;
    *v5 = v0;
    v5[1] = sub_19BB4E108;

    (sub_19BB4D400)(v4, &off_1F0E8E260);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19BB4E108(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19BB4E208, 0, 0);
}

uint64_t sub_19BB4E208()
{
  sub_19BB4EB1C(*(v0 + 208), (v0 + 96), v0 + 56);
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  sub_19BB530A4((v0 + 56), v0 + 16);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v4);
  (*(v5 + 16))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_19BB49974(*(v0 + 160), &qword_1EAFE85D8, &unk_19BE36490);
    sub_19BB53174();
    v6 = swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    swift_willThrow();
    if (qword_1EAFE8130 != -1)
    {
      swift_once();
    }

    v17 = sub_19BE0DF1C();
    __swift_project_value_buffer(v17, qword_1EAFE83F8);
    v18 = v6;
    v19 = sub_19BE0DEFC();
    v20 = sub_19BE0E18C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      v23 = v6;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_19BB39000, v19, v20, "Unable to parse capabilities: %{public}@", v21, 0xCu);
      sub_19BB49974(v22, &qword_1EAFE83C0, &qword_19BE35818);
      MEMORY[0x19EAEC200](v22, -1, -1);
      MEMORY[0x19EAEC200](v21, -1, -1);
    }

    v25 = *(v0 + 152);

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v25);
    v27 = *(v0 + 184);
    v26 = *(v0 + 192);
    v28 = *(v0 + 160);
    v29 = *(v0 + 144);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    __swift_destroy_boxed_opaque_existential_0(v29);

    v30 = *(v0 + 8);
  }

  else
  {
    v8 = *(v0 + 216);
    v9 = *(v0 + 184);
    (*(*(v0 + 176) + 32))(*(v0 + 192), *(v0 + 160), *(v0 + 168));
    sub_19BE0DD7C();

    v10 = sub_19BE0DDBC();
    v12 = v11;
    v13 = *(*(v0 + 176) + 8);
    v13(*(v0 + 184), *(v0 + 168));
    v14 = sub_19BE0DBAC();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_19BE0DB9C();
    sub_19BB522F0();
    sub_19BE0DB8C();
    v32 = *(v0 + 184);
    v39 = *(v0 + 160);
    v33 = *(v0 + 144);
    v38 = *(v0 + 152);
    v13(*(v0 + 192), *(v0 + 168));

    sub_19BB52344(v10, v12);
    *(v33 + 40) = *(v0 + 136);
    v34 = *(v0 + 40);
    v35 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v34);
    v36 = sub_19BB4F750(v34, v35, MEMORY[0x1E69B1848]);
    LOBYTE(v35) = v37;
    __swift_destroy_boxed_opaque_existential_0(v38);
    if (v35)
    {
      v36 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    *(v33 + 48) = v36;

    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t HMAccessoryMatterCapabilities.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for DefaultMobileAssetDataSource;
  a3[4] = &off_1F0E8EA18;
  v7 = sub_19BE0DBAC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_19BE0DB9C();
  sub_19BB522F0();
  sub_19BE0DB8C();
  if (v3)
  {
    sub_19BB52344(a1, a2);

    return __swift_destroy_boxed_opaque_existential_0(a3);
  }

  else
  {

    result = sub_19BB52344(a1, a2);
    a3[5] = v11;
    a3[6] = 0;
  }

  return result;
}

uint64_t HMAccessoryMatterCapabilities.isCapabilityAllowed(_:vendorID:productID:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(v3 + 40);
  if (*(v4 + 16))
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *a3;
    v8 = sub_19BB507B8(*a2);
    if (v9)
    {
      v10 = *(*(v4 + 56) + 8 * v8);
      if (*(v10 + 16))
      {
        v11 = sub_19BB507B8(v7);
        if (v12)
        {
          v13 = *(*(v10 + 56) + 8 * v11);
          v14 = *(v13 + 16);
          if (v14)
          {
            v15 = v6 >> 6;
            v16 = (v13 + 40);
            result = 1;
            do
            {
              v19 = *(v16 - 1);
              v20 = *v16;
              if (v6 >> 6 > 1)
              {
                if (v15 == 2)
                {
                  if ((v20 & 0xC0) == 0x80 && v5 >= v19)
                  {
                    return 1;
                  }
                }

                else if (v20 >= 0xC0 && v5 >= v19)
                {
                  return 1;
                }
              }

              else if (v15)
              {
                if ((v20 & 0xC0) == 0x40 && ((v6 & 1) != 0 || (v20 & 1) != 0 || v5 >= v19))
                {
                  return result;
                }
              }

              else if (v20 <= 0x3F && v5 >= v19)
              {
                return 1;
              }

              v16 += 16;
              --v14;
            }

            while (v14);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t HMAccessoryMatterCapabilities.debugDescription.getter()
{
  v1 = *(v0 + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8508, &qword_19BE358F8);
  v3 = sub_19BB52398();

  return MEMORY[0x1EEE68740](v1, &type metadata for HMAccessoryMatterCapabilities.VendorID, v2, v3);
}

uint64_t sub_19BB4EABC()
{
  v1 = *(v0 + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8508, &qword_19BE358F8);
  v3 = sub_19BB52398();

  return MEMORY[0x1EEE68740](v1, &type metadata for HMAccessoryMatterCapabilities.VendorID, v2, v3);
}

uint64_t sub_19BB4EB1C@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1EAFE8130 != -1)
    {
LABEL_47:
      swift_once();
    }

    v5 = sub_19BE0DF1C();
    __swift_project_value_buffer(v5, qword_1EAFE83F8);
    v6 = sub_19BE0DEFC();
    v7 = sub_19BE0E18C();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_33;
    }

    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_19BB39000, v6, v7, "Unable to query metadata: %ld", v8, 0xCu);
    v9 = v8;
    goto LABEL_32;
  }

  v49 = a3;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v10);
  v12 = (*(v11 + 24))(v10, v11);
  if (!v12)
  {
    if (qword_1EAFE8130 == -1)
    {
LABEL_19:
      v22 = sub_19BE0DF1C();
      __swift_project_value_buffer(v22, qword_1EAFE83F8);
      v6 = sub_19BE0DEFC();
      v23 = sub_19BE0E18C();
      if (!os_log_type_enabled(v6, v23))
      {
LABEL_33:

        sub_19BB53174();
        swift_allocError();
        *v32 = 0;
        *(v32 + 8) = 0;
        *(v32 + 16) = 2;
        return swift_willThrow();
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "No results for metadata";
      goto LABEL_31;
    }

LABEL_49:
    swift_once();
    goto LABEL_19;
  }

  v13 = v12;
  v14 = *(v12 + 16);
  if (!v14)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_22:

    v26 = v15[2];
    if (!v26)
    {

      if (qword_1EAFE8130 != -1)
      {
        swift_once();
      }

      v31 = sub_19BE0DF1C();
      __swift_project_value_buffer(v31, qword_1EAFE83F8);
      v6 = sub_19BE0DEFC();
      v23 = sub_19BE0E18C();
      if (!os_log_type_enabled(v6, v23))
      {
        goto LABEL_33;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Empty results for metadata";
LABEL_31:
      _os_log_impl(&dword_19BB39000, v6, v23, v25, v24, 2u);
      v9 = v24;
LABEL_32:
      MEMORY[0x19EAEC200](v9, -1, -1);
      goto LABEL_33;
    }

    if (qword_1EAFE8130 != -1)
    {
      swift_once();
    }

    v27 = sub_19BE0DF1C();
    __swift_project_value_buffer(v27, qword_1EAFE83F8);

    v28 = sub_19BE0DEFC();
    v29 = sub_19BE0E17C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = v15[2];

      _os_log_impl(&dword_19BB39000, v28, v29, "Filtering %ld results", v30, 0xCu);
      MEMORY[0x19EAEC200](v30, -1, -1);
    }

    else
    {
    }

    if (v15[2] >= v26)
    {
      sub_19BB53340((v15 + 4), v47, &qword_1EAFE85F8, &qword_19BE364B0);
      *&v44 = *&v47[0];
      sub_19BB530A4((v47 + 8), &v44 + 8);
      sub_19BB53340(&v44, &v41, &qword_1EAFE85F8, &qword_19BE364B0);
      v34 = v26 - 1;
      if (v34)
      {
        v35 = (v15 + 10);
        do
        {
          sub_19BB53340(v35, v40, &qword_1EAFE85F8, &qword_19BE364B0);
          if (v41 >= *&v40[0])
          {
            v36 = v40;
          }

          else
          {
            v36 = &v41;
          }

          if (v41 >= *&v40[0])
          {
            v37 = &v41;
          }

          else
          {
            v37 = v40;
          }

          sub_19BB49974(v36, &qword_1EAFE85F8, &qword_19BE364B0);
          v38 = v37[2];
          v39 = *v37;
          v42 = v37[1];
          v43 = v38;
          v41 = v39;
          v35 += 48;
          --v34;
        }

        while (v34);
      }

      sub_19BB49974(&v44, &qword_1EAFE85F8, &qword_19BE364B0);
      v40[0] = v41;
      v40[1] = v42;
      v40[2] = v43;
      return sub_19BB530A4((v40 + 8), v49);
    }

    __break(1u);
    goto LABEL_49;
  }

  v4 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v16 = v12 + 32;
  while (1)
  {
    if (v4 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    sub_19BB532DC(v16, &v41);
    sub_19BB4F12C(&v41, v47);
    if (v3)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0(&v41);
    if (v48)
    {
      v44 = v47[0];
      v45 = v47[1];
      v46 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_19BB50040(0, v15[2] + 1, 1, v15);
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        v15 = sub_19BB50040((v17 > 1), v18 + 1, 1, v15);
      }

      v15[2] = v18 + 1;
      v19 = &v15[6 * v18];
      v20 = v44;
      v21 = v46;
      v19[3] = v45;
      v19[4] = v21;
      v19[2] = v20;
    }

    else
    {
      sub_19BB49974(v47, &qword_1EAFE85F0, &qword_19BE364A8);
    }

    ++v4;
    v16 += 40;
    if (v14 == v4)
    {
      goto LABEL_22;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(&v41);

  __break(1u);
  return result;
}

double sub_19BB4F12C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  v6 = sub_19BB4F750(v4, v5, MEMORY[0x1E69B1848]);
  if ((v7 & 1) == 0)
  {
    v23 = v6;
    v24 = a1[3];
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v24);
    v26 = sub_19BB4F750(v24, v25, MEMORY[0x1E69B1840]);
    if (v27)
    {
      if (qword_1EAFE8130 != -1)
      {
        swift_once();
      }

      v28 = sub_19BE0DF1C();
      __swift_project_value_buffer(v28, qword_1EAFE83F8);
      sub_19BB532DC(a1, v55);
      v9 = sub_19BE0DEFC();
      v10 = sub_19BE0E16C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v57 = v12;
        *v11 = 136315138;
        v29 = v56;
        v30 = __swift_project_boxed_opaque_existential_0(v55, v56);
        v31 = *(*(v29 - 8) + 64);
        MEMORY[0x1EEE9AC00](v30);
        (*(v33 + 16))(&v55[-1] - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
        v34 = sub_19BE0DFEC();
        v36 = v35;
        __swift_destroy_boxed_opaque_existential_0(v55);
        v37 = sub_19BB50188(v34, v36, &v57);

        *(v11 + 4) = v37;
        v22 = "Ignoring asset due to missing compatibility version: %s";
        goto LABEL_11;
      }
    }

    else
    {
      if (v26 == 2)
      {
        *a2 = v23;
        sub_19BB532DC(a1, a2 + 8);
        return result;
      }

      v40 = v26;
      if (qword_1EAFE8130 != -1)
      {
        swift_once();
      }

      v41 = sub_19BE0DF1C();
      __swift_project_value_buffer(v41, qword_1EAFE83F8);
      sub_19BB532DC(a1, v55);
      v9 = sub_19BE0DEFC();
      v42 = sub_19BE0E16C();
      if (os_log_type_enabled(v9, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v57 = v44;
        *v43 = 134218242;
        *(v43 + 4) = v40;
        *(v43 + 12) = 2080;
        v45 = v56;
        v46 = __swift_project_boxed_opaque_existential_0(v55, v56);
        v47 = *(*(v45 - 8) + 64);
        MEMORY[0x1EEE9AC00](v46);
        (*(v49 + 16))(&v55[-1] - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
        v50 = sub_19BE0DFEC();
        v52 = v51;
        __swift_destroy_boxed_opaque_existential_0(v55);
        v53 = sub_19BB50188(v50, v52, &v57);

        *(v43 + 14) = v53;
        _os_log_impl(&dword_19BB39000, v9, v42, "Ignoring asset due to compatibility version: %ld: %s", v43, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x19EAEC200](v44, -1, -1);
        v38 = v43;
        goto LABEL_12;
      }
    }

LABEL_19:

    __swift_destroy_boxed_opaque_existential_0(v55);
    goto LABEL_20;
  }

  if (qword_1EAFE8130 != -1)
  {
    swift_once();
  }

  v8 = sub_19BE0DF1C();
  __swift_project_value_buffer(v8, qword_1EAFE83F8);
  sub_19BB532DC(a1, v55);
  v9 = sub_19BE0DEFC();
  v10 = sub_19BE0E16C();
  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_19;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v57 = v12;
  *v11 = 136315138;
  v13 = v56;
  v14 = __swift_project_boxed_opaque_existential_0(v55, v56);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  (*(v17 + 16))(&v55[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_19BE0DFEC();
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_0(v55);
  v21 = sub_19BB50188(v18, v20, &v57);

  *(v11 + 4) = v21;
  v22 = "Ignoring asset due to missing content version: %s";
LABEL_11:
  _os_log_impl(&dword_19BB39000, v9, v10, v22, v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v12);
  MEMORY[0x19EAEC200](v12, -1, -1);
  v38 = v11;
LABEL_12:
  MEMORY[0x19EAEC200](v38, -1, -1);

LABEL_20:
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_19BB4F750(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = (*(a2 + 8))();
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = *a3;
  *&v12 = sub_19BE0DFAC();
  *(&v12 + 1) = v7;
  sub_19BE0E23C();
  if (!*(v5 + 16) || (v8 = sub_19BB50820(v11), (v9 & 1) == 0))
  {

    sub_19BB531C8(v11);
LABEL_10:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_11;
  }

  sub_19BB4516C(*(v5 + 56) + 32 * v8, &v12);
  sub_19BB531C8(v11);

  if (!*(&v13 + 1))
  {
LABEL_11:
    sub_19BB49974(&v12, &qword_1EAFE8388, &qword_19BE364A0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v11[0];
  }

  else
  {
    return 0;
  }
}

HomeKit::HMAccessoryMatterCapabilities::VendorID_optional __swiftcall HMAccessoryMatterCapabilities.VendorID.init(rawValue:)(Swift::Int rawValue)
{
  *v1 = rawValue;
  *(v1 + 8) = 0;
  result.value.rawValue = rawValue;
  return result;
}

uint64_t sub_19BB4F980()
{
  v1 = *v0;
  sub_19BE0E4DC();
  MEMORY[0x19EAEB100](v1);
  return sub_19BE0E4FC();
}

uint64_t sub_19BB4F9C8()
{
  v1 = *v0;
  sub_19BE0E4DC();
  MEMORY[0x19EAEB100](v1);
  return sub_19BE0E4FC();
}

void sub_19BB4FABC(char **a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(*a1 + 2);
  if (v6)
  {
    v7 = (v5 + 40);
    v8 = v4 & 0xC0;
    for (i = *(*a1 + 2); i; --i)
    {
      v10 = *v7;
      v7 += 16;
      v11 = v10 >> 6;
      if (v10 >> 6 > 1)
      {
        if (v11 == 2)
        {
          if (v8 == 128)
          {
            goto LABEL_13;
          }
        }

        else if (v4 > 0xBF)
        {
          goto LABEL_13;
        }
      }

      else if (v11)
      {
        if (v8 == 64)
        {
LABEL_13:
          if (qword_1EAFE8130 != -1)
          {
            swift_once();
          }

          v12 = sub_19BE0DF1C();
          __swift_project_value_buffer(v12, qword_1EAFE83F8);
          v13 = sub_19BE0DEFC();
          v14 = sub_19BE0E18C();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            v24 = v16;
            *v15 = 136315138;
            v17 = sub_19BE0DFEC();
            v19 = sub_19BB50188(v17, v18, &v24);

            *(v15 + 4) = v19;
            _os_log_impl(&dword_19BB39000, v13, v14, "Dropping capability %s because of a duplicate entry", v15, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v16);
            MEMORY[0x19EAEC200](v16, -1, -1);
            MEMORY[0x19EAEC200](v15, -1, -1);
          }

          return;
        }
      }

      else if (v4 < 0x40)
      {
        goto LABEL_13;
      }
    }
  }

  v20 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_19BB4FE0C(0, v6 + 1, 1, v5);
  }

  v22 = *(v5 + 2);
  v21 = *(v5 + 3);
  if (v22 >= v21 >> 1)
  {
    v5 = sub_19BB4FE0C((v21 > 1), v22 + 1, 1, v5);
  }

  *(v5 + 2) = v22 + 1;
  v23 = &v5[16 * v22];
  *(v23 + 4) = v3;
  v23[40] = v4;
  *a1 = v5;
}

char *sub_19BB4FD00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8628, &qword_19BE364E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19BB4FE0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8610, &unk_19BE364C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_19BB4FF0C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8618, &qword_19BE364D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8620, &qword_19BE364E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19BB50040(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8600, &qword_19BE364B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE85F8, &qword_19BE364B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_19BB50188(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19BB50254(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_19BB4516C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_19BB50254(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_19BB50360(a5, a6);
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
    result = sub_19BE0E2AC();
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

uint64_t sub_19BB50360(uint64_t a1, unint64_t a2)
{
  v4 = sub_19BB503AC(a1, a2);
  sub_19BB504DC(&unk_1F0E8DE70);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_19BB503AC(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_19BB60E5C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_19BE0E2AC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_19BE0E02C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_19BB60E5C(v10, 0);
        result = sub_19BE0E24C();
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

uint64_t sub_19BB504DC(uint64_t result)
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

  result = sub_19BB505C8(result, v12, 1, v3);
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

char *sub_19BB505C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8608, &qword_19BE364C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_19BB506BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_19BE0DE8C();
  sub_19BB499F4(&qword_1EAFE83D8);
  v5 = sub_19BE0DF6C();

  return sub_19BB50864(a1, v5);
}

unint64_t sub_19BB50740(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_19BE0E4DC();
  sub_19BE0E00C();
  v6 = sub_19BE0E4FC();

  return sub_19BB50A10(a1, a2, v6);
}

unint64_t sub_19BB507B8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_19BE0E4DC();
  MEMORY[0x19EAEB100](a1);
  v4 = sub_19BE0E4FC();
  return sub_19BB50AC8(a1, v4);
}

unint64_t sub_19BB50820(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_19BE0E21C();

  return sub_19BB50B34(a1, v5);
}

unint64_t sub_19BB50864(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_19BE0DE8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_19BB499F4(&qword_1EAFE85C8);
      v16 = sub_19BE0DF8C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_19BB50A10(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_19BE0E44C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_19BB50AC8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_19BB50B34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_19BB5321C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x19EAEAE40](v9, a1);
      sub_19BB531C8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_19BB50BFC(uint64_t a1, char a2, uint64_t a3)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
LABEL_17:

    return;
  }

  v6 = 0;
  v7 = (a1 + 40);
  while (1)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_19BE0E46C();
      __break(1u);
      goto LABEL_25;
    }

    v9 = *(v7 - 1);
    v8 = *v7;

    if (!v8)
    {
      goto LABEL_17;
    }

    v33[2] = v9;
    v33[0] = v8;
    v10 = *a3;
    v11 = sub_19BB507B8(v9);
    v13 = v10[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_22;
    }

    v17 = v12;
    if (v10[3] >= v16)
    {
      break;
    }

    sub_19BB5EC74(v16, a2 & 1);
    v18 = *a3;
    v11 = sub_19BB507B8(v9);
    if ((v17 & 1) != (v19 & 1))
    {
      goto LABEL_24;
    }

LABEL_11:
    if (v17)
    {
      goto LABEL_12;
    }

LABEL_15:
    v25 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v25[6] + 8 * v11) = v9;
    *(v25[7] + 8 * v11) = v8;
    v26 = v25[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v15)
    {
      goto LABEL_23;
    }

    v25[2] = v27;
LABEL_3:
    ++v6;
    v7 += 2;
    a2 = 1;
    if (v29 == v6)
    {
      goto LABEL_17;
    }
  }

  if (a2)
  {
    goto LABEL_11;
  }

  v24 = v11;
  sub_19BB5F928();
  v11 = v24;
  if ((v17 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v20 = *a3;
  v21 = v11;
  v32 = *(*(*a3 + 56) + 8 * v11);

  sub_19BB4BD04(&v32, v33, v31);
  if (!v30)
  {

    v22 = v20[7];
    v23 = *(v22 + 8 * v21);
    *(v22 + 8 * v21) = v31[0];

    goto LABEL_3;
  }

  v32 = v30;
  v28 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8170, &qword_19BE352A0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_25:
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_19BE0E25C();
  MEMORY[0x19EAEAC30](0xD00000000000001BLL, 0x800000019BE381E0);
  sub_19BE0E30C();
  MEMORY[0x19EAEAC30](39, 0xE100000000000000);
  sub_19BE0E31C();
  __break(1u);
}

uint64_t sub_19BB50EF8(uint64_t result)
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

  result = sub_19BB4FE0C(result, v12, 1, v3);
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

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

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

void *sub_19BB50FE4(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_19BB4FF0C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8620, &qword_19BE364E0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_19BB510E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t _s7HomeKit22AccessoryMFiCapabilityO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v3 >> 6;
  if (v3 >> 6 <= 1)
  {
    if (!v6)
    {
      return v5 < 0x40 && v2 == v4;
    }

    if ((v5 & 0xC0) == 0x40)
    {
      if (v3)
      {
        if (v5)
        {
          return 1;
        }
      }

      else if ((v5 & 1) == 0 && v2 == v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v6 == 2)
  {
    return (v5 & 0xC0) == 0x80 && v2 == v4;
  }

  return v5 > 0xBF && v2 == v4;
}

unint64_t sub_19BB51184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8860, &unk_19BE36480);
    v3 = sub_19BE0E35C();
    v4 = a1 + 32;

    while (1)
    {
      sub_19BB53340(v4, &v13, &qword_1EAFE83B8, &qword_19BE366C0);
      v5 = v13;
      v6 = v14;
      result = sub_19BB50740(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19BB42FFC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_19BB512B4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8440, &qword_19BE358A8);
  v3 = sub_19BE0E35C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_19BB507B8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_19BB507B8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_19BB513EC()
{
  result = qword_1EAFE8418;
  if (!qword_1EAFE8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8418);
  }

  return result;
}

unint64_t sub_19BB51440()
{
  result = qword_1EAFE8428;
  if (!qword_1EAFE8428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFE8420, &qword_19BE35898);
    sub_19BB5150C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8428);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_19BB5150C()
{
  result = qword_1EAFE8430;
  if (!qword_1EAFE8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8430);
  }

  return result;
}

unint64_t sub_19BB51560(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE85D0, &qword_19BE36478);
    v3 = sub_19BE0E35C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_19BB530E8(v7, v8);
      result = sub_19BB50740(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19BB51678(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE85B8, &unk_19BE36870);
    v3 = sub_19BE0E35C();
    v4 = a1 + 32;

    while (1)
    {
      sub_19BB53340(v4, &v13, &qword_1EAFE85C0, &qword_19BE36470);
      v5 = v13;
      v6 = v14;
      result = sub_19BB50740(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19BB42FFC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_19BB517A8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8580, &qword_19BE36450);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB52FA8();
  sub_19BE0E50C();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_19BE0E3AC();
    v11 = 1;
    sub_19BE0E39C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_19BB5198C(uint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 40);
    do
    {
      v9 = *(v5 - 1);
      v10 = *v5;

      if (!v10)
      {
        break;
      }

      v11 = *a3;
      v13 = sub_19BB507B8(v9);
      v14 = v11[2];
      v15 = (v12 & 1) == 0;
      result = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        result = sub_19BE0E46C();
        __break(1u);
        return result;
      }

      v16 = v12;
      if (v11[3] >= result)
      {
        if ((a2 & 1) == 0)
        {
          result = sub_19BB5F93C();
        }
      }

      else
      {
        sub_19BB5EC88(result, a2 & 1);
        v17 = *a3;
        result = sub_19BB507B8(v9);
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_23;
        }

        v13 = result;
      }

      v19 = *a3;
      if (v16)
      {
        v20 = *(v19[7] + 8 * v13);
        v21 = qword_1EAFE8130;

        if (v21 != -1)
        {
          swift_once();
        }

        v22 = sub_19BE0DF1C();
        __swift_project_value_buffer(v22, qword_1EAFE83F8);

        v23 = sub_19BE0DEFC();
        v24 = sub_19BE0E18C();

        if (os_log_type_enabled(v23, v24))
        {
          buf = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v38 = v36;
          *buf = 136315138;

          v34 = v24;
          sub_19BB50EF8(v25);
          log = v23;
          v26 = MEMORY[0x19EAEAD00](v20, &type metadata for AccessoryMFiCapability);
          v28 = v27;

          v29 = sub_19BB50188(v26, v28, &v38);

          *(buf + 4) = v29;
          _os_log_impl(&dword_19BB39000, log, v34, "Unexpected duplicate products, capabilities: %s", buf, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x19EAEC200](v36, -1, -1);
          MEMORY[0x19EAEC200](buf, -1, -1);
        }

        else
        {
        }

        v6 = sub_19BB4BC6C(v20, v10);

        v7 = v19[7];
        v8 = *(v7 + 8 * v13);
        *(v7 + 8 * v13) = v6;
      }

      else
      {
        v19[(v13 >> 6) + 8] |= 1 << v13;
        *(v19[6] + 8 * v13) = v9;
        *(v19[7] + 8 * v13) = v10;
        v30 = v19[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_22;
        }

        v19[2] = v32;
      }

      v5 += 2;
      a2 = 1;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_19BB51CC0()
{
  result = qword_1EAFE8450;
  if (!qword_1EAFE8450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFE8420, &qword_19BE35898);
    sub_19BB51D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8450);
  }

  return result;
}

unint64_t sub_19BB51D44()
{
  result = qword_1EAFE8458;
  if (!qword_1EAFE8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8458);
  }

  return result;
}

unint64_t sub_19BB51D98()
{
  result = qword_1EAFE8468;
  if (!qword_1EAFE8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8468);
  }

  return result;
}

unint64_t sub_19BB51DEC()
{
  result = qword_1EAFE8470;
  if (!qword_1EAFE8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8470);
  }

  return result;
}

unint64_t sub_19BB51E40()
{
  result = qword_1EAFE8480;
  if (!qword_1EAFE8480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFE8478, &qword_19BE358C0);
    sub_19BB51EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8480);
  }

  return result;
}

unint64_t sub_19BB51EC4()
{
  result = qword_1EAFE8488;
  if (!qword_1EAFE8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8488);
  }

  return result;
}

unint64_t sub_19BB51F18()
{
  result = qword_1EAFE8498;
  if (!qword_1EAFE8498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8498);
  }

  return result;
}

unint64_t sub_19BB51F6C()
{
  result = qword_1EAFE84A0;
  if (!qword_1EAFE84A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFE8478, &qword_19BE358C0);
    sub_19BB51FF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE84A0);
  }

  return result;
}

unint64_t sub_19BB51FF0()
{
  result = qword_1EAFE84A8;
  if (!qword_1EAFE84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE84A8);
  }

  return result;
}

unint64_t sub_19BB52044()
{
  result = qword_1EAFE84B8;
  if (!qword_1EAFE84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE84B8);
  }

  return result;
}

unint64_t sub_19BB52098()
{
  result = qword_1EAFE84C0;
  if (!qword_1EAFE84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE84C0);
  }

  return result;
}

unint64_t sub_19BB520EC()
{
  result = qword_1EAFE84D0;
  if (!qword_1EAFE84D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFE84C8, &qword_19BE358D8);
    sub_19BB52170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE84D0);
  }

  return result;
}

unint64_t sub_19BB52170()
{
  result = qword_1EAFE84D8;
  if (!qword_1EAFE84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE84D8);
  }

  return result;
}

unint64_t sub_19BB521C4()
{
  result = qword_1EAFE84E8;
  if (!qword_1EAFE84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE84E8);
  }

  return result;
}

unint64_t sub_19BB52218()
{
  result = qword_1EAFE84F0;
  if (!qword_1EAFE84F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFE84C8, &qword_19BE358D8);
    sub_19BB5229C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE84F0);
  }

  return result;
}

unint64_t sub_19BB5229C()
{
  result = qword_1EAFE84F8;
  if (!qword_1EAFE84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE84F8);
  }

  return result;
}

unint64_t sub_19BB522F0()
{
  result = qword_1EAFE8500;
  if (!qword_1EAFE8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8500);
  }

  return result;
}

uint64_t sub_19BB52344(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_19BB52398()
{
  result = qword_1EAFE8510;
  if (!qword_1EAFE8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8510);
  }

  return result;
}

unint64_t sub_19BB523F0()
{
  result = qword_1EAFE8518;
  if (!qword_1EAFE8518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8518);
  }

  return result;
}

unint64_t sub_19BB52448()
{
  result = qword_1EAFE8520;
  if (!qword_1EAFE8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8520);
  }

  return result;
}

unint64_t sub_19BB524A0()
{
  result = qword_1EAFE8528;
  if (!qword_1EAFE8528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8528);
  }

  return result;
}

unint64_t sub_19BB524F8()
{
  result = qword_1EAFE8530;
  if (!qword_1EAFE8530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8530);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7HomeKit10AssetErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_19BB5257C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19BB525C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_19BB52608(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryMFiCapability(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 9))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AccessoryMFiCapability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryMFiCapability.Name(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryMFiCapability.Name(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_19BB52894(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_19BB528DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_19BB52944(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_19BB5298C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_19BB529F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_19BB52A3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_19BB52AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_19BB52B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryMFiCapabilitiesList.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AccessoryMFiCapabilitiesList.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_19BB52C94()
{
  result = qword_1EAFE8538;
  if (!qword_1EAFE8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8538);
  }

  return result;
}

unint64_t sub_19BB52CEC()
{
  result = qword_1EAFE8540;
  if (!qword_1EAFE8540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8540);
  }

  return result;
}

unint64_t sub_19BB52D44()
{
  result = qword_1EAFE8548;
  if (!qword_1EAFE8548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8548);
  }

  return result;
}

unint64_t sub_19BB52D9C()
{
  result = qword_1EAFE8550;
  if (!qword_1EAFE8550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8550);
  }

  return result;
}

unint64_t sub_19BB52DF4()
{
  result = qword_1EAFE8558;
  if (!qword_1EAFE8558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8558);
  }

  return result;
}

unint64_t sub_19BB52E4C()
{
  result = qword_1EAFE8560;
  if (!qword_1EAFE8560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8560);
  }

  return result;
}

unint64_t sub_19BB52EA4()
{
  result = qword_1EAFE8568;
  if (!qword_1EAFE8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8568);
  }

  return result;
}

unint64_t sub_19BB52EFC()
{
  result = qword_1EAFE8570;
  if (!qword_1EAFE8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8570);
  }

  return result;
}

unint64_t sub_19BB52F54()
{
  result = qword_1EAFE8578;
  if (!qword_1EAFE8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8578);
  }

  return result;
}

unint64_t sub_19BB52FA8()
{
  result = qword_1EAFE8588;
  if (!qword_1EAFE8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8588);
  }

  return result;
}

unint64_t sub_19BB52FFC()
{
  result = qword_1EAFE8598;
  if (!qword_1EAFE8598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8598);
  }

  return result;
}

unint64_t sub_19BB53050()
{
  result = qword_1EAFE85A0;
  if (!qword_1EAFE85A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE85A0);
  }

  return result;
}

uint64_t sub_19BB530A4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_19BB530E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_19BB53174()
{
  result = qword_1EAFE85E8;
  if (!qword_1EAFE85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE85E8);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_19BB532DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_19BB53340(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_19BB533A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_19BB533B4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v18)
  {
    v17 = v9;
    v18 = i;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v20 = (v18 << 9) | (8 * __clz(__rbit64(v17)));
    v21 = *(*(a1 + 56) + v20);
    v44[0] = *(*(a1 + 48) + v20);
    v44[1] = v21;

    a2(&v45, v44);

    v22 = v46;
    if (!v46)
    {
LABEL_22:
      sub_19BB53640();
    }

    v23 = a4;
    v24 = v45;
    v25 = *v47;
    v26 = sub_19BB507B8(v45);
    v28 = *(v25 + 16);
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_24;
    }

    v32 = v27;
    if (*(v25 + 24) >= v31)
    {
      if ((v23 & 1) == 0)
      {
        v39 = v26;
        sub_19BB5F93C();
        v26 = v39;
      }
    }

    else
    {
      v33 = v47;
      sub_19BB5EC88(v31, v23 & 1);
      v34 = *v33;
      v26 = sub_19BB507B8(v24);
      if ((v32 & 1) != (v35 & 1))
      {
        goto LABEL_26;
      }
    }

    v9 = (v17 - 1) & v17;
    v36 = *v47;
    if (v32)
    {
      v12 = *(v36[7] + 8 * v26);
      v13 = v26;

      v14 = sub_19BB4BC6C(v22, v12);

      v15 = v36[7];
      v16 = *(v15 + 8 * v13);
      *(v15 + 8 * v13) = v14;
    }

    else
    {
      v36[(v26 >> 6) + 8] |= 1 << v26;
      *(v36[6] + 8 * v26) = v24;
      *(v36[7] + 8 * v26) = v22;
      v37 = v36[2];
      v30 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v30)
      {
        goto LABEL_25;
      }

      v36[2] = v38;
    }

    a4 = 1;
  }

  v19 = i;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v10)
    {
      goto LABEL_22;
    }

    v17 = *(v6 + 8 * v18);
    ++v19;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_19BE0E46C();
  __break(1u);
  return result;
}